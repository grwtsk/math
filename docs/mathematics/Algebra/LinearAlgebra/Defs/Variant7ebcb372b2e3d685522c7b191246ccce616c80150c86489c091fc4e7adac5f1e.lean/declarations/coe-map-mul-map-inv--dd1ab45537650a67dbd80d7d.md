# coe_map_mul_map_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1509ff29b9c44f9461ce8ffdca475dab6a6897dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a738362e-99df-d737-0bbb-8f49149fecbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6286920-1602-d766-c32b-159a8fd6a94f",
  "kind": "lemma",
  "lexical_name": "coe_map_mul_map_inv",
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
  "slug": "coe-map-mul-map-inv--dd1ab45537650a67dbd80d7d",
  "source": {
    "blob": "1509ff29b9c44f9461ce8ffdca475dab6a6897dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 234,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd1ab45537650a67dbd80d7da585d4a7de310d3e52a28eb09c560416c47ffeef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6286920-1602-d766-c32b-159a8fd6a94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_map_mul_map_inv (g : GL n R) : g.val.map f * g.val⁻¹.map f = 1 := by
  rw [← Matrix.map_mul]
  simp only [isUnits_det_units, mul_nonsing_inv, map_zero, map_one, Matrix.map_one]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1509ff29b9c44f9461ce8ffdca475dab6a6897dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
