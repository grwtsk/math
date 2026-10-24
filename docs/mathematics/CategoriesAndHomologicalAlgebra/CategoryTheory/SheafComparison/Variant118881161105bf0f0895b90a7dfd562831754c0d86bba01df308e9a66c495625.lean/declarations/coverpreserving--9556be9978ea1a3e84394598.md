# coverPreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22b7c209-e8f9-839f-10c4-1a365cb4439a",
  "kind": "lemma",
  "lexical_name": "coverPreserving",
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
  "slug": "coverpreserving--9556be9978ea1a3e84394598",
  "source": {
    "blob": "1a352131e80e524e1e1e8ca276cd61a771d849dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9556be9978ea1a3e843945984b7a87bdd9e5e6d36753841a702de5e9eaeef88d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22b7c209-e8f9-839f-10c4-1a365cb4439a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverPreserving : haveI := F.reflects_preregular
    CoverPreserving (regularTopology _) (regularTopology _) F :=
  IsDenseSubsite.coverPreserving _ _ _

section SheafEquiv

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D] (F : C ⥤ D)
  [F.PreservesEffectiveEpis] [F.ReflectsEffectiveEpis]
  [F.Full] [F.Faithful]
  [Preregular D]
  [F.EffectivelyEnough]

/--
The equivalence from regular sheaves on `C` to regular sheaves on `D`, given a fully faithful
functor `F : C ⥤ D` to a preregular category, which preserves and reflects effective
epimorphisms and satisfies `F.EffectivelyEnough`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a352131e80e524e1e1e8ca276cd61a771d849dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
