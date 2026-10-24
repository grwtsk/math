# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variant54088b435bea96c3627ceea2520594bd5174b2937c2d53b98aa239c1a65aabcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afa964a8c3a91f5cfce9a4927ebe27dce78218c0` · SHA-256 `c8018b797ab7474fbbce760c63a0c3ecc18c12479fbe9539b36da433585eb7f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FirstInfeasibleOnBranch.Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FirstInfeasibleOnBranch.Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f","mathematical_subject":"Algebra.OrderTheory","original_sha256":"b9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Refinement/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Completion.Core
import Mathlib.Order.Fin.Basic

/-!
# First infeasible boundary on an explicit finite branch

The predicate records infeasibility at one branch index and feasibility at
every earlier index.  Uniqueness is branch-relative.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FirstInfeasibleOnBranch.Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f

namespace Mathematics.BinaryFrontier

def FirstInfeasibleOnBranch
    {n : Nat}
    (feasible : Fin n → Prop)
    (index : Fin n) : Prop :=
  ¬ feasible index ∧
    ∀ earlier, earlier < index →
      feasible earlier

theorem firstInfeasibleOnBranch_unique
    {n : Nat}
    {feasible : Fin n → Prop}
    {left right : Fin n}
    (leftFirst :
      FirstInfeasibleOnBranch feasible left)
    (rightFirst :
      FirstInfeasibleOnBranch feasible right) :
    left = right := by
  apply le_antisymm
  · by_contra leftNotLeRight
    have rightLtLeft : right < left :=
      lt_of_not_ge leftNotLeRight
    exact rightFirst.1
      (leftFirst.2 right rightLtLeft)
  · by_contra rightNotLeLeft
    have leftLtRight : left < right :=
      lt_of_not_ge rightNotLeLeft
    exact leftFirst.1
      (rightFirst.2 left leftLtRight)

theorem failed_branch_has_unique_first_infeasible_prefix
    {n : Nat}
    {feasible : Fin n → Prop}
    (existsFirst :
      ∃ index, FirstInfeasibleOnBranch feasible index) :
    ∃! index,
      FirstInfeasibleOnBranch feasible index := by
  obtain ⟨index, indexFirst⟩ := existsFirst
  exact ⟨index, indexFirst, fun other otherFirst =>
    firstInfeasibleOnBranch_unique
      otherFirst indexFirst⟩

end Mathematics.BinaryFrontier
```
