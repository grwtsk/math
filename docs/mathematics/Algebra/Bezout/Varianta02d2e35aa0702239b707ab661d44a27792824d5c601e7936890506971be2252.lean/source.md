# Complete source: GRWTSK.Algebra.Bezout.Varianta02d2e35aa0702239b707ab661d44a27792824d5c601e7936890506971be2252

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e143c8036be9184b814c9ad30b4017ff23a819e5` · SHA-256 `f590a1713e894781a2210364bd196635a87adf906a6aee5b5fa0bde63967534a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IffSpanPairIsPrincipal.Variant554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IffSpanPairIsPrincipal.Variant554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Bezout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.IffSpanPairIsPrincipal.Variant554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b

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

theorem _root_.GRWTSK.Algebra.IffSpanPairIsPrincipal.Variant554d7e39a7ad808dffad175a08c1ddec8e4ad58e1f94b8de7d1710caf89bd27b.Function.Surjective.isBezout {S : Type v} [CommRing S] (f : R →+* S)
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
