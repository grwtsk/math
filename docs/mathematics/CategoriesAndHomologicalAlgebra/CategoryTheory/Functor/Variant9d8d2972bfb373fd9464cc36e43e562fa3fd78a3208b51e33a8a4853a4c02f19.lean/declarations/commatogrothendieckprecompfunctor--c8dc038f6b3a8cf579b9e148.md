# commaToGrothendieckPrecompFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:299f0215c09dbba633e9f5501ed34f91133c441dea19804d1d99ba025b6739a0",
  "kind": "def",
  "lexical_name": "commaToGrothendieckPrecompFunctor",
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
  "slug": "commatogrothendieckprecompfunctor--c8dc038f6b3a8cf579b9e148",
  "source": {
    "blob": "551c20bb4cd9932ea52a92e9c75b7f8b8991b94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8dc038f6b3a8cf579b9e1485fd46725733745bb02a498c5f65725c7badbc8cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:299f0215c09dbba633e9f5501ed34f91133c441dea19804d1d99ba025b6739a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commaToGrothendieckPrecompFunctor : Comma L R ⥤ Grothendieck (R ⋙ functor L) where
  obj X := ⟨X.right, mk X.hom⟩
  map f := ⟨f.right, homMk f.left⟩
  map_id X := Grothendieck.ext _ _ rfl (by simp)
  map_comp f g := Grothendieck.ext _ _ rfl (by simp)

set_option backward.isDefEq.respectTransparency false in
/-- For `L : C ⥤ D`, taking the Grothendieck construction of `CostructuredArrow.functor L`
precomposed with another functor `R : E ⥤ D` results in a category which is equivalent to
the comma category `Comma L R`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551c20bb4cd9932ea52a92e9c75b7f8b8991b94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
