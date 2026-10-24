# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SeamL.Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3ea63e64d7797979babbd0b3690aa95ded64f2b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Statement` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ne_one_of_primitive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/ne-one-of-primitive--6246b3df828a1c5073c41938.md) | 49 | `result-track:6246b3df828a1c5073c41938cdc66b818df26067b00c9e5ed73da4ed192cd0b7` |
| 2 | `lemma` | [inv_ne_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/inv-ne-one--7c6acb767bc888fbb71ef0f6.md) | 55 | `result-track:7c6acb767bc888fbb71ef0f64d7b3adf88f81d0448468e1b31408f4b8688236d` |
| 3 | `lemma` | [LFunction_two_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/lfunction-two-ne-zero--b677aa12fb649cd2c976e892.md) | 58 | `result-track:b677aa12fb649cd2c976e8921c0cb3c2e03a7010cb5a247d2a83dc397f3b587a` |
| 4 | `lemma` | [LFunction_analyticOnNhd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/lfunction-analyticonnhd--088ccf7afc89ee8af877479c.md) | 61 | `result-track:088ccf7afc89ee8af877479cb02b963c1d1a9086e5e59fe5cd4233d15c72d8e2` |
| 5 | `lemma` | [LFunction_conj_of_one_lt_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/lfunction-conj-of-one-lt-re--4e22b955b572211746426334.md) | 66 | `result-track:4e22b955b5722117464263346cc08e9527fe91bd6eee458a9862ee9fb9c30094` |
| 6 | `theorem` | [LFunction_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/lfunction-conj--5ea9f829f9d6600b2d6a1cca.md) | 95 | `result-track:5ea9f829f9d6600b2d6a1ccad923815ff75908f682f97dedbdc27218864a981b` |
| 7 | `theorem` | [analyticOrderAt_LFunction_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/analyticorderat-lfunction-conj--f4c4933ab5c71b0aad509827.md) | 118 | `result-track:f4c4933ab5c71b0aad509827c854881f241b157ba9dc6821da9374c0cb07d8f9` |
| 8 | `lemma` | [gammaFactor_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/gammafactor-analyticat--5d3eabd472e8f9f4f682eeb2.md) | 132 | `result-track:5d3eabd472e8f9f4f682eeb2ba15f272982877f10ea368aef5691bf851f07081` |
| 9 | `lemma` | [completed_eq_gamma_mul_L](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/completed-eq-gamma-mul-l--cf1c7400174e01208fb94e27.md) | 183 | `result-track:cf1c7400174e01208fb94e2714d2c53de17ae927a47e89307095305ffee59d8a` |
| 10 | `theorem` | [rootNumber_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/rootnumber-ne-zero--0c4ff7d9df5bf863a426246b.md) | 201 | `result-track:0c4ff7d9df5bf863a426246bd3c68c77c87b785dcd8672a32e60cf3901cea23f` |
| 11 | `theorem` | [analyticOrderAt_LFunction_one_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/analyticorderat-lfunction-one-sub--1a9ba049467654315e6496c6.md) | 224 | `result-track:1a9ba049467654315e6496c63e9093e6cf75c4e675f125f0ba8cfac18c5e9571` |
| 12 | `theorem` | [L_mult_reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/l-mult-reflect--02c76359224ea260d48ce4b4.md) | 275 | `result-track:02c76359224ea260d48ce4b4f0a4fe908dd53a89466c7fbdab142f8c61c4086c` |
| 13 | `theorem` | [L_reflect_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/l-reflect-zero--3cd08d3000a43e40a699de39.md) | 287 | `result-track:3cd08d3000a43e40a699de3935c9f0ef7f9ee147bc6b8adf76e218b8b17174c5` |
| 14 | `theorem` | [LSeam_one_le_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/lseam-one-le-mult--fd15b2a77dd2defb0f37b42e.md) | 322 | `result-track:fd15b2a77dd2defb0f37b42e836ed8b781f3e658c6ca9a1920d12e5c004e81e8` |
| 15 | `theorem` | [LSeam_finite_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/lseam-finite-window--3ecaddf9baa2f8e1d01d5012.md) | 341 | `result-track:3ecaddf9baa2f8e1d01d5012de6bd360339cb21e0d59e31927456b40c837035e` |
| 16 | `theorem` | [LSeam_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/declarations/lseam-of--34911b5b34e6fd88db5b9d4b.md) | 367 | `result-track:34911b5b34e6fd88db5b9d4b762fcb789e47b2c66d7f2c05f6eff481b03df779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
