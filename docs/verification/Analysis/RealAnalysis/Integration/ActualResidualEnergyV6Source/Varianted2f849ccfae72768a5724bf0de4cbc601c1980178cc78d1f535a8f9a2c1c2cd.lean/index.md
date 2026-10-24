# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualResidualEnergyV6Source.Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d3adcea4cb1e5d5e30e493e86a15c8a6bc401b4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d3adcea4cb1e5d5e30e493e86a15c8a6bc401b4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/forwardhalfkernel--4ef48dd9279477299aa451be.md) | 26 | `declaration-track:4ef48dd9279477299aa451be62ac21addc42f029a8adb8dcc84e04a8086fba66` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/forwardhalfkernel-continuous--f7dc46b4eae8132473055c0a.md) | 31 | `result-track:f7dc46b4eae8132473055c0a578549eb455b96291b7f6b50a4ece340ed6d8753` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/forwardhalfkernel-hascompactsupport--bf0901a83ec70e4a1ec25ada.md) | 39 | `result-track:bf0901a83ec70e4a1ec25ada0741b643aaf4dcb468cdfb43d1a576f3a23a770a` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/forwardhalfkernel-integrable--b8ceb6584b42a1ac33a36618.md) | 61 | `result-track:b8ceb6584b42a1ac33a366182a9a16ddb8e6c0ba8ad9315b632feb87dc1ae1b9` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/sourcecorrelation-eq-plus-shift--fad8799083d25630f722ffc3.md) | 67 | `result-track:fad8799083d25630f722ffc3b384cbdc7fda27dd3430c1f6afbdc255ec21cf0d` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/negativesmoothmoment-eq-forward-integral--d73169fdbf30d07a656a27f7.md) | 75 | `result-track:d73169fdbf30d07a656a27f7ff186b0a77be890eacba8d27718ec68c70309d23` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--bbc27fe1705818ffca934b1c.md) | 87 | `result-track:bbc27fe1705818ffca934b1cf5edbcf24b9fbd3f5b3a8da903d3a2c417fef16d` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/negativesmoothmoment-eq-tail-pairing--ade2affda6ef9cee37a799eb.md) | 125 | `result-track:ade2affda6ef9cee37a799eb0b87e99cfa6a70f338c67d306655fb5bab6e9df9` |
| 9 | `theorem` | [negativeSmoothMoment_eq_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/negativesmoothmoment-eq-half-causal-energy--3b1c3ff700ee54c6923efae2.md) | 135 | `result-track:3b1c3ff700ee54c6923efae2a641752932b0410232777ce6abc8feaba82bf68d` |
| 10 | `theorem` | [negativeSmoothMoment_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/negativesmoothmoment-eq-normalized-energy--e22ba380cc37a3678dd7a466.md) | 141 | `result-track:e22ba380cc37a3678dd7a4669785c113c8193cb56b9d1c85785787409a6cc545` |
| 11 | `theorem` | [negativeSmoothMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/negativesmoothmoment-eq-rational--fa18883e1d5ac6ca6b83f620.md) | 149 | `result-track:fa18883e1d5ac6ca6b83f6203fc44055d42e695e8443698efb8c3824a3c1a1d7` |
| 12 | `theorem` | [criticalContinuousMoment_eq_neg_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/criticalcontinuousmoment-eq-neg-half-causal-energy--82f0391aa6fcabb8a80f7477.md) | 158 | `result-track:82f0391aa6fcabb8a80f747767729a614be89eb8c10e51268a2dddfce4c074cb` |
| 13 | `theorem` | [criticalContinuousMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/criticalcontinuousmoment-eq-rational--85359934416cd4e69582e4de.md) | 165 | `result-track:85359934416cd4e69582e4de32eec2216492851fd4e6196423f8442b56165c68` |
| 14 | `theorem` | [negativeSmoothMoment_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/negativesmoothmoment-pos--227bcec693636bb09834e8fe.md) | 173 | `result-track:227bcec693636bb09834e8fe82312bd8f3c832942561152ce990c9950b84a7a2` |
| 15 | `theorem` | [criticalContinuousMoment_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/criticalcontinuousmoment-lt-zero--58c8ba0a3434afc745d05826.md) | 179 | `result-track:58c8ba0a3434afc745d058263f5d6b108ab8721ad5498afc254d65712a1b591f` |
| 16 | `theorem` | [criticalContinuousMoment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/criticalcontinuousmoment-ne-zero--546d067989c4db3e4b9c17a3.md) | 185 | `result-track:546d067989c4db3e4b9c17a3cadfa8bf2fe40d6df27fb1962693ad5a9f63a89b` |
| 17 | `theorem` | [criticalContinuousMoment_strict_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/criticalcontinuousmoment-strict-bounds--e6a1f15bc11affdeab214589.md) | 189 | `result-track:e6a1f15bc11affdeab214589ab6a3dee89bb742a020125a0b7614a51e031669a` |
| 18 | `theorem` | [mertensResidual_eq_neg_causal_energy_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/mertensresidual-eq-neg-causal-energy-sub-work--0f5df8d38b3d4dd9cf282459.md) | 198 | `result-track:0f5df8d38b3d4dd9cf2824598a8408e1abc0664d9bf7b3255bf0ff10f8dc0780` |
| 19 | `theorem` | [mertensResidual_eq_rational_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/mertensresidual-eq-rational-sub-work--82fbb7965b068b620785cbda.md) | 205 | `result-track:82fbb7965b068b620785cbdac5426f4c24fbd6d0006c08464af414bcaee3b440` |
| 20 | `theorem` | [mertensResidual_lt_neg_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/mertensresidual-lt-neg-work--527769f964996fd9eaaeb4ee.md) | 212 | `result-track:527769f964996fd9eaaeb4ee27d70eff47e26cc9a2c8e1762169f722dc4c1401` |
| 21 | `theorem` | [residual_tail_of_Mangoldt_work_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/declarations/residual-tail-of-mangoldt-work-tail--1cadaf95a428a4ed2668fbe2.md) | 219 | `result-track:1cadaf95a428a4ed2668fbe2600d0f48afd0cf6f5091cad83e41b7ec886f334d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
