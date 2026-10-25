# IsBase.compl_inter_isBasis_of_inter_isBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bd11a1e-56a6-9326-620d-4de54f89e004",
  "kind": "theorem",
  "lexical_name": "IsBase.compl_inter_isBasis_of_inter_isBasis",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isbase-compl-inter-isbasis-of-inter-isbasis--f81f003aa323e7e9a4dc9fab",
  "source": {
    "blob": "973dd0855ae3b606c04a53314b49071e5fd946ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81f003aa323e7e9a4dc9fabdb3f4c29af17103c0febc9d3e17fc00b638307a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bd11a1e-56a6-9326-620d-4de54f89e004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBase.compl_inter_isBasis_of_inter_isBasis (hB : M.IsBase B) (hBX : M.IsBasis (B ∩ X) X) :
    M✶.IsBasis ((M.E \ B) ∩ (M.E \ X)) (M.E \ X) := by
  refine Indep.isBasis_of_forall_insert ?_ inter_subset_right (fun e he ↦ ?_)
  · rw [dual_indep_iff_exists]
    exact ⟨B, hB, disjoint_of_subset_left inter_subset_left disjoint_sdiff_left⟩
  simp only [diff_inter_self_eq_diff, mem_diff, not_and, not_not, imp_iff_right he.1.1] at he
  simp_rw [dual_dep_iff_forall, insert_subset_iff, and_iff_right he.1.1,
    and_iff_left (inter_subset_left.trans diff_subset)]
  refine fun B' hB' ↦ by_contra (fun hem ↦ ?_)
  rw [nonempty_iff_ne_empty, not_ne_iff, ← union_singleton, diff_inter_diff,
   union_inter_distrib_right, union_empty_iff, singleton_inter_eq_empty, diff_eq,
   inter_right_comm, inter_eq_self_of_subset_right hB'.subset_ground, ← diff_eq,
   diff_eq_empty] at hem
  obtain ⟨f, hfb, hBf⟩ := hB.exchange hB' ⟨he.2, hem.2⟩

  have hi : M.Indep (insert f (B ∩ X)) := by
    refine hBf.indep.subset (insert_subset_insert ?_)
    simp_rw [subset_diff, and_iff_right inter_subset_left, disjoint_singleton_right,
      mem_inter_iff, iff_false_intro he.1.2, and_false, not_false_iff]
  exact hfb.2 (hBX.mem_of_insert_indep (Or.elim (hem.1 hfb.1) (False.elim ∘ hfb.2) id) hi).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `973dd0855ae3b606c04a53314b49071e5fd946ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
