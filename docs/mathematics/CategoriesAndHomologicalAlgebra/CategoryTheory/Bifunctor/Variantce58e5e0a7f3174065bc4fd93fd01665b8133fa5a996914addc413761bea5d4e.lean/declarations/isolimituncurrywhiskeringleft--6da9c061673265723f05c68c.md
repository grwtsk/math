# isoLimitUncurryWhiskeringLeft₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:820559b465b1935d43204f97f54e7dda8c331cec4e9671ae2348bd59fc468122",
  "kind": "def",
  "lexical_name": "isoLimitUncurryWhiskeringLeft₂",
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
  "slug": "isolimituncurrywhiskeringleft--6da9c061673265723f05c68c",
  "source": {
    "blob": "1f3d4416022e30e1d32fd0b38e5bab20cb4352a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6da9c061673265723f05c68cc203fb44fbe391e5e873cdfa13410ea6d630f842",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:820559b465b1935d43204f97f54e7dda8c331cec4e9671ae2348bd59fc468122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isoLimitUncurryWhiskeringLeft₂ :
    limit (uncurry.obj (whiskeringLeft₂ C |>.obj K₁ |>.obj K₂ |>.obj G)) ≅
    (G.obj <| limit K₁).obj (limit K₂) :=
  isoObjConePointsOfIsLimit G
    (limit.isLimit _) (limit.isLimit _) (limit.isLimit _) |>.symm

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- Characterize the inverse direction of the isomorphism
`PreservesLimit₂.isoLimitUncurryWhiskeringLeft₂` w.r.t. the canonical maps to the limit. -/
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f3d4416022e30e1d32fd0b38e5bab20cb4352a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
