# analyticCantorRepresentation_theta_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db76e875edbb15d76590db6ff2a08ed47cc14282",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea9683c4-9ce3-12c6-353b-f5a1b09ee9df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8522807-39b8-8064-d3fb-11e056d59745",
  "kind": "theorem",
  "lexical_name": "analyticCantorRepresentation_theta_val",
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
  "slug": "analyticcantorrepresentation-theta-val--b4e0fd5eec5f5758760f6b0e",
  "source": {
    "blob": "db76e875edbb15d76590db6ff2a08ed47cc14282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4e0fd5eec5f5758760f6b0ed2a66699efadb0ae0aa8e59b747558d37e868978",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8522807-39b8-8064-d3fb-11e056d59745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticCantorRepresentation_theta_val
    (stream : BitMatrix.Carrier.BitStream) :
    ((show ExactCantorScalar from
      analyticCantorRepresentation.theta stream) : Real) =
      designatedCantorScalar stream := by
  change Real.ofDigits (fun index => cond (stream index) 2 0) =
    Real.ofDigits (designatedTernaryExpansion stream)
  congr 1
  funext index
  cases bit : stream index <;>
    simp [designatedTernaryExpansion, bit]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db76e875edbb15d76590db6ff2a08ed47cc14282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
