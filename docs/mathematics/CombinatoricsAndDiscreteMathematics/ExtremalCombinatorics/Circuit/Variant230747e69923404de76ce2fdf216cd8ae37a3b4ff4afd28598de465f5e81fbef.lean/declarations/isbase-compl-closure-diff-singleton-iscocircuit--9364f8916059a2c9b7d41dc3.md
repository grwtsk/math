# IsBase.compl_closure_diff_singleton_isCocircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2fd3193f52863b78b94e2e5dba8c47beb4f325b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 588,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71b7dfe4-5bd9-0858-a298-5dfbd44d1b3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:255399ca-05fc-dda2-6d6e-029c2666b1b3",
  "kind": "lemma",
  "lexical_name": "IsBase.compl_closure_diff_singleton_isCocircuit",
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
  "slug": "isbase-compl-closure-diff-singleton-iscocircuit--9364f8916059a2c9b7d41dc3",
  "source": {
    "blob": "c2fd3193f52863b78b94e2e5dba8c47beb4f325b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 588,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9364f8916059a2c9b7d41dc3679f198113bfe6af3ff1edc48dbb1b385039e7a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:255399ca-05fc-dda2-6d6e-029c2666b1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBase.compl_closure_diff_singleton_isCocircuit (hB : M.IsBase B) (he : e ∈ B) :
    M.IsCocircuit (M.E \ M.closure (B \ {e})) := by
  rw [isCocircuit_iff_minimal_compl_nonspanning, minimal_subset_iff,
    diff_diff_cancel_left (M.closure_subset_ground _),
    closure_spanning_iff (diff_subset.trans hB.subset_ground)]
  have hB' := (isBase_iff_minimal_spanning.1 hB)
  refine ⟨fun hsp ↦ hB'.notMem_of_prop_diff_singleton hsp he, fun X hX hXss ↦ hXss.antisymm' ?_⟩
  rw [diff_subset_comm]
  refine fun f hf ↦ by_contra fun fcl ↦ hX ?_
  rw [subset_diff] at hXss
  suffices hsp : M.IsBase (insert f (B \ {e})) by
    refine hsp.spanning.superset <| insert_subset hf <|
      (M.subset_closure _ (diff_subset.trans hB.subset_ground)).trans ?_
    rw [subset_diff, and_iff_left hXss.2.symm]
    apply closure_subset_ground
  exact hB.exchange_base_of_notMem_closure he fcl

/-- A version of `Matroid.isCocircuit_iff_minimal_compl_nonspanning` with a support assumption
in the minimality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2fd3193f52863b78b94e2e5dba8c47beb4f325b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
