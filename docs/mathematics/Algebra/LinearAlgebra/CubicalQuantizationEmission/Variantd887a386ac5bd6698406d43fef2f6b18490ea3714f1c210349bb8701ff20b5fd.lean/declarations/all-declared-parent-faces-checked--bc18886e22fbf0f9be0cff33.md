# all_declared_parent_faces_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d84592a-dae7-4745-5a77-a95fd808ad7d",
  "kind": "theorem",
  "lexical_name": "all_declared_parent_faces_checked",
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
  "slug": "all-declared-parent-faces-checked--bc18886e22fbf0f9be0cff33",
  "source": {
    "blob": "3a6ce2df143cee6fcebbf52f3d23f2ca2d0993fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 199,
    "path": "GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variantd887a386ac5bd6698406d43fef2f6b18490ea3714f1c210349bb8701ff20b5fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc18886e22fbf0f9be0cff3385d199dfd3bfcfb7012f200209e2edc96c8274e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variantd887a386ac5bd6698406d43fef2f6b18490ea3714f1c210349bb8701ff20b5fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d84592a-dae7-4745-5a77-a95fd808ad7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_declared_parent_faces_checked
    {k : Nat}
    (degreeBound : k + 1 ≤ emission.profile.maximumEmittedDegree)
    (parent : decomposition.Cell (k + 1))
    (faceIndex : Fin (k + 1))
    (orientation : CubicalFaceOrientation) :
    Nonempty CubicalFaceCheck :=
  ⟨emission.faceCheck degreeBound parent faceIndex orientation⟩

/-- Every face outcome retains lineage and the source nonpromotion boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variantd887a386ac5bd6698406d43fef2f6b18490ea3714f1c210349bb8701ff20b5fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variantd887a386ac5bd6698406d43fef2f6b18490ea3714f1c210349bb8701ff20b5fd.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a6ce2df143cee6fcebbf52f3d23f2ca2d0993fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
