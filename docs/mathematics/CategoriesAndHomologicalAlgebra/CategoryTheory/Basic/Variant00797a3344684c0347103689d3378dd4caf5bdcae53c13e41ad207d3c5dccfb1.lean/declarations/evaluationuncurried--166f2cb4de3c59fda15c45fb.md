# evaluationUncurried

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70aeafe0339f12a2bdc59728e8d019b836df33be5cddd585d02d4c1facf6045a",
  "kind": "def",
  "lexical_name": "evaluationUncurried",
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
  "slug": "evaluationuncurried--166f2cb4de3c59fda15c45fb",
  "source": {
    "blob": "584cfefc256e82687f679b86cc5ed8f43765cbbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:166f2cb4de3c59fda15c45fb4b06be9fb85d36e5d9d9ace311095550b32b314f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70aeafe0339f12a2bdc59728e8d019b836df33be5cddd585d02d4c1facf6045a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evaluationUncurried : C × (C ⥤ D) ⥤ D where
  obj p := p.2.obj p.1
  map := fun {x} {y} f => x.2.map f.1 ≫ f.2.app y.1
  map_comp := fun {X} {Y} {Z} f g => by
    cases g; cases f; cases Z; cases Y; cases X
    simp only [prod_comp, NatTrans.comp_app, Functor.map_comp, Category.assoc]
    rw [← NatTrans.comp_app, NatTrans.naturality, NatTrans.comp_app, Category.assoc,
      NatTrans.naturality]
#align category_theory.evaluation_uncurried CategoryTheory.evaluationUncurried

variable {C}

/-- The constant functor followed by the evaluation functor is just the identity. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `584cfefc256e82687f679b86cc5ed8f43765cbbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
