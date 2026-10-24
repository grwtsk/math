# Isometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac3ac36e484bdb042aa2838cc733182e88d6ebc55dd98a0b8c59df8c3bb5c157",
  "kind": "structure",
  "lexical_name": "Isometry",
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
  "slug": "isometry--5fe2e32fdea7258a31105e44",
  "source": {
    "blob": "a128d66866339ef5c54a7701a3efeb0ba08480ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fe2e32fdea7258a31105e445b75b5ad9aeb497644427772f4e32e217d2866bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac3ac36e484bdb042aa2838cc733182e88d6ebc55dd98a0b8c59df8c3bb5c157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Isometry (B₁ : LinearMap.BilinForm R M₁) (B₂ : LinearMap.BilinForm R M₂)
    extends M₁ →ₗ[R] M₂ where
  /-- The bilinear forms agree across the map. -/
  map_app' (m m' : M₁) : B₂ (toFun m) (toFun m') = B₁ m m'

namespace Isometry

@[inherit_doc]
notation:25 B₁ " →bᵢ " B₂:0 => Isometry B₁ B₂

variable {B₁ : LinearMap.BilinForm R M₁} {B₂ : LinearMap.BilinForm R M₂}
variable {B₃ : LinearMap.BilinForm R M₃} {B₄ : LinearMap.BilinForm R M₄}

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a128d66866339ef5c54a7701a3efeb0ba08480ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
