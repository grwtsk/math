# toZ_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7c256cd907f19930d949903264d1782aca49add",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c919c283-0d05-ae42-c6c2-55dadd2ccb90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4801307-b2db-68e7-9cf0-b6ce988f01d0",
  "kind": "theorem",
  "lexical_name": "toZ_strictMono",
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
  "slug": "toz-strictmono--9f5e0db609567217ae37d12a",
  "source": {
    "blob": "c7c256cd907f19930d949903264d1782aca49add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 294,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f5e0db609567217ae37d12a99fb76cb74041c8abe66d2faddaabade7debaf7a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4801307-b2db-68e7-9cf0-b6ce988f01d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toZ_strictMono : StrictMono (toZ i0) := by
  intro j i h_le
  contrapose! h_le
  rcases le_or_gt i0 i with hi | hi <;> rcases le_or_gt i0 j with hj | hj
  · rw [← iterate_succ_toZ i hi, ← iterate_succ_toZ j hj]
    exact Monotone.monotone_iterate_of_le_map succ_mono (le_succ _) (Int.toNat_le_toNat h_le)
  · exact absurd ((toZ_neg hj).trans_le (toZ_nonneg hi)) (not_lt.mpr h_le)
  · exact hi.le.trans hj
  · rw [← iterate_pred_toZ i hi, ← iterate_pred_toZ j hj]
    refine Monotone.antitone_iterate_of_map_le pred_mono (pred_le _) (Int.toNat_le_toNat ?_)
    exact Int.neg_le_neg h_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7c256cd907f19930d949903264d1782aca49add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
