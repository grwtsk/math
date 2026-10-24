# Complete source: GRWTSK.Algebra.GroupTheory.PerfectImageIntersection.Variant3251894f5eae915cac57fc2c165148ae2e1b7ac8af35aacc35dfde6774f41606

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6ae0f07a35bdeaf403d2d960dc8d56901bd4e09` · SHA-256 `fb15ec4cab31de137449fa1c39f7f985d7a5538caa47b497502b85e992e0b792`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.PerfectImageIntersection.Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.PerfectImageIntersection.Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30","mathematical_subject":"Algebra.Groups","original_sha256":"59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/FiniteLatticeArithmetic/PerfectImageIntersection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.GroupTheory.Commutator.Basic
import Mathlib.Order.CompleteLattice.Finset
import Mathlib.Data.ZMod.Basic

/-!
# Perfect images survive normal intersections

This is the independently usable group-theoretic intersection step from
`glue:perfect-intersections` in the negative family-206 manuscript, at
openai/math commit adc7f1241b42e322a6451854ab7e4b4c146bf78a.
The proof below is a native construction; it assumes exactly the commutator
identity needed, and does not invoke the negative representation conclusion.
-/


namespace GRWTSK.Algebra.GroupTheory.PerfectImageIntersection.Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30

namespace FormalResearch.FiniteLatticeArithmetic

open scoped commutatorElement

/-- Two normal subgroups both mapping over a perfect subgroup retain that image
in their intersection. Finiteness is unnecessary for the two-subgroup step. -/
theorem perfect_image_intersection {G H : Type*} [Group G] [Group H]
    (f : G →* H) (P : Subgroup H) (hP : ⁅P, P⁆ = P)
    (B C : Subgroup G) [B.Normal] [C.Normal]
    (hB : P ≤ B.map f) (hC : P ≤ C.map f) : P ≤ (B ⊓ C).map f := by
  calc
    P = ⁅P, P⁆ := hP.symm
    _ ≤ ⁅B.map f, C.map f⁆ := Subgroup.commutator_mono hB hC
    _ = (⁅B, C⁆).map f := (Subgroup.map_commutator B C f).symm
    _ ≤ (B ⊓ C).map f := Subgroup.map_mono (Subgroup.commutator_le_inf B C)

/-- The same retained image survives a nonempty finite family of normal intersections. -/
theorem perfect_image_finset_intersection {G H ι : Type*} [Group G] [Group H]
    (f : G →* H) (P : Subgroup H) (hP : ⁅P, P⁆ = P)
    (B : ι → Subgroup G) [∀ i, (B i).Normal]
    (s : Finset ι) (hne : s.Nonempty) (hB : ∀ i ∈ s, P ≤ (B i).map f) :
    P ≤ (⨅ i ∈ s, B i).map f := by
  classical
  induction s using Finset.induction_on with
  | empty => simp at hne
  | @insert i s hi ih =>
    by_cases hs : s.Nonempty
    · have hfirst := hB i (Finset.mem_insert_self i s)
      have hrest := ih hs (fun j hj => hB j (Finset.mem_insert_of_mem hj))
      have : (⨅ j ∈ s, B j).Normal :=
        Subgroup.normal_iInf_normal (fun _ => Subgroup.normal_iInf_normal (fun _ => inferInstance))
      simpa only [Finset.iInf_insert] using
        perfect_image_intersection f P hP (B i) (⨅ j ∈ s, B j) hfirst hrest
    · have hs0 : s = ∅ := Finset.not_nonempty_iff_eq_empty.mp hs
      subst s
      simpa using hB i (Finset.mem_insert_self i ∅)

/-- The actual divisor/CRT cyclic source is abelian. Its only perfect subgroup
is trivial, so the nonabelian-inner-image gluing route has no nontrivial packet here. -/
theorem perfect_cyclic_source_subgroup_eq_bot (M : ℕ) (P : AddSubgroup (ZMod M))
    (hP : ⁅P.toSubgroup, P.toSubgroup⁆ = P.toSubgroup) : P = ⊥ := by
  have hbot : ⁅P.toSubgroup, P.toSubgroup⁆ = ⊥ :=
    (Subgroup.commutator_self_eq_bot_iff (H := P.toSubgroup)).mpr inferInstance
  apply AddSubgroup.toSubgroup.injective
  exact hP.symm.trans hbot

end FormalResearch.FiniteLatticeArithmetic
```
