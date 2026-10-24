# ExactPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db3e6be56b188648d03cb6dca04a8930d0caae22d4126e7a3f29f7e371268cb4",
  "kind": "class",
  "lexical_name": "ExactPairing",
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
  "slug": "exactpairing--31e380a80f4675a1ff97e73e",
  "source": {
    "blob": "746038af84a0be6e682335dd41e9e9357477ce3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31e380a80f4675a1ff97e73ea91cb5c9e97411484586917315df4330aedfdc85",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db3e6be56b188648d03cb6dca04a8930d0caae22d4126e7a3f29f7e371268cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ExactPairing (X Y : C) where
  /-- Coevaluation of an exact pairing.

  Do not use directly. Use `ExactPairing.coevaluation` instead. -/
  coevaluation' : 𝟙_ C ⟶ X ⊗ Y
  /-- Evaluation of an exact pairing.

  Do not use directly. Use `ExactPairing.evaluation` instead. -/
  evaluation' : Y ⊗ X ⟶ 𝟙_ C
  coevaluation_evaluation' :
    Y ◁ coevaluation' ≫ (α_ _ _ _).inv ≫ evaluation' ▷ Y = (ρ_ Y).hom ≫ (λ_ Y).inv := by
    cat_disch
  evaluation_coevaluation' :
    coevaluation' ▷ X ≫ (α_ _ _ _).hom ≫ X ◁ evaluation' = (λ_ X).hom ≫ (ρ_ X).inv := by
    cat_disch

namespace ExactPairing

-- Porting note: as there is no mechanism equivalent to `[]` in Lean 3 to make
-- arguments for class fields explicit,
-- we now repeat all the fields without primes.
-- See https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/Making.20variable.20in.20class.20field.20explicit
variable (X Y : C)
variable [ExactPairing X Y]

/-- Coevaluation of an exact pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `746038af84a0be6e682335dd41e9e9357477ce3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
