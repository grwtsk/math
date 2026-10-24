# Verification target: GRWTSK.Algebra.FieldTheory.GaloisObservation.Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b69ddc4064e7ebcea351859ddcbffc60239dbb23",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b69ddc4064e7ebcea351859ddcbffc60239dbb23`.

Source path: `GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduction](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/reduction--0f310bd5b750909561be416a.md) | 23 | `declaration-track:0f310bd5b750909561be416af1f80a7fa8fcc55d80af83359530ae3ab5e8ad16` |
| 2 | `structure` | [GoodPrimeFactorization](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/goodprimefactorization--973de3814cb0222d6ded6ebe.md) | 28 | `declaration-track:973de3814cb0222d6ded6ebe59a1f9863f9e12820d89d236ee042d54ce2c638f` |
| 3 | `def` | [factorDegrees](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/factordegrees--095eb52f1f644c74b348a8bc.md) | 46 | `declaration-track:095eb52f1f644c74b348a8bc41616ba62d7b7d6dc13d2ced1748393ab39886c1` |
| 4 | `def` | [fullCycleType](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/fullcycletype--eacfef6338d8028ce31711c5.md) | 51 | `declaration-track:eacfef6338d8028ce31711c5fc3ac12ad67c4efad5f9b2fee46456a03e31a11b` |
| 5 | `theorem` | [full_cycle_type_identity](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/full-cycle-type-identity--ccedd603e674dbc7b4119665.md) | 56 | `result-track:ccedd603e674dbc7b41196659e319a5d16764e088aaecdcdd2d9cc3d68d667b0` |
| 6 | `theorem` | [full_cycle_type_sum](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/full-cycle-type-sum--e9829661d026b88eb5e87c67.md) | 61 | `result-track:e9829661d026b88eb5e87c67fc39a83e8adfa824b5b7b51d3d7494a8b4bc36eb` |
| 7 | `structure` | [FactorCycleWitness](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/factorcyclewitness--8e09bc5ed24e7177b411d5ea.md) | 69 | `declaration-track:8e09bc5ed24e7177b411d5eaf55d533fe5ea6e0d7aaf03be09fccbdb2e52bd0b` |
| 8 | `theorem` | [factor_degrees_identify_cycles](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/factor-degrees-identify-cycles--635d256de5582d67c5c5843c.md) | 91 | `result-track:635d256de5582d67c5c5843c24ecf9a6c09bd3c3e6a813145bb93f650c826ea4` |
| 9 | `theorem` | [cycle_observation_does_not_determine_group](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/declarations/cycle-observation-does-not-determine-group--50bd08890f19d67716a5848f.md) | 99 | `result-track:50bd08890f19d67716a5848f96fb7ddbcc8b574194738117a0334df400c08818` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
