# Verification target: GRWTSK.Algebra.FieldTheory.GaloisObservation.Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40011d4e6fea9c22db709b59ff9590a2c7b5eb07",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40011d4e6fea9c22db709b59ff9590a2c7b5eb07`.

Source path: `GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Observation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduction](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/reduction--5815e7cc13b2e21a117f198a.md) | 23 | `declaration-track:5815e7cc13b2e21a117f198a908743709c8eca4909d33813c26114276ae9931b` |
| 2 | `structure` | [GoodPrimeFactorization](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/goodprimefactorization--dfcf67b1bb9716ea1099c818.md) | 28 | `declaration-track:dfcf67b1bb9716ea1099c818dfee64870a0691b7f88763061fb9b0bf1e016ea9` |
| 3 | `def` | [factorDegrees](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/factordegrees--dfad32b478213fd9500fc47e.md) | 46 | `declaration-track:dfad32b478213fd9500fc47e60637ad19c5db7d5a41d5ce423780152c17a7f85` |
| 4 | `def` | [fullCycleType](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/fullcycletype--b70357b17a69987d50a54184.md) | 51 | `declaration-track:b70357b17a69987d50a541843d21a38d176e8e80bfae532dc16da5f8aae73836` |
| 5 | `theorem` | [full_cycle_type_identity](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/full-cycle-type-identity--b1efab014237fcec8c999537.md) | 56 | `result-track:b1efab014237fcec8c999537204493229ecb8fd91ca088637dd42c40e0f501ed` |
| 6 | `theorem` | [full_cycle_type_sum](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/full-cycle-type-sum--a0749250e26427b40f5c84b6.md) | 61 | `result-track:a0749250e26427b40f5c84b626c07f02b0baa12074f3b78a66b264de3b1b19f8` |
| 7 | `structure` | [FactorCycleWitness](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/factorcyclewitness--f59ff28734efe90e2096fe09.md) | 69 | `declaration-track:f59ff28734efe90e2096fe09e55b1395296593f79e440dfaee73ee8739f5bedd` |
| 8 | `theorem` | [factor_degrees_identify_cycles](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/factor-degrees-identify-cycles--e1270bcdb042b70af18204d2.md) | 91 | `result-track:e1270bcdb042b70af18204d2d82a81aef9f46394f08b6f78dfc85cce5fd3e5e8` |
| 9 | `theorem` | [cycle_observation_does_not_determine_group](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/declarations/cycle-observation-does-not-determine-group--a054aac8fa3a121712138a13.md) | 99 | `result-track:a054aac8fa3a121712138a13c0b97201db0a1d05420dce6208a8eb48c1498b92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
