# IsWeaklyRegular.isWeaklyRegular_rTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be1aaf625255d71de95cd19457d1d5ccd67e8b08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfb74da1-474d-3a1d-f985-03913042eb14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73beab7a-e6db-d577-7031-de723ae13699",
  "kind": "lemma",
  "lexical_name": "IsWeaklyRegular.isWeaklyRegular_rTensor",
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
  "slug": "isweaklyregular-isweaklyregular-rtensor--e58dc035a6b9e9ca4a712a44",
  "source": {
    "blob": "be1aaf625255d71de95cd19457d1d5ccd67e8b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 544,
    "path": "GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e58dc035a6b9e9ca4a712a443f50a6254039a1a525e8ebb20917a69ea9102d2f",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73beab7a-e6db-d577-7031-de723ae13699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsWeaklyRegular.isWeaklyRegular_rTensor [Module.Flat R M₂]
    {rs : List R} (h : IsWeaklyRegular M rs) :
    IsWeaklyRegular (M ⊗[R] M₂) rs := by
  induction h with
  | nil N => exact nil R (N ⊗[R] M₂)
  | @cons N _ _ r rs' h1 _ ih =>
    let e := quotSMulTopTensorEquivQuotSMulTop r M₂ N
    exact ((e.isWeaklyRegular_congr rs').mp ih).cons (h1.rTensor M₂)
-- TODO: apply the above to localization and completion (Corollary 1.1.3 in B&H)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1aaf625255d71de95cd19457d1d5ccd67e8b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
