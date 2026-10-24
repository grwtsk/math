# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WithDensity.Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84bc1fddd889e8bf7cea60414b37e8c9d66b263d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84bc1fddd889e8bf7cea60414b37e8c9d66b263d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity--87ecaadd7a9c48698aced242.md) | 52 | `declaration-track:87ecaadd7a9c48698aced2426311f4c98f9e441e3ad841a8770b4148b28d5864` |
| 2 | `theorem` | [withDensity_of_not_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-of-not-measurable--493ea5eef0272af38d3c9500.md) | 61 | `result-track:493ea5eef0272af38d3c95006e737548103d1fa042120642fb7271409d6b6ed5` |
| 3 | `theorem` | [withDensity_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-apply--592fca1f42d0881a27e39fb5.md) | 64 | `result-track:592fca1f42d0881a27e39fb58a4b8f3ded070f42ad1dc71f8c9e810da3c806e1` |
| 4 | `theorem` | [withDensity_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-apply--d1518c3957516aeb48cadfc9.md) | 71 | `result-track:d1518c3957516aeb48cadfc979f92fe763381622369378199bd3fc813614ccc9` |
| 5 | `lemma` | [withDensity_congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-congr-ae--3a72ad8d09f56bf904e2d9c9.md) | 76 | `result-track:3a72ad8d09f56bf904e2d9c93eaa037b45b54a97504d9f78733f7128fff25f7c` |
| 6 | `lemma` | [withDensity_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-absolutelycontinuous--7e4a9e64d191f48cf3bad1a3.md) | 83 | `result-track:7e4a9e64d191f48cf3bad1a31c840db9dd57eb918cf4e652cef2d11a11b14111` |
| 7 | `lemma` | [withDensity_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-one--9e166755061b81cfd7d0989e.md) | 93 | `result-track:9e166755061b81cfd7d0989e2303e23deda11fb9179ed6d641b75abf3010a1ce` |
| 8 | `lemma` | [withDensity_one'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-one--cf649150982c041af56c5536.md) | 98 | `result-track:cf649150982c041af56c55360a5497ef8b0d0c9ec53c21dbc1a37c6a31584852` |
| 9 | `lemma` | [withDensity_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-zero--fe65b2276a0787a7671868fb.md) | 102 | `result-track:fe65b2276a0787a7671868fb204aab325bdece4d775ededdad900764351d7610` |
| 10 | `lemma` | [withDensity_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-zero--e7a96ce9e9551436947088d0.md) | 107 | `result-track:e7a96ce9e9551436947088d021cb260b5b9c4a3053ae1bab656bc723bfb2a6e3` |
| 11 | `theorem` | [lintegral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/lintegral-withdensity--ffe1561433cbd5c544233384.md) | 110 | `result-track:ffe1561433cbd5c5442333845e15cf1deb5296ef8e24148b21d4e215bad30149` |
| 12 | `theorem` | [integral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/integral-withdensity--124a6e271b81a6b956d24b42.md) | 117 | `result-track:124a6e271b81a6b956d24b4288fb29fbd0181bcf5eb9c5001f73d5417a653793` |
| 13 | `theorem` | [withDensity_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-add-left--fe2941e79191c84991038125.md) | 125 | `result-track:fe2941e79191c849910381258c4be05986dc8c8869ae09aa272470c175c6e26f` |
| 14 | `theorem` | [withDensity_kernel_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-kernel-sum--5a65dfaf09be9aa7ecd12fa4.md) | 134 | `result-track:5a65dfaf09be9aa7ecd12fa44189989ab4aa039a0edc3693ffd0e734d0efae95` |
| 15 | `lemma` | [withDensity_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-add-right--63e14e124c569a074b726975.md) | 144 | `result-track:63e14e124c569a074b726975d86657515069e46f97f6565a3ab1a5ace4a67d79` |
| 16 | `lemma` | [withDensity_sub_add_cancel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-sub-add-cancel--c683edae804f09d9187fbd36.md) | 153 | `result-track:c683edae804f09d9187fbd367237babff14177ab919161a012ad3ab768774b9f` |
| 17 | `theorem` | [withDensity_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-tsum--857f8871429496401c479404.md) | 163 | `result-track:857f8871429496401c479404967ee20bb45a655874b243b63318284502eb1d56` |
| 18 | `theorem` | [isFiniteKernel_withDensity_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/isfinitekernel-withdensity-of-bounded--d2a7342d44302c78ff9030d5.md) | 187 | `result-track:d2a7342d44302c78ff9030d56b6458f2f9f336bd3fe7c633dd9e821d5fa36f66` |
| 19 | `theorem` | [isSFiniteKernel_withDensity_of_isFiniteKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/issfinitekernel-withdensity-of-isfinitekernel--9416d1ef6c7644d767e8a766.md) | 203 | `result-track:9416d1ef6c7644d767e8a76657425e3253b47c36be81c13a113568bf2e4673ef` |
| 20 | `theorem` | [IsSFiniteKernel.withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/issfinitekernel-withdensity--f217a08a02eb4673cf889e8a.md) | 263 | `result-track:f217a08a02eb4673cf889e8a349c18b7b1d2657b63d64396975eb8e056f6026e` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/instance--5e916dbf58d6da019ffcd2d0.md) | 274 | `declaration-track:5e916dbf58d6da019ffcd2d0d7c40b2e27656ef77a94a288663c4bc81fc2050d` |
| 22 | `lemma` | [withDensity_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/declarations/withdensity-mul--8534def0ce6768532ca9edd4.md) | 278 | `result-track:8534def0ce6768532ca9edd46fd3455abdbe7b917fc4886d1945335588eb425a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
