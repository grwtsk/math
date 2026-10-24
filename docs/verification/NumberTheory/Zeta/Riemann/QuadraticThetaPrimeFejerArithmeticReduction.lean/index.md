# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47f16e128dccf02f1fca4bd21a19ebdabe22d2c0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47f16e128dccf02f1fca4bd21a19ebdabe22d2c0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteOrthogonality`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeDiscrepancyAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/primediscrepancyatom--bd115d5d7a85e7ac50db163a.md) | 14 | `declaration-track:bd115d5d7a85e7ac50db163ad0c72a0a38c7a8bb63ce97c76fd2924b90291e73` |
| 2 | `def` | [sharpPrefixWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/sharpprefixweight--2c2a0bc9de20a2d2b91d4879.md) | 18 | `declaration-track:2c2a0bc9de20a2d2b91d48791c445ff494ce33d8b14ac6d2d24197832dfe50cf` |
| 3 | `theorem` | [sharpPrimePrefixDiscrepancy_eq_atom_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/sharpprimeprefixdiscrepancy-eq-atom-sum--a4983631fefa1345d3ebd917.md) | 23 | `result-track:a4983631fefa1345d3ebd91737facdd619178a97eb08af94e84c1dd492e2be79` |
| 4 | `theorem` | [sharpPrimePrefixDiscrepancy_eq_ambient_weighted_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/sharpprimeprefixdiscrepancy-eq-ambient-weighted-sum--39651a6084c46b22cbbcd0af.md) | 46 | `result-track:39651a6084c46b22cbbcd0af751013f00c6eac326a7be9c8df5926dbb53dfe10` |
| 5 | `theorem` | [nonAliasingPrimePrefixFejerOperator_eq_atom_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/nonaliasingprimeprefixfejeroperator-eq-atom-sum--2d774f346fa0da743cd51ca1.md) | 70 | `result-track:2d774f346fa0da743cd51ca1232a0d9ef16a8b36b7a8b4d412d01223650e82f0` |
| 6 | `theorem` | [nonAliasingPrimePrefixFejerOperator_error_eq_atom_weight_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/nonaliasingprimeprefixfejeroperator-error-eq-atom-weight-error--c8619395145ac4eee0149789.md) | 92 | `result-track:c8619395145ac4eee01497897cbaa2501a5fd96cd5f3ef396ca1a594b1ac08fb` |
| 7 | `theorem` | [primeDiscrepancyAtom_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/primediscrepancyatom-abs-le--adb47c2985dcad63d6f61ad9.md) | 110 | `result-track:adb47c2985dcad63d6f61ad9367fe15a3a060229a21090a66e27a45e00673db4` |
| 8 | `def` | [nonAliasingFejerSharpStepL1Error](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/nonaliasingfejersharpstepl1error--400404a25a3e911f00d47bb2.md) | 144 | `declaration-track:400404a25a3e911f00d47bb25e579388b0e582ec6ab13a59446bf677cf0bd985` |
| 9 | `theorem` | [nonAliasingPrimePrefixFejerOperator_error_le_L1](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/nonaliasingprimeprefixfejeroperator-error-le-l1--2cbdd689b06796539f357554.md) | 152 | `result-track:2cbdd689b06796539f357554f53bf2197a27716d51d7aeafbcedc8d118253d08` |
| 10 | `def` | [NonAliasingFejerSharpStepL1FirstMomentClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/nonaliasingfejersharpstepl1firstmomentclaim--8d0f6030a4ce8219c76a7a3e.md) | 193 | `declaration-track:8d0f6030a4ce8219c76a7a3e8dda6b7b479a6d395d80d688b052d39f6a0778ff` |
| 11 | `def` | [NonAliasingPrimePrefixFejerFirstMomentComparisonCorrected](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/nonaliasingprimeprefixfejerfirstmomentcomparisoncorrected--ebaa545cb8e013e3a2d8c6a6.md) | 204 | `declaration-track:ebaa545cb8e013e3a2d8c6a6db3c014361d7d0701badf2d4b4680c6784b12aa2` |
| 12 | `theorem` | [sharpStepL1FirstMoment_to_arithmeticComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/declarations/sharpstepl1firstmoment-to-arithmeticcomparison--33d0bf8daf49b790ce876913.md) | 216 | `result-track:33d0bf8daf49b790ce876913a625c68576f35f7a448bfb8f2bc7a5828bf9973c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
