# FiberBundle.chartedSpace'_chartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cbc8139-b35f-f0ca-df02-799630b8548d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f46aa14d-3d35-ae60-89e0-dbfcc17769ca",
  "kind": "theorem",
  "lexical_name": "FiberBundle.chartedSpace'_chartAt",
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
  "slug": "fiberbundle-chartedspace-chartat--ea51a1cf05618aa1129780be",
  "source": {
    "blob": "a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 90,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea51a1cf05618aa1129780bea24faebe58c0ec3ad67ea7bf5bcb26c54eca47e5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f46aa14d-3d35-ae60-89e0-dbfcc17769ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiberBundle.chartedSpace'_chartAt (x : TotalSpace F E) :
    chartAt (B × F) x = (trivializationAt F E x.proj).toOpenPartialHomeomorph :=
  rfl

/- Porting note: In Lean 3, the next instance was inside a section with locally reducible
`ModelProd` and it used `ModelProd B F` as the intermediate space. Using `B × F` in the middle
gives the same instance.
-/
--attribute [local reducible] ModelProd

/-- Let `B` be a charted space modelled on `HB`.  Then a fiber bundle `E` over a base `B` with model
fiber `F` is naturally a charted space modelled on `HB.prod F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
