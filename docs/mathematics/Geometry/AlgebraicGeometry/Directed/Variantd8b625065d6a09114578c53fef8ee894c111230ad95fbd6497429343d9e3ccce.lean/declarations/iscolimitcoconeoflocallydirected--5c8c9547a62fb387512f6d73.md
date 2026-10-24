# isColimitCoconeOfLocallyDirected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d7a387e125a8bc95e59a20a7e97e714b3cf90c966ccb78b89f7b0a07048b0a4",
  "kind": "def",
  "lexical_name": "isColimitCoconeOfLocallyDirected",
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
  "slug": "iscolimitcoconeoflocallydirected--5c8c9547a62fb387512f6d73",
  "source": {
    "blob": "92261c90d0fbb12e437bc43ac8ddb4076f2f47ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 243,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c8c9547a62fb387512f6d731dc18870558bac3a6411ef8e13884296c1b4f405",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d7a387e125a8bc95e59a20a7e97e714b3cf90c966ccb78b89f7b0a07048b0a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoconeOfLocallyDirected : IsColimit 𝒰.coconeOfLocallyDirected where
  desc s := 𝒰.glueMorphismsOfLocallyDirected s.ι.app fun _ ↦ s.ι.naturality _
  uniq s m hm := 𝒰.hom_ext _ _ fun j ↦ by simpa using hm j

/-- If `𝒰` is a directed open cover of `X`, to glue morphisms `{gᵢ : 𝒰ᵢ ⟶ Y}` over `S` it suffices
to check compatibility with the transition maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92261c90d0fbb12e437bc43ac8ddb4076f2f47ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
