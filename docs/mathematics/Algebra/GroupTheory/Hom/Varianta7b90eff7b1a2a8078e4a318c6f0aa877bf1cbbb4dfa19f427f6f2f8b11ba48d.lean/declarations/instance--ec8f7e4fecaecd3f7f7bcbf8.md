# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a4a44f5d15f4ae81da5894a76418a14320ba1fca5b07c5d68df6bae68387cca",
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
  "slug": "instance--ec8f7e4fecaecd3f7f7bcbf8",
  "source": {
    "blob": "85d6a80071c9a60726fbc6f38f37756eb6a8d136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 541,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec8f7e4fecaecd3f7f7bcbf8da64625b1fcefe7bc370026d76444a86b6cd4f9d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a4a44f5d15f4ae81da5894a76418a14320ba1fca5b07c5d68df6bae68387cca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [SMul M X] [Monoid N] [CommRing Y] [MulSemiringAction N Y] :
    CommRing (X →ₑ[σ] Y) where

namespace End

/-- For a monoid `M` acting on a type `X`, the `M`-equivariant functions from `X` to itself
form a monoid under composition. -/
@[to_additive /-- For an additive monoid `M` acting on a type `X`, the `M`-equivariant functions
from `X` to itself form an additive monoid under composition. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85d6a80071c9a60726fbc6f38f37756eb6a8d136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
