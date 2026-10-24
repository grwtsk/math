# _root_.GRWTSK.Geometry.AlgebraicGeometry.IsAffine.Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.AlgebraicGeometry.Scheme.affineBasicOpen_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df52ff8b-368b-54fd-812c-7029bd6215bb",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.AlgebraicGeometry.IsAffine.Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.AlgebraicGeometry.Scheme.affineBasicOpen_le",
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
  "slug": "root-grwtsk-geometry-algebraicgeometry-isaffine-variante1d1dc6eb97ef2204--a82af2373ba324f1488ab558",
  "source": {
    "blob": "0a0305ec46f99a3963a025fcdc52db6af41c9c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 927,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a82af2373ba324f1488ab5585b9109e485119bb04727ce806e3e9f2457b04ade",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df52ff8b-368b-54fd-812c-7029bd6215bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 927–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.AlgebraicGeometry.IsAffine.Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.AlgebraicGeometry.Scheme.affineBasicOpen_le
    (X : Scheme) {V : X.affineOpens} (f : Γ(X, V.1)) : X.affineBasicOpen f ≤ V :=
  X.basicOpen_le f

include hU in
/--
In an affine open set `U`, a family of basic open covers `U` iff the sections span `Γ(X, U)`.
See `iSup_basicOpen_of_span_eq_top` for the inverse direction without the affine-ness assumption.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean#L927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0305ec46f99a3963a025fcdc52db6af41c9c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
