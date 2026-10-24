# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeanValue.Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29c357cf0e2b1d9bde45be61d96d6a760bf04d8b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29c357cf0e2b1d9bde45be61d96d6a760bf04d8b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.HahnBanach` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_ae_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/declarations/exists-eq-const-mul-intervalintegral-of-ae-nonneg--fc108bac9b00dbd602b2d4fd.md) | 80 | `result-track:fc108bac9b00dbd602b2d4fde9e5ec212d5816d2fd77701dfaa7bd2731bd9352` |
| 2 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/declarations/exists-eq-const-mul-intervalintegral-of-nonneg--a213165a2362034a4f52ec4d.md) | 109 | `result-track:a213165a2362034a4f52ec4d6d4b27d1dfeff060735389aba5ed0100ba8d964d` |
| 3 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_nonneg_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/declarations/exists-eq-const-mul-intervalintegral-of-nonneg-of-antitoneon--e781f4e27e86312a976ed8a1.md) | 123 | `result-track:e781f4e27e86312a976ed8a16e14a9ddc44a2ed73200f57e431dad121d937245` |
| 4 | `theorem` | [exists_eq_const_mul_intervalIntegral_of_nonneg_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/declarations/exists-eq-const-mul-intervalintegral-of-nonneg-of-monotoneon--78b0bcd146c9b28bcaeb64ba.md) | 195 | `result-track:78b0bcd146c9b28bcaeb64ba5d575f6192a2d16a84aedd2784cd9239607d9da6` |
| 5 | `theorem` | [exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/declarations/exists-le-const-mul-norm-intervalintegral-of-nonneg-of-antitoneon--8718874ffae66a157a2e0b0e.md) | 211 | `result-track:8718874ffae66a157a2e0b0e9f96a946a8ec967efbde4cdf5284e8d426390662` |
| 6 | `theorem` | [exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/declarations/exists-le-const-mul-norm-intervalintegral-of-nonneg-of-monotoneon--2a9bedf3c9dbf93a68f70bcb.md) | 243 | `result-track:2a9bedf3c9dbf93a68f70bcb66763df36fcd362bab3aa5cde0892e261e4b3f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
