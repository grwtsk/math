# Verification target: GRWTSK.MeasureTheory.Integral.FinitePrimeTranslationEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694ff6f514585947ee3189c4b08b428338f7672e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694ff6f514585947ee3189c4b08b428338f7672e`.

Source path: `GRWTSK/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean.json)

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
| 1 | `theorem` | [atom_zero_of_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/atom-zero-of-nonpositive--823bdf56d06b2b7d3a8374fa.md) | 16 | `result-track:823bdf56d06b2b7d3a8374fa91a4679907f2fd1b314d53df4b30e155e3af74a1` |
| 2 | `theorem` | [primeState_zero_of_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/primestate-zero-of-nonpositive--77e6244f090de18530909971.md) | 26 | `result-track:77e6244f090de18530909971f08265c15e2c85780c2e7a3834945edf4a8f9a49` |
| 3 | `theorem` | [primeState_causal](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/primestate-causal--c46c006deef2d38dc99ba982.md) | 34 | `result-track:c46c006deef2d38dc99ba98229c5e3ca10ce2d6e543b9d2a56436ba2ea10e454` |
| 4 | `theorem` | [primeState_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/primestate-continuous--ebbf40bb95ec7caa918d22d7.md) | 38 | `result-track:ebbf40bb95ec7caa918d22d7f1020679b7e774413bca4f98d516210d6ddfb2af` |
| 5 | `theorem` | [shift_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/shift-continuous--ecf0bf010d4aabaa7a2cb329.md) | 50 | `result-track:ecf0bf010d4aabaa7a2cb3293f980db57d6579324a28c1cea4b30d490329ca89` |
| 6 | `theorem` | [shifted_source_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/shifted-source-continuous--4714bc1be353307b92af16b4.md) | 64 | `result-track:4714bc1be353307b92af16b4a0c953f9e8aed1876076e03f7285a67367d4d2cc` |
| 7 | `theorem` | [source_correlations_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/source-correlations-integrable--14806752c6d510b528c0a574.md) | 69 | `result-track:14806752c6d510b528c0a574b0b711ce699fdb1cb5d5d53326c78b28d509feec` |
| 8 | `def` | [sourceEnergy](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/sourceenergy--315baa27850ed0e85bb7b32e.md) | 76 | `declaration-track:315baa27850ed0e85bb7b32ecdd37e45b8430cba3a962983798fad062f342ecc` |
| 9 | `def` | [sourceCorrelation](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/sourcecorrelation--eb3ca1f3f864eb169a3ff905.md) | 79 | `declaration-track:eb3ca1f3f864eb169a3ff905d69c84123586da1ca7939572fd69a87452b9bef3` |
| 10 | `theorem` | [source_block_action_energy_exact](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/source-block-action-energy-exact--bd17987de3c4a787561cb8fe.md) | 84 | `result-track:bd17987de3c4a787561cb8feeb3362355f0a13e14e124feaf0bb4f72979971f1` |
| 11 | `theorem` | [source_block_energy_exact](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/source-block-energy-exact--32f595512f8fbbf2e621d67d.md) | 96 | `result-track:32f595512f8fbbf2e621d67d4366885f418e1bff7d73d628ead7c9ea56e2e133` |
| 12 | `theorem` | [source_square_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/source-square-integrableon--945500c774654aebc96419bb.md) | 107 | `result-track:945500c774654aebc96419bbf0d6b39488c5b9bc8c520e7d65931343c06a998d` |
| 13 | `theorem` | [restrict_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/restrict-eq-indicator--2d135b1544253719a719cba4.md) | 111 | `result-track:2d135b1544253719a719cba4d427e4daef656fe836dde0625f56897ae339c6f7` |
| 14 | `theorem` | [restrict_square_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/restrict-square-eq-indicator--a45d61b9f9972b1e80520164.md) | 116 | `result-track:a45d61b9f9972b1e805201648ac7d6182c1fc514418e2f76547833b6ecc1592e` |
| 15 | `theorem` | [restricted_source_square_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/restricted-source-square-integrable--ad895fc29f0ba8d577f467f7.md) | 121 | `result-track:ad895fc29f0ba8d577f467f74700c0175bef7ee2781e169535d91566f7dc68b1` |
| 16 | `theorem` | [restricted_source_memLp_two](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/restricted-source-memlp-two--3222511148c210468379e42d.md) | 128 | `result-track:3222511148c210468379e42dcf8abf16f05b16cd4091d9b2e25d12c9740bc8ac` |
| 17 | `theorem` | [integral_restricted_source_square](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/integral-restricted-source-square--3f02dcb6d97c2324c025fa04.md) | 136 | `result-track:3f02dcb6d97c2324c025fa043d6248c6262e80d98d83273bebba7bf1b77d5872` |
| 18 | `theorem` | [sourceEnergy_eq_l2_norm_sq](../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/declarations/sourceenergy-eq-l2-norm-sq--e22ab555786aec29d98a5969.md) | 143 | `result-track:e22ab555786aec29d98a5969fea4755519a7436fc935753cd2808784fb7e39a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
