# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeanValue.Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f76854f395101a58b1e7548f09b17ebf3b6928",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f76854f395101a58b1e7548f09b17ebf3b6928`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.HahnBanach` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_ae_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/declarations/exists-eq-const-mul-intervalintegral-of-ae-nonneg--72870a9021a47c809c35545e.md) | 72 | `result-track:72870a9021a47c809c35545ea9d81c41144700b74b85b9ea382ba18b29881733` |
| 2 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/declarations/exists-eq-const-mul-intervalintegral-of-nonneg--51c45816e5ed8f26cf89ede1.md) | 101 | `result-track:51c45816e5ed8f26cf89ede185b58647868b2f9ecb35818248e9d3062b96ac53` |
| 3 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_nonneg_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/declarations/exists-eq-const-mul-intervalintegral-of-nonneg-of-antitoneon--958077b85f583b58a095d954.md) | 115 | `result-track:958077b85f583b58a095d954344f91cc0d1846eac7da53891652f636bd15e319` |
| 4 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_nonneg_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/declarations/exists-eq-const-mul-intervalintegral-of-nonneg-of-monotoneon--8772325961ff4e83092d899a.md) | 187 | `result-track:8772325961ff4e83092d899ab50906df52846a2922f010b24411742bfc48e007` |
| 5 | `theorem` | [exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/declarations/exists-le-const-mul-norm-intervalintegral-of-nonneg-of-antitoneon--148346964d0e8b872a66e9ce.md) | 203 | `result-track:148346964d0e8b872a66e9cedf41c144461209f0614818a35553acf1042723f8` |
| 6 | `theorem` | [exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/declarations/exists-le-const-mul-norm-intervalintegral-of-nonneg-of-monotoneon--a49af3119b53274fba4c01f4.md) | 235 | `result-track:a49af3119b53274fba4c01f44d4b2c751cdbd15fb0fec65691fb056899abfb5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
