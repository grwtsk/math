# primeWork_eq_Mangoldt_work_add_square_higher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dde3609e76077b2ff9c10125c9fa762ec5633fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83fdbd12-8c36-95b7-17b6-3ad78ec056da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ae1a91d-eb83-82e5-9e0c-9bad714e7c75",
  "kind": "theorem",
  "lexical_name": "primeWork_eq_Mangoldt_work_add_square_higher",
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
  "slug": "primework-eq-mangoldt-work-add-square-higher--dcaa391a197e987fe54a0f42",
  "source": {
    "blob": "6dde3609e76077b2ff9c10125c9fa762ec5633fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 269,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcaa391a197e987fe54a0f42eaa9e68fcd0bf494cda2cafaf429d346536abc47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ae1a91d-eb83-82e5-9e0c-9bad714e7c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeWork_eq_Mangoldt_work_add_square_higher (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedWork A = criticalMangoldtWork A +
      SourcePrimeSquareMainTerm.primeSquareMoment A +
      SourcePrimePowerPartition.higherPrimePowerMoment A := by
  have h := SourcePrimePowerPartition.closedPrimeMoment_eq_first_square_higher A
  rw [closedPrimeMoment_eq_continuous_sub_Mangoldt_work A hA,
    firstPrimeMoment_eq_continuous_sub_work A hA] at h
  linarith

/-- Eventual full-Mangoldt lower control is equivalent to the unchanged residual upper target.
This theorem supplies neither eventual witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dde3609e76077b2ff9c10125c9fa762ec5633fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
