# pointSmallEtaleFiberObjToPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c64dd02b718cef3880ac5c12b40d5015027a818dc94b9d0d91c41772e072ca7a",
  "kind": "def",
  "lexical_name": "pointSmallEtaleFiberObjToPreimage",
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
  "slug": "pointsmalletalefiberobjtopreimage--be23c681c633036a77c98217",
  "source": {
    "blob": "ee2cfa39c3953ac7596439105ec6dff6a9587cd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be23c681c633036a77c982178a01c51212bea9846ac83be83a41648c4af284ec",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c64dd02b718cef3880ac5c12b40d5015027a818dc94b9d0d91c41772e072ca7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pointSmallEtaleFiberObjToPreimage {X : S.Etale}
    (t : (pointSmallEtale s).fiber.obj X) :
    X.hom ⁻¹' {s₀} :=
  ⟨t.left (default : Spec (.of Ω)), by
    have := (Over.w t).symm
    cat_disch⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2cfa39c3953ac7596439105ec6dff6a9587cd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
