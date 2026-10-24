# Verification target: GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694ff6f514585947ee3189c4b08b428338f7672e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694ff6f514585947ee3189c4b08b428338f7672e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [atom_zero_of_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/atom-zero-of-nonpositive--6ca120960ab1a717ae7a1456.md) | 16 | `result-track:6ca120960ab1a717ae7a1456fd943867bc0b99b6be1f24820fdd0b9a6784bced` |
| 2 | `theorem` | [primeState_zero_of_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/primestate-zero-of-nonpositive--41d4ea40ba91e34eb7338a73.md) | 26 | `result-track:41d4ea40ba91e34eb7338a732f986c40ad1c71f32a31cec932ac1013045c71bf` |
| 3 | `theorem` | [primeState_causal](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/primestate-causal--bde53f7cb1fd1aa7d00e68b1.md) | 34 | `result-track:bde53f7cb1fd1aa7d00e68b138876203a8e4b40ec10c71c821bc0f6044b60dfd` |
| 4 | `theorem` | [primeState_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/primestate-continuous--14bfdea854e6feeb9dcfc1ff.md) | 38 | `result-track:14bfdea854e6feeb9dcfc1ff46f87abba897c13d063b4ac3d636160ed0bf433d` |
| 5 | `theorem` | [shift_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/shift-continuous--c05cece479f900134ff48fe1.md) | 50 | `result-track:c05cece479f900134ff48fe1edc29d5b17c8ada61f68174fa8a1a192d356bb91` |
| 6 | `theorem` | [shifted_source_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/shifted-source-continuous--51adb8e78c6b3a48b626bd92.md) | 64 | `result-track:51adb8e78c6b3a48b626bd92c3922652b314105afcfa3b06d5603cbb0581babb` |
| 7 | `theorem` | [source_correlations_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/source-correlations-integrable--42171777b4062cf495b2d7c1.md) | 69 | `result-track:42171777b4062cf495b2d7c13e74e2b51fdf835f150aaa0de44d9f3611ef9b6f` |
| 8 | `def` | [sourceEnergy](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/sourceenergy--1e971a4001a496554e9c8403.md) | 76 | `declaration-track:1e971a4001a496554e9c8403e7f7e269f0f3482f41458c55aefbf2468bf082c4` |
| 9 | `def` | [sourceCorrelation](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/sourcecorrelation--5823a358a25e0342e79eadee.md) | 79 | `declaration-track:5823a358a25e0342e79eadee901b169127336aeea1e5997f1b03fde501bccba1` |
| 10 | `theorem` | [source_block_action_energy_exact](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/source-block-action-energy-exact--15d11924b594cf4568b503e8.md) | 84 | `result-track:15d11924b594cf4568b503e87b3fe1e1fecbc772d41d033cb62ff24945983c2c` |
| 11 | `theorem` | [source_block_energy_exact](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/source-block-energy-exact--f1ff915e7f568e06d8cf573b.md) | 96 | `result-track:f1ff915e7f568e06d8cf573b90d0c2bcf4399bfa48522a6ca39a66a2f5950bbf` |
| 12 | `theorem` | [source_square_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/source-square-integrableon--ebbfc7381580e9537a50990e.md) | 107 | `result-track:ebbfc7381580e9537a50990ef6bc8f7be286fb864800e4aa16438243f413ff1c` |
| 13 | `theorem` | [restrict_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/restrict-eq-indicator--fc75d7e3c0a9712d09a5a291.md) | 111 | `result-track:fc75d7e3c0a9712d09a5a29146c8f11b69642af5f43583e78b0526020d3c737d` |
| 14 | `theorem` | [restrict_square_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/restrict-square-eq-indicator--d8cb99eb9f3d158b35edd86b.md) | 116 | `result-track:d8cb99eb9f3d158b35edd86b43e553e86cb20b130363e8b86a0fb22e6d2e8b30` |
| 15 | `theorem` | [restricted_source_square_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/restricted-source-square-integrable--76021f357daeae7ebcd5bb43.md) | 121 | `result-track:76021f357daeae7ebcd5bb43d57c92281a93398713f16c2da78ba06541682ffa` |
| 16 | `theorem` | [restricted_source_memLp_two](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/restricted-source-memlp-two--81d73abcf3292976bb65cbfa.md) | 128 | `result-track:81d73abcf3292976bb65cbfa17068a9c8375d78f37a0b952cd5e0946bc7f1667` |
| 17 | `theorem` | [integral_restricted_source_square](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/integral-restricted-source-square--a258e7564543f31b27e30f3e.md) | 136 | `result-track:a258e7564543f31b27e30f3eff2d72555a879735d5610f807061f27128163bff` |
| 18 | `theorem` | [sourceEnergy_eq_l2_norm_sq](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/declarations/sourceenergy-eq-l2-norm-sq--bf1a44ac50a426318023b889.md) | 143 | `result-track:bf1a44ac50a426318023b889e7eddef60ffb2dce07132257c1d61c97b364a0c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
