# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d70aa7eaaad0837560046946811c547bd5fc5266",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d70aa7eaaad0837560046946811c547bd5fc5266`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusLogHighGCDReducedDivisorTupleSet_card_cast_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/mobiusloghighgcdreduceddivisortupleset-card-cast-le--2809730eaf2e4048865ea6c5.md) | 33 | `result-track:2809730eaf2e4048865ea6c5140c17a9ea32de575f799ce59e34e9806ae28e13` |
| 2 | `theorem` | [square_div_natSqrtSucc_le_rpow_threeHalves](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/square-div-natsqrtsucc-le-rpow-threehalves--34d98deca3aa8b506abe7b16.md) | 130 | `result-track:34d98deca3aa8b506abe7b16ed8fed011a273a4f377ef26729ccd71194106d32` |
| 3 | `theorem` | [mobiusLogHighGCDReducedDivisorTupleSet_sqrt_card_cast_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/mobiusloghighgcdreduceddivisortupleset-sqrt-card-cast-le--abaf8d2daae2b301806e99a9.md) | 153 | `result-track:abaf8d2daae2b301806e99a9c7a90af5b50b4d4c474644fe37ae4b1fede010b0` |
| 4 | `theorem` | [nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_le_counting](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/nonaliasingfejermobiuslogabsolutehighgcdaggregate-le-counting--0194f601f09509fa13d5ca88.md) | 179 | `result-track:0194f601f09509fa13d5ca88d82f9195be387a8694f46d4e57fbac54fb542712` |
| 5 | `theorem` | [log_four_mul_dyadicScale_le_three_log_for_typeII](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/log-four-mul-dyadicscale-le-three-log-for-typeii--eab764f11170c9028ce94896.md) | 221 | `result-track:eab764f11170c9028ce94896525ec0bffc37330eca276e52f43fceed880eccc4` |
| 6 | `theorem` | [typeII_log_envelope_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/typeii-log-envelope-le--192f5611936abf8d0879ba8d.md) | 236 | `result-track:192f5611936abf8d0879ba8df38d1c6f895f2baee3afdb1118054ae40614c477` |
| 7 | `theorem` | [sevenEighths_absoluteHighGCDTypeII_le_exactTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/seveneighths-absolutehighgcdtypeii-le-exacttarget--fe36d7ddc0da47b67adf2e71.md) | 279 | `result-track:fe36d7ddc0da47b67adf2e7141a0c73923110764dcb06d81ab99f725a4eca41e` |
| 8 | `theorem` | [sevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/seveneighthsboundaryminimalabsolutehighgcdtypeiibound--38351f13ccf67ba1ad605dd6.md) | 340 | `result-track:38351f13ccf67ba1ad605dd6a75881c103c403d3db7fc7d95276c6f790e44f57` |
| 9 | `theorem` | [signedLowGCDTypeIBound_to_squarefreeGCDBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/signedlowgcdtypeibound-to-squarefreegcdbound--f30f3f8354932aba3a19275a.md) | 349 | `result-track:f30f3f8354932aba3a19275ac118d12fa64564cab2fdafa2cadff2270744ef46` |
| 10 | `theorem` | [signedLowGCDTypeIBound_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/declarations/signedlowgcdtypeibound-to-partialdiscrepancy--e3519371ddc1129320a4802f.md) | 357 | `result-track:e3519371ddc1129320a4802f9705f8d969c753039effc0791c34731ea6fb7c9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
