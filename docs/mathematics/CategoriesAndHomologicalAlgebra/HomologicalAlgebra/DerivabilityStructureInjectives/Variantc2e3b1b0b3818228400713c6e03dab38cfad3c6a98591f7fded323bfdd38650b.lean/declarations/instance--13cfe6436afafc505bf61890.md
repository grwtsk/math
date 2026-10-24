# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c28298ede051d41d2750830caec2dd91917b0ce392eb71d5537bc2866bda5cf2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--13cfe6436afafc505bf61890",
  "source": {
    "blob": "f0013b3c9ea35c58b7eea99d6d03c123e1fbcd11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13cfe6436afafc505bf61890f4e1858ea08b30246e9f6459394a729bb0be6ca8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c28298ede051d41d2750830caec2dd91917b0ce392eb71d5537bc2866bda5cf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance :
    (HomotopyCategory.Plus.quotient (InjectiveObject C)).IsLocalization
      ((CochainComplex.Plus.quasiIso C).inverseImage
      (InjectiveObject.ι C).mapCochainComplexPlus) := by
  rw [inverseImage_quasiIso_mapCochainComplexPlus_injectiveObjectι]
  infer_instance

namespace isRightDerivabilityStructure

/-! The following private definitions are used to deduce that
`HomotopyCategory.Plus.localizerMorphism` is a right derivability structure
from the fact that `CochainComplex.Plus.localizerMorphism` is.

The strategy is to observe that the following commutative square
of localizer morphisms gives a Guitart exact square:
```
                           CochainComplex.Plus.localizerMorphism C
CochainComplex.Plus (InjectiveObject C) ----------> CochainComplex.Plus C
     |                                                        |
 L C |                                                        | R C
     v                                                        v
HomotopyCategory.Plus (InjectiveObject C) --------> HomotopyCategory.Plus C
                           HomotopyCategory.Plus.localizerMorphism C
```
That the square is Guitart exact will follow from the lemma
`TwoSquare.GuitartExact.quotient_of_nonempty_rightHomotopy`
from the file `Mathlib/CategoryTheory/GuitartExact/Quotient.lean`.

-/

open MorphismProperty

variable (C) in
/-- The left localizer morphism in the Guitart exact square `iso`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0013b3c9ea35c58b7eea99d6d03c123e1fbcd11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
