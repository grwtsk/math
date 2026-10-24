# Verification target: GRWTSK.Algebra.FieldTheory.GaloisObservation.Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce4aae81e6024b1cce1f43d52fa1ba6693d445c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce4aae81e6024b1cce1f43d52fa1ba6693d445c`.

Source path: `GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Observation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduction](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/reduction--772cf0de0ad9e8c6f1b11392.md) | 31 | `declaration-track:772cf0de0ad9e8c6f1b11392b7e6cc64b1f70b53f4da0c052ececdc752c92e65` |
| 2 | `structure` | [GoodPrimeFactorization](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/goodprimefactorization--4cb407ab875fa348303c3fda.md) | 36 | `declaration-track:4cb407ab875fa348303c3fda736ed744209eae3a1616f64b913127126d5841b9` |
| 3 | `def` | [factorDegrees](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/factordegrees--66df1256735981dfeb7a432d.md) | 54 | `declaration-track:66df1256735981dfeb7a432df107d3bd91a4a42f9e792f0db9fc304d5691a68c` |
| 4 | `def` | [fullCycleType](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/fullcycletype--2a3d357544237223ff5265e7.md) | 59 | `declaration-track:2a3d357544237223ff5265e7514fd17828b5c8413d1386727d9b796b1fa9d02c` |
| 5 | `theorem` | [full_cycle_type_identity](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/full-cycle-type-identity--45c086b92523281228b28a83.md) | 64 | `result-track:45c086b92523281228b28a8340c6f68073f22e9b24c6b581b9d4aae10070502a` |
| 6 | `theorem` | [full_cycle_type_sum](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/full-cycle-type-sum--2c1bd9d951c3ac3f075443d3.md) | 69 | `result-track:2c1bd9d951c3ac3f075443d3181ad6185b97327ed7ff3f348c7777c6c49d13f3` |
| 7 | `structure` | [FactorCycleWitness](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/factorcyclewitness--717ee5c851ff30ed9f67ea90.md) | 77 | `declaration-track:717ee5c851ff30ed9f67ea90f5a43019d9bbd97ec69bb0fea8715eff868f0906` |
| 8 | `theorem` | [factor_degrees_identify_cycles](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/factor-degrees-identify-cycles--e19290fa589d83b2f5aa2169.md) | 99 | `result-track:e19290fa589d83b2f5aa2169972f4f8e8a6393925708db44fdb77e0f79c81d17` |
| 9 | `theorem` | [cycle_observation_does_not_determine_group](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/declarations/cycle-observation-does-not-determine-group--322d40022b8077e245d3b14f.md) | 107 | `result-track:322d40022b8077e245d3b14f089f945373972cc8c691ab3e95119836bebd7bf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
