# isoUniqFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3054acd4b39b13a55921032e3afce35247d945e53d7e66eef9284a7566ace65b",
  "kind": "def",
  "lexical_name": "isoUniqFunctor",
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
  "slug": "isouniqfunctor--c311d710e88e7250ef229518",
  "source": {
    "blob": "7c375399b5b6158fadd5c062a65a9eabed27d2a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 467,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant8b8fc7ba9ede19684af6461c75142e1c6b6e226ec8e1255123cd45a884d40224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c311d710e88e7250ef22951828bc4049ab70cfb61452b956ee0a29cc1400ea69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant8b8fc7ba9ede19684af6461c75142e1c6b6e226ec8e1255123cd45a884d40224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3054acd4b39b13a55921032e3afce35247d945e53d7e66eef9284a7566ace65b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoUniqFunctor (F : D₁ ⥤ D₂) (e : L₁ ⋙ F ≅ L₂) :
    F ≅ (uniq L₁ L₂ W').functor :=
  letI : Lifting L₁ W' L₂ F := ⟨e⟩
  liftNatIso L₁ W' L₂ L₂ F (uniq L₁ L₂ W').functor (Iso.refl L₂)

end Localization

section

variable {X Y : C} (f g : X ⟶ Y)

/-- The property that two morphisms become equal in the localized category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant8b8fc7ba9ede19684af6461c75142e1c6b6e226ec8e1255123cd45a884d40224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant8b8fc7ba9ede19684af6461c75142e1c6b6e226ec8e1255123cd45a884d40224.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c375399b5b6158fadd5c062a65a9eabed27d2a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
