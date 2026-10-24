# pullbackLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:953bfdf1dd30f10d633bafe2666e4da33f0fbeb40c26f81f6e0f350bad6161f6",
  "kind": "def",
  "lexical_name": "pullbackLimitCone",
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
  "slug": "pullbacklimitcone--863c5da7f36c6c9732f9d8d2",
  "source": {
    "blob": "3201ccbcfe5336b07657ecf009e7906d81565928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 667,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:863c5da7f36c6c9732f9d8d2c018202356e1111ca25386a281d20c51930bdb89",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:953bfdf1dd30f10d633bafe2666e4da33f0fbeb40c26f81f6e0f350bad6161f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackLimitCone (f : X ⟶ Z) (g : Y ⟶ Z) : Limits.LimitCone (cospan f g) where
  cone := pullbackCone f g
  isLimit :=
    PullbackCone.isLimitAux _ (fun s x => ⟨⟨s.fst x, s.snd x⟩, congr_fun s.condition x⟩)
      (by aesop) (by aesop) fun s m w =>
      funext fun x =>
        Subtype.ext <|
          Prod.ext (congr_fun (w WalkingCospan.left) x) (congr_fun (w WalkingCospan.right) x)
#align category_theory.limits.types.pullback_limit_cone CategoryTheory.Limits.Types.pullbackLimitCone

/-- The pullback cone given by the instance `HasPullbacks (Type u)` is isomorphic to the
explicit pullback cone given by `pullbackLimitCone`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3201ccbcfe5336b07657ecf009e7906d81565928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
