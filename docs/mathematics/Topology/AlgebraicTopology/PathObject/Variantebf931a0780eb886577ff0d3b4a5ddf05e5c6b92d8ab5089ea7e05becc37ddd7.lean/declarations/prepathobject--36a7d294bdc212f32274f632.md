# PrepathObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:033e3d3d7bd5afa6a99fef79943ac1230e2988420f143fefe3613762be56a1d4",
  "kind": "structure",
  "lexical_name": "PrepathObject",
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
  "slug": "prepathobject--36a7d294bdc212f32274f632",
  "source": {
    "blob": "7c61eec814ef0cd3459c83d65751399da42d1a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36a7d294bdc212f32274f632d7341cbc37372648f4424613d7838d5fe596fdec",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:033e3d3d7bd5afa6a99fef79943ac1230e2988420f143fefe3613762be56a1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrepathObject (A : C) where
  /-- the underlying object of a (pre)path object -/
  P : C
  /-- the first "projection" from the (pre)path object -/
  p₀ : P ⟶ A
  /-- the second "projection" from the (pre)path object -/
  p₁ : P ⟶ A
  /-- the diagonal of the (pre)path object -/
  ι : A ⟶ P
  ι_p₀ : ι ≫ p₀ = 𝟙 A := by aesop_cat
  ι_p₁ : ι ≫ p₁ = 𝟙 A := by aesop_cat

namespace PrepathObject

attribute [reassoc (attr := simp)] ι_p₀ ι_p₁

variable {A : C} (P : PrepathObject A)

/-- The pre-path object obtained by switching the two projections. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c61eec814ef0cd3459c83d65751399da42d1a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
