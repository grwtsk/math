# _root_.GRWTSK.Geometry.DifferentialGeometry.IsLeviCivitaConnection.Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.MDifferentiableAt.inner_bundle'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e651998-6e73-8dcb-1a15-81e3adcd4c25",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.DifferentialGeometry.IsLeviCivitaConnection.Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.MDifferentiableAt.inner_bundle'",
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
  "slug": "root-grwtsk-geometry-differentialgeometry-islevicivitaconnection-variant--6bf02e926d569923c903819a",
  "source": {
    "blob": "2147fcffab235634e27ce5ba5ca8cbb868d030c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 197,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf02e926d569923c903819a2aac3d07a97631ebf0dfdac22e2f1be5dc888035",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e651998-6e73-8dcb-1a15-81e3adcd4c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[fun_prop] lemma _root_.GRWTSK.Geometry.DifferentialGeometry.IsLeviCivitaConnection.Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.MDifferentiableAt.inner_bundle' {x : M} {X Y : Π x : M, TangentSpace I x}
    (hX : MDiffAt (T% X) x) (hY : MDiffAt (T% Y) x) :
    MDiffAt ⟪X, Y⟫ x :=
  MDifferentiableAt.inner_bundle hX hY

namespace CovariantDerivative
variable {x : M}

/-- A covariant derivative on the tangent bundle `TM` to a Riemannian manifold is called a
**Levi-Civita connection** if it is torsion-free and compatible with `g`.
Note that the bundle metric on `TM` is implicitly hidden in this definition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2147fcffab235634e27ce5ba5ca8cbb868d030c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
