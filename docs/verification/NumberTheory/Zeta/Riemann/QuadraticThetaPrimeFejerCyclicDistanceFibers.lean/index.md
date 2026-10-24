# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceFibers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c76e95b9a57f6e3ea900caec5a8147a54d2311c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c76e95b9a57f6e3ea900caec5a8147a54d2311c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFactorFourPropagation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclicFejerDistance_le_twoX](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/declarations/cyclicfejerdistance-le-twox--95cac23f6445d532fd25285a.md) | 13 | `result-track:95cac23f6445d532fd25285ae443300b53215d34597718b98b1ceb3c12ba9afa` |
| 2 | `theorem` | [cyclicFejerDistance_eq_imp_boundary_pair](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/declarations/cyclicfejerdistance-eq-imp-boundary-pair--68bebace45561838eab677bc.md) | 28 | `result-track:68bebace45561838eab677bc16bec1821d6ddc896381033282990042fe2b8391` |
| 3 | `def` | [cyclicFejerDistanceFiber](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/declarations/cyclicfejerdistancefiber--f8b30746f1e635d85078fc93.md) | 62 | `declaration-track:f8b30746f1e635d85078fc9334e7219dedc784ef16fc199299d64788e4bdc6f7` |
| 4 | `theorem` | [cyclicFejerDistanceFiber_subset_pair](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/declarations/cyclicfejerdistancefiber-subset-pair--07b333fc63e26ecf92dd49a7.md) | 68 | `result-track:07b333fc63e26ecf92dd49a7b2babc1a8632035ceb8b5dd3448fa80baee198a5` |
| 5 | `theorem` | [cyclicFejerDistanceFiber_card_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/declarations/cyclicfejerdistancefiber-card-le-two--a893527fb5bbb41439ada89d.md) | 82 | `result-track:a893527fb5bbb41439ada89d1e1bdb9bc99473b99b7dc435417aa9fcb4c9845b` |
| 6 | `structure` | [CyclicDistanceFiberData](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/declarations/cyclicdistancefiberdata--60f8af4b2fcd52fb8ba2c498.md) | 93 | `declaration-track:60f8af4b2fcd52fb8ba2c498498b0aaa94bdd5079c82ca6a435cd12d814c1877` |
| 7 | `def` | [cyclicDistanceFiberData](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceFibers.lean/declarations/cyclicdistancefiberdata--10e04f7609b485a969b28328.md) | 102 | `declaration-track:10e04f7609b485a969b283282c72ea533f14f3d87c10658a0c2f6e0a908670db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
