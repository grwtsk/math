# Complete source: GRWTSK.Topology.AlgebraicTopology.RankNat.Variantf0806065ed7bc34726741834f1ffaf515ebee5de4a05bea686c4fb1f28da7b3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ee84c4c0781cf8f24a2f0346e88c26753518e1c` · SHA-256 `5e7cf0a01936b1c740bf6e7236a1deeeed846138e8ddf26563be042198a57e6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.RankPrime.Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.RankPrime.Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/AnodyneExtensions/RankNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.AnodyneExtensions.Rank
public import Mathlib.Basic.Finite.Sigma

/-!
# Existence of a rank function to natural numbers

In this file, we show that if `P : A.Pairing` is
a regular pairing of subcomplex `A` of a simplicial set `X`,
then there exists a rank function for `P` with values in `ℕ`.

-/


namespace GRWTSK.Topology.AlgebraicTopology.RankPrime.Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58

@[expose] public section

universe u

open scoped Simplicial

namespace SSet.Subcomplex

variable {X : SSet.{u}} {A : X.Subcomplex}

namespace Pairing

variable (P : A.Pairing)

instance (y : P.II) : Finite { x // P.AncestralRel x y } := by
  let T := { x : P.II // P.AncestralRel x y }
  let U := Σ (d : Fin (P.p y).1.dim), ⦋d⦌ ⟶ ⦋(P.p y).1.1.1.1⦌
  let ψ : U → X.S := fun ⟨d, f⟩ ↦ S.mk (X.map f.op (P.p y).1.simplex)
  have h (t : T) : ∃ u, ψ u = t.1.1.toS := by
    obtain ⟨f, _, hf⟩ := N.le_iff_exists_mono.1 t.2.2.le
    refine ⟨⟨⟨t.1.1.dim, ?_⟩, f⟩, ?_⟩
    · simpa using SSet.N.dim_lt_of_lt t.2.2
    · rwa [SSet.S.ext_iff]
  choose φ hφ using h
  apply Finite.of_injective φ
  intro t₁ t₂ h
  rw [Subtype.ext_iff, Subtype.ext_iff, N.ext_iff, SSet.N.ext_iff, ← hφ, ← hφ, h]

section

variable {y : P.II} (hy : Acc P.AncestralRel y)

/-- Auxiliary definition for `SSet.Subcomplex.Pairing.Rank`. -/
noncomputable def rank' : ℕ :=
  Acc.recOn hy (fun y _ r ↦ ⨆ (x : { x // P.AncestralRel x y }), r x x.2 + 1)

lemma rank'_eq :
    P.rank' hy = ⨆ (x : { x // P.AncestralRel x y }), P.rank' (hy.inv x.2) + 1 := by
  change P.rank' (Acc.intro y fun _ => hy.inv) = _
  rfl

lemma rank'_lt {x : P.II} (r : P.AncestralRel x y) :
    P.rank' (hy.inv r) < P.rank' hy := by
  rw [P.rank'_eq hy, ← Nat.add_one_le_iff]
  exact le_csSup (Finite.bddAbove_range _) ⟨⟨x, r⟩, rfl⟩

end

section IsRegular

variable [P.IsRegular]

/-- The rank function with values in `ℕ` relative to the well founded
ancestrality relation of a regular pairing. -/
noncomputable def rank (x : P.II) : ℕ :=
  P.rank' (P.wf.apply x)

variable {P} in
lemma rank_lt {x y : P.II} (h : P.AncestralRel x y) :
    P.rank x < P.rank y :=
  P.rank'_lt _ h

/-- The canonical rank function with values in `ℕ` of a regular pairing. -/
noncomputable def rankFunction : P.RankFunction ℕ where
  rank := P.rank
  lt := P.rank_lt

instance : Nonempty (P.RankFunction ℕ) := ⟨P.rankFunction⟩

instance : Nonempty (P.WeakRankFunction ℕ) := ⟨P.rankFunction.toWeakRankFunction⟩

end IsRegular

lemma isRegular_iff_nonempty_rankFunction [P.IsProper] :
    P.IsRegular ↔ Nonempty (P.RankFunction ℕ) :=
  ⟨fun _ ↦ inferInstance, fun ⟨h⟩ ↦ h.isRegular⟩

lemma isRegular_iff_nonempty_weakRankFunction [P.IsProper] :
    P.IsRegular ↔ Nonempty (P.WeakRankFunction ℕ) :=
  ⟨fun _ ↦ inferInstance, fun ⟨h⟩ ↦ h.isRegular⟩

end Pairing

namespace PairingCore

variable (P : A.PairingCore)

lemma isRegular_iff_nonempty_rankFunction [P.IsProper] :
    P.IsRegular ↔ Nonempty (P.RankFunction ℕ) := by
  rw [← isRegular_pairing_iff, Pairing.isRegular_iff_nonempty_rankFunction]
  exact (P.rankFunctionEquiv ℕ).symm.nonempty_congr

lemma isRegular_iff_nonempty_weakRankFunction [P.IsProper] :
    P.IsRegular ↔ Nonempty (P.WeakRankFunction ℕ) := by
  rw [← isRegular_pairing_iff, Pairing.isRegular_iff_nonempty_weakRankFunction]
  exact (P.weakRankFunctionEquiv ℕ).symm.nonempty_congr

end PairingCore

end SSet.Subcomplex
```
