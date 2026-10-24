# oangle_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d9b3280-45fb-b4d7-19ab-2225bbccca5f",
  "kind": "theorem",
  "lexical_name": "oangle_map",
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
  "slug": "oangle-map--e84c8ac312794e3d4dc0ab42",
  "source": {
    "blob": "7834dee5e69e8b6768e602c5406282ecfe289a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 523,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e84c8ac312794e3d4dc0ab4284ced4410ec9db87c83befff3c317790667ac2ea",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d9b3280-45fb-b4d7-19ab-2225bbccca5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_map (x y : V') (f : V ≃ₗᵢ[ℝ] V') :
    (Orientation.map (Fin 2) f.toLinearEquiv o).oangle x y = o.oangle (f.symm x) (f.symm y) := by
  simp [oangle, o.kahler_map]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7834dee5e69e8b6768e602c5406282ecfe289a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
