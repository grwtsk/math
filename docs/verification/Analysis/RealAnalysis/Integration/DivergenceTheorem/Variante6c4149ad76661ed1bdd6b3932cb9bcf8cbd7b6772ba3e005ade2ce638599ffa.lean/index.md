# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69c4d46311e36fe8a25ea9b759d8fefa63035017",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69c4d46311e36fe8a25ea9b759d8fefa63035017`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.DivergenceTheorem` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Integrability` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_aux₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-aux--025b98ea0e6b794c3662eacb.md) | 117 | `result-track:025b98ea0e6b794c3662eacb7e9fd6d5ae5ad8f593a730eb0eecd043774ff230` |
| 2 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable_aux₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-divergence-of-hasfderivat-off-countable-aux--2b5e18b619b7092c9147262e.md) | 150 | `result-track:2b5e18b619b7092c9147262eabed446af877ea0f927f4f51fe61ac2728f0f2bc` |
| 3 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-divergence-of-hasfderivat-off-countable--8b09b6a1fc6066d1c1f15b6b.md) | 275 | `result-track:8b09b6a1fc6066d1c1f15b6bd57e5499efc1d1ae447c248fdeeb649b85577f58` |
| 4 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-divergence-of-hasfderivat-off-countable--077d00bbffef96f64144b36c.md) | 309 | `result-track:077d00bbffef96f64144b36cefb0524058a9adbafe1b2dcaaecba200b6850a99` |
| 5 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable_of_equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-divergence-of-hasfderivat-off-countable-of-equiv--a216f96294e748dee537973b.md) | 330 | `result-track:a216f96294e748dee537973b1e5ea1a8d671ff49d34e28543cee52a4ab126a55` |
| 6 | `theorem` | [integral_eq_of_hasDerivAt_off_countable_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-eq-of-hasderivat-off-countable-of-le--362bb9b64d5fc298549a1fec.md) | 394 | `result-track:362bb9b64d5fc298549a1fec94079e95ff3178d03bc6a4d32c0323dfde950bda` |
| 7 | `theorem` | [integral_eq_of_hasDerivAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-eq-of-hasderivat-off-countable--b4bf9f5c02c697e87b52ce39.md) | 434 | `result-track:b4bf9f5c02c697e87b52ce393b040ae2f7033078813f377f4a2e1f0fb7e069b4` |
| 8 | `theorem` | [integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral-divergence-prod-icc-of-hasfderivat-off-countable-of-le--f65a6c26890a3ff2d2afac64.md) | 458 | `result-track:f65a6c26890a3ff2d2afac64edf9172f8e1b2623b5b213834e2ab830ab8fa820` |
| 9 | `theorem` | [integral2_divergence_prod_of_hasFDerivAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/declarations/integral2-divergence-prod-of-hasfderivat-off-countable--bd889e5929225f5a13189cb3.md) | 512 | `result-track:bd889e5929225f5a13189cb305691adae8cc62110d8a7020517ffdf56018d436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
