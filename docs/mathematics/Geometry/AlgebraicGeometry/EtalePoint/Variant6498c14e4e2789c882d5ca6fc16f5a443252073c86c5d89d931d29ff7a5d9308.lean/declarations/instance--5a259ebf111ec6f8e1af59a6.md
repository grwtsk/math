# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76b67566bbde819cf4826545daf5a2097234ebe04434376db8b286b72b70f408",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5a259ebf111ec6f8e1af59a6",
  "source": {
    "blob": "ee2cfa39c3953ac7596439105ec6dff6a9587cd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a259ebf111ec6f8e1af59a64d9d8f5cf1ef17b860f91241d3ff393da64724eb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76b67566bbde819cf4826545daf5a2097234ebe04434376db8b286b72b70f408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsCofiltered (Etale.forget S ⋙ coyoneda.obj (op (Over.mk s))).Elements :=
  Functor.isCofiltered_elements _

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- A morphism `s : Spec (.of Ω) ⟶ S` where `Ω` is a separably closed field
defines a point for the small étale site of `S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2cfa39c3953ac7596439105ec6dff6a9587cd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
