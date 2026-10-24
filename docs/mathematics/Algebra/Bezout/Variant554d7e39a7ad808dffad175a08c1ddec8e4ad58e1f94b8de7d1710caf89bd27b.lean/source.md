# Complete source: GRWTSK.Algebra.Bezout.Variant554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4dca6c9e96d3d0c5e83aca8cbb8fd6c6f53c716` · SHA-256 `554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.RingTheory.PrincipalIdealDomain

/-!

# Bézout rings

A Bézout ring (Bezout ring) is a ring whose finitely generated ideals are principal.
Notable examples include principal ideal rings, valuation rings, and the ring of algebraic integers.

## Main results
- `IsBezout.iff_span_pair_isPrincipal`: It suffices to verify every `span {x, y}` is principal.
- `IsBezout.TFAE`: For a Bézout domain, Noetherian ↔ PID ↔ UFD ↔ ACCP

-/

public section


universe u v

variable {R : Type u} [CommRing R]

namespace IsBezout

theorem iff_span_pair_isPrincipal :
    IsBezout R ↔ ∀ x y : R, (Ideal.span {x, y} : Ideal R).IsPrincipal := by
  constructor
  · intro H x y; infer_instance
  · intro H
    constructor
    apply Submodule.fg_induction
    · exact fun _ => ⟨⟨_, rfl⟩⟩
    · rintro _ _ _ _ ⟨⟨x, rfl⟩⟩ ⟨⟨y, rfl⟩⟩
      rw [← Submodule.span_insert]
      exact H _ _

theorem _root_.Function.Surjective.isBezout {S : Type v} [CommRing S] (f : R →+* S)
    (hf : Function.Surjective f) [IsBezout R] : IsBezout S := by
  rw [iff_span_pair_isPrincipal]
  intro x y
  obtain ⟨⟨x, rfl⟩, ⟨y, rfl⟩⟩ := hf x, hf y
  use f (gcd x y)
  trans Ideal.map f (Ideal.span {gcd x y})
  · simp [span_gcd, Ideal.map_span]
  · simp [Ideal.map_span]

set_option backward.isDefEq.respectTransparency false in
theorem TFAE [IsBezout R] [IsDomain R] :
    List.TFAE
    [IsNoetherianRing R, IsPrincipalIdealRing R, UniqueFactorizationMonoid R, WfDvdMonoid R] := by
  classical
    tfae_have 1 → 2
    | _ => inferInstance
    tfae_have 2 → 3
    | _ => inferInstance
    tfae_have 3 → 4
    | _ => inferInstance
    tfae_have 4 → 1
    | h => by
      rw [isNoetherianRing_iff, isNoetherian_iff_fg_wellFounded]
      refine RelEmbedding.wellFounded ?_ h
      have : ∀ I : { J : Ideal R // J.FG }, ∃ x : R, (I : Ideal R) = Ideal.span {x} :=
        fun ⟨I, hI⟩ => (IsBezout.isPrincipal_of_FG I hI).1
      choose f hf using this
      exact
        { toFun := f
          inj' := fun x y e => by ext1; rw [hf, hf, e]
          map_rel_iff' := by
            dsimp
            intro a b
            rw [← Ideal.span_singleton_lt_span_singleton, ← hf, ← hf]
            rfl }
    tfae_finish

end IsBezout
```
