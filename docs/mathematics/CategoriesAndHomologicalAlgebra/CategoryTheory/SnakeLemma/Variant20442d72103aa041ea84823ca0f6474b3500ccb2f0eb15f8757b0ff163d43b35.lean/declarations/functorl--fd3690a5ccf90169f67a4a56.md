# functorL₁'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e6d6e7b56922e6eae2c918f256046ba482681e689e8eb26820cc45a4c2d6da1",
  "kind": "def",
  "lexical_name": "functorL₁'",
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
  "slug": "functorl--fd3690a5ccf90169f67a4a56",
  "source": {
    "blob": "81b7d536bbe5dedbc07527cfe781678803bc9a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 508,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant20442d72103aa041ea84823ca0f6474b3500ccb2f0eb15f8757b0ff163d43b35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd3690a5ccf90169f67a4a567a2e098cefe10a0c79e6995aecf60bc4160e0fd8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant20442d72103aa041ea84823ca0f6474b3500ccb2f0eb15f8757b0ff163d43b35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e6d6e7b56922e6eae2c918f256046ba482681e689e8eb26820cc45a4c2d6da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorL₁' : SnakeInput C ⥤ ShortComplex C where
  obj S := S.L₁'
  map f :=
    { τ₁ := f.f₀.τ₂
      τ₂ := f.f₀.τ₃
      τ₃ := f.f₃.τ₁
      comm₁₂ := f.f₀.comm₂₃
      comm₂₃ := (naturality_δ f).symm }

/-- The functor which sends `S : SnakeInput C` to `S.L₂'` which is
`S.L₀.X₃ ⟶ S.L₃.X₁ ⟶ S.L₃.X₂`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant20442d72103aa041ea84823ca0f6474b3500ccb2f0eb15f8757b0ff163d43b35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant20442d72103aa041ea84823ca0f6474b3500ccb2f0eb15f8757b0ff163d43b35.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81b7d536bbe5dedbc07527cfe781678803bc9a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
