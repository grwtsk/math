# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PowerSums.Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bf05b03b9bd492f525ac242ba339d7bae1fb443",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bf05b03b9bd492f525ac242ba339d7bae1fb443`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.Abel` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sdiv](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/sdiv--842de781644f6ff7c4d9b323.md) | 28 | `declaration-track:842de781644f6ff7c4d9b3234adbfc5e04f1dfa3cf776f67d5b2c2d1d3bc7fb4` |
| 2 | `lemma` | [Sdiv_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/sdiv-nonneg--05b5825c79d90d8349d1297a.md) | 30 | `result-track:05b5825c79d90d8349d1297a4b145ebae893cfd75f6120d7eb1df9b7cbd021c0` |
| 3 | `lemma` | [one_le_floor_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/one-le-floor-exp--5374c6c401be661b3177815c.md) | 33 | `result-track:5374c6c401be661b3177815c0441833348c46097435b7793af4f94a58442f954` |
| 4 | `lemma` | [log_le_of_mem_Ioc_floor_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/log-le-of-mem-ioc-floor-exp--9b07003a18864b9338388db5.md) | 36 | `result-track:9b07003a18864b9338388db5fb72e109ee59ef2d52591ca0a45d4bde80c87a34` |
| 5 | `lemma` | [log_nonneg_of_mem_Ioc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/log-nonneg-of-mem-ioc--3076c58ca779ab884fb6a9f0.md) | 43 | `result-track:3076c58ca779ab884fb6a9f08a29509c22756e805a9a6f676e408963b06ff4ac` |
| 6 | `lemma` | [floor_exp_div](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/floor-exp-div--bd5651dd0f543ebad79d63ab.md) | 46 | `result-track:bd5651dd0f543ebad79d63ab4bca716658592685e6316d4a32df25a51b19e703` |
| 7 | `lemma` | [Sdiv_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/sdiv-one--eac7fdece9154ec228bbc4c4.md) | 51 | `result-track:eac7fdece9154ec228bbc4c47426b4c353f17ab48baa2a79fc2b0846f328da08` |
| 8 | `lemma` | [Sdiv_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/sdiv-mul--e82b94dea92b78a0ff2bd88e.md) | 60 | `result-track:e82b94dea92b78a0ff2bd88e91ab34dfa13eb1dab4b97c1ded37a3f219521b9c` |
| 9 | `lemma` | [integral_const_sub_pow](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/integral-const-sub-pow--01dae9a7f849a8cd6f6d1c76.md) | 73 | `result-track:01dae9a7f849a8cd6f6d1c76be4cf717959fa03d15eb34c5df2edeab072e82b5` |
| 10 | `lemma` | [pow_add_mul_pow_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/pow-add-mul-pow-le--6e8aad4dac4a78bf78cbfa33.md) | 79 | `result-track:6e8aad4dac4a78bf78cbfa335f6c93fffd902a7ec804379b2f77436e71028233` |
| 11 | `theorem` | [Sdiv_lamPow_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/sdiv-lampow-le--1ea0f5ccf40b917e123e3033.md) | 94 | `result-track:1ea0f5ccf40b917e123e3033d75f46aea9ffb1dbe0554c42e0dc31856b77ff76` |
| 12 | `lemma` | [Sdiv_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/sdiv-mono--b82cc9cdb70137c7daa19b5c.md) | 170 | `result-track:b82cc9cdb70137c7daa19b5c665494f2716399cc73a5dd6588af16bcaf438f32` |
| 13 | `lemma` | [Sdiv_lam_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/declarations/sdiv-lam-le--8ac1fad0cdf90c6e9922991c.md) | 178 | `result-track:8ac1fad0cdf90c6e9922991cf325506080109baeb0229bfc3dc71575bcc8d041` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
