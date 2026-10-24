# FiberBundle.writtenInExtChartAt_trivializationAt_symm

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
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98bf08de-7143-2824-f132-53336e74f8eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bad5ba4-d37f-62f7-3fb4-3e55577218c4",
  "kind": "theorem",
  "lexical_name": "FiberBundle.writtenInExtChartAt_trivializationAt_symm",
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
  "slug": "fiberbundle-writteninextchartat-trivializationat-symm--23e13fcf9965670440aa628f",
  "source": {
    "blob": "a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e13fcf9965670440aa628fda0616f6f539a92bf97f29d7612dd22a84593bf4",
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

Occurrence: `result:2bad5ba4-d37f-62f7-3fb4-3e55577218c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiberBundle.writtenInExtChartAt_trivializationAt_symm {x : TotalSpace F E} {y}
    (hy : y ∈ (extChartAt (IB.prod 𝓘(𝕜, F)) x).target) :
    writtenInExtChartAt (IB.prod 𝓘(𝕜, F)) (IB.prod 𝓘(𝕜, F)) (trivializationAt F E x.proj x)
      (trivializationAt F E x.proj).toOpenPartialHomeomorph.symm y = y :=
  writtenInExtChartAt_chartAt_symm_comp _ hy

/-! ### Regularity of maps in/out fiber bundles

Note: For these results we don't need that the bundle is a `C^n` vector bundle, or even a vector
bundle at all, just that it is a fiber bundle over a charted base space.
-/

namespace Bundle

/-- Characterization of `C^n` functions into a vector bundle.
Version at a point within a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
