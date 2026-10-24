# div_tendsto_atTop_of_degree_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05a6847518c9a5b414e4b715b8c551dd443090a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97f12cd7-50e1-02ee-b2c0-0cc357e9906a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:682a03a7-ebdf-1579-e8ae-ef89ff88c2a1",
  "kind": "theorem",
  "lexical_name": "div_tendsto_atTop_of_degree_gt",
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
  "slug": "div-tendsto-attop-of-degree-gt--bf4416c63190af5d14540b50",
  "source": {
    "blob": "05a6847518c9a5b414e4b715b8c551dd443090a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf4416c63190af5d14540b50857e3afbf29f6ff2125da8134d53a2c9c1006c5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:682a03a7-ebdf-1579-e8ae-ef89ff88c2a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_tendsto_atTop_of_degree_gt (hdeg : Q.degree < P.degree) (hQ : Q ≠ 0)
    (hnng : 0 ≤ P.leadingCoeff / Q.leadingCoeff) :
    Tendsto (fun x => eval x P / eval x Q) atTop atTop :=
  have ratio_pos : 0 < P.leadingCoeff / Q.leadingCoeff :=
    lt_of_le_of_ne hnng
      (div_ne_zero (fun h => ne_zero_of_degree_gt hdeg <| leadingCoeff_eq_zero.mp h) fun h =>
          hQ <| leadingCoeff_eq_zero.mp h).symm
  div_tendsto_atTop_of_degree_gt' P Q hdeg ratio_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a6847518c9a5b414e4b715b8c551dd443090a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
