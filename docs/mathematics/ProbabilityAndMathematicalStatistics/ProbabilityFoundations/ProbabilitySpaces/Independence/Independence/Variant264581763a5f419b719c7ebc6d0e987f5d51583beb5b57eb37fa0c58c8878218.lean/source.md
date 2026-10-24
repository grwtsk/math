# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Independence.Variant264581763a5f419b719c7ebc6d0e987f5d51583beb5b57eb37fa0c58c8878218

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9879cf3e0e48aa0a67dfb54b5a233f9bbf0cec00` · SHA-256 `a2903efca3b2039c9549115ba1c432d4128905505dd4a639e14382845ca68b01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Independent.Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.Independent.Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0","mathematical_subject":"Probability.Independence","original_sha256":"7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/ProjectiveSpace/Independence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Michael Blyth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Blyth
-/
import Mathlib.LinearAlgebra.ProjectiveSpace.Basic


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Independent.Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0

#align_import linear_algebra.projective_space.independence from "leanprover-community/mathlib"@"1e82f5ec4645f6a92bb9e02fce51e44e3bc3e1fe"

/-!
# Independence in Projective Space

In this file we define independence and dependence of families of elements in projective space.

## Implementation Details

We use an inductive definition to define the independence of points in projective
space, where the only constructor assumes an independent family of vectors from the
ambient vector space. Similarly for the definition of dependence.

## Results

- A family of elements is dependent if and only if it is not independent.
- Two elements are dependent if and only if they are equal.

# Future Work

- Define collinearity in projective space.
- Prove the axioms of a projective geometry are satisfied by the dependence relation.
- Define projective linear subspaces.
-/


variable {ι K V : Type*} [Field K] [AddCommGroup V] [Module K V] {f : ι → ℙ K V}

namespace Projectivization

/-- A linearly independent family of nonzero vectors gives an independent family of points
in projective space. -/
inductive Independent : (ι → ℙ K V) → Prop
  | mk (f : ι → V) (hf : ∀ i : ι, f i ≠ 0) (hl : LinearIndependent K f) :
    Independent fun i => mk K (f i) (hf i)
#align projectivization.independent Projectivization.Independent

/-- A family of points in a projective space is independent if and only if the representative
vectors determined by the family are linearly independent. -/
theorem independent_iff : Independent f ↔ LinearIndependent K (Projectivization.rep ∘ f) := by
  refine' ⟨_, fun h => _⟩
  · rintro ⟨ff, hff, hh⟩
    choose a ha using fun i : ι => exists_smul_eq_mk_rep K (ff i) (hff i)
    convert hh.units_smul a
    ext i
    exact (ha i).symm
  · convert Independent.mk _ _ h
    · simp only [mk_rep, Function.comp_apply]
    · intro i
      apply rep_nonzero
#align projectivization.independent_iff Projectivization.independent_iff

/-- A family of points in projective space is independent if and only if the family of
submodules which the points determine is independent in the lattice-theoretic sense. -/
theorem independent_iff_completeLattice_independent :
    Independent f ↔ CompleteLattice.Independent fun i => (f i).submodule := by
  refine' ⟨_, fun h => _⟩
  · rintro ⟨f, hf, hi⟩
    simp only [submodule_mk]
    exact (CompleteLattice.independent_iff_linearIndependent_of_ne_zero (R := K) hf).mpr hi
  · rw [independent_iff]
    refine' h.linearIndependent (Projectivization.submodule ∘ f) (fun i => _) fun i => _
    · simpa only [Function.comp_apply, submodule_eq] using Submodule.mem_span_singleton_self _
    · exact rep_nonzero (f i)
#align projectivization.independent_iff_complete_lattice_independent Projectivization.independent_iff_completeLattice_independent

/-- A linearly dependent family of nonzero vectors gives a dependent family of points
in projective space. -/
inductive Dependent : (ι → ℙ K V) → Prop
  | mk (f : ι → V) (hf : ∀ i : ι, f i ≠ 0) (h : ¬LinearIndependent K f) :
    Dependent fun i => mk K (f i) (hf i)
#align projectivization.dependent Projectivization.Dependent

/-- A family of points in a projective space is dependent if and only if their
representatives are linearly dependent. -/
theorem dependent_iff : Dependent f ↔ ¬LinearIndependent K (Projectivization.rep ∘ f) := by
  refine' ⟨_, fun h => _⟩
  · rintro ⟨ff, hff, hh1⟩
    contrapose! hh1
    choose a ha using fun i : ι => exists_smul_eq_mk_rep K (ff i) (hff i)
    convert hh1.units_smul a⁻¹
    ext i
    simp only [← ha, inv_smul_smul, Pi.smul_apply', Pi.inv_apply, Function.comp_apply]
  · convert Dependent.mk _ _ h
    · simp only [mk_rep, Function.comp_apply]
    · exact fun i => rep_nonzero (f i)
#align projectivization.dependent_iff Projectivization.dependent_iff

/-- Dependence is the negation of independence. -/
theorem dependent_iff_not_independent : Dependent f ↔ ¬Independent f := by
  rw [dependent_iff, independent_iff]
#align projectivization.dependent_iff_not_independent Projectivization.dependent_iff_not_independent

/-- Independence is the negation of dependence. -/
theorem independent_iff_not_dependent : Independent f ↔ ¬Dependent f := by
  rw [dependent_iff_not_independent, Classical.not_not]
#align projectivization.independent_iff_not_dependent Projectivization.independent_iff_not_dependent

/-- Two points in a projective space are dependent if and only if they are equal. -/
@[simp]
theorem dependent_pair_iff_eq (u v : ℙ K V) : Dependent ![u, v] ↔ u = v := by
  rw [dependent_iff_not_independent, independent_iff, linearIndependent_fin2,
    Function.comp_apply, Matrix.cons_val_one, Matrix.head_cons, Ne.def]
  simp only [Matrix.cons_val_zero, not_and, not_forall, Classical.not_not, Function.comp_apply,
    ← mk_eq_mk_iff' K _ _ (rep_nonzero u) (rep_nonzero v), mk_rep, imp_iff_right_iff]
  exact Or.inl (rep_nonzero v)
#align projectivization.dependent_pair_iff_eq Projectivization.dependent_pair_iff_eq

/-- Two points in a projective space are independent if and only if the points are not equal. -/
@[simp]
theorem independent_pair_iff_neq (u v : ℙ K V) : Independent ![u, v] ↔ u ≠ v := by
  rw [independent_iff_not_dependent, dependent_pair_iff_eq u v]
#align projectivization.independent_pair_iff_neq Projectivization.independent_pair_iff_neq

end Projectivization
```
