# _root_.LinearMap.compQuadraticMap'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05a835c559ec2abbfb301d970a0e0776ece910084b3c6c4097944f67c46c8843",
  "kind": "def",
  "lexical_name": "_root_.LinearMap.compQuadraticMap'",
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
  "slug": "root-linearmap-compquadraticmap--0d9f9ee5873ccaaaaef25ae7",
  "source": {
    "blob": "a47b810b9f0eff266416ee968565a9bc39fff294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 581,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d9f9ee5873ccaaaaef25ae7021dff45c6c6172b59beb3b0b6a0e4c98c57a6e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05a835c559ec2abbfb301d970a0e0776ece910084b3c6c4097944f67c46c8843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.LinearMap.compQuadraticMap' [CommSemiring S] [Algebra S R] [Module S N] [Module S M]
    [IsScalarTower S R N] [IsScalarTower S R M] [Module S P]
    (f : N →ₗ[S] P) (Q : QuadraticMap R M N) : QuadraticMap S M P :=
  _root_.LinearMap.compQuadraticMap f Q.restrictScalars

/-- When `N` and `P` are equivalent, quadratic maps on `M` into `N` are equivalent to quadratic
maps on `M` into `P`.

See `LinearMap.BilinMap.congr₂` for the bilinear map version. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47b810b9f0eff266416ee968565a9bc39fff294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
