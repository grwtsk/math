# isSuccPrelimitRecOn_succ_of_not_isMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d5a828a2be2eda13a06f13c4b06346ab863e687",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 664,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51f5f59a-c5ac-cc93-e9f0-c2f8b9a696d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1da7b4f6-b5f1-dd10-ae55-29ac1a5467fa",
  "kind": "theorem",
  "lexical_name": "isSuccPrelimitRecOn_succ_of_not_isMax",
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
  "slug": "issuccprelimitrecon-succ-of-not-ismax--dcfa0bb2e95570b19ee29370",
  "source": {
    "blob": "8d5a828a2be2eda13a06f13c4b06346ab863e687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 664,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcfa0bb2e95570b19ee29370793e3b38262eda446837fadbe1cd13100b8458f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da7b4f6-b5f1-dd10-ae55-29ac1a5467fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSuccPrelimitRecOn_succ_of_not_isMax (hb : ¬IsMax b) :
    isSuccPrelimitRecOn (Order.succ b) succ isSuccPrelimit = succ b hb := by
  have hb' := not_isSuccPrelimit_succ_of_not_isMax hb
  have H := Classical.choose_spec (not_isSuccPrelimit_iff.1 hb')
  rw [isSuccPrelimitRecOn, dif_neg hb', cast_eq_iff_heq]
  congr
  exacts [(succ_eq_succ_iff_of_not_isMax H.1 hb).1 H.2, proof_irrel_heq _ _]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5a828a2be2eda13a06f13c4b06346ab863e687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
