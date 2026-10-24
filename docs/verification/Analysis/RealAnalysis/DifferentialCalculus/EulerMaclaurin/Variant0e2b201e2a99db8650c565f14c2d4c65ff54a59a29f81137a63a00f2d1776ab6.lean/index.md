# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EulerMaclaurin.Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3ca3c690fab42b9c3dacef30669f66259bf826f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3ca3c690fab42b9c3dacef30669f66259bf826f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [B1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/declarations/b1--8c4e0c85749ff84436f70666.md) | 28 | `declaration-track:8c4e0c85749ff84436f70666743eb1846694615d9e49a1148d15fdd64e2445fc` |
| 2 | `lemma` | [aestronglyMeasurable_B1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/declarations/aestronglymeasurable-b1--b073210d3e5f384759675310.md) | 31 | `result-track:b073210d3e5f3847596753107db3ca51fb7f597108d972f87eb1746e7172c6ef` |
| 3 | `lemma` | [abs_B1_le_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/declarations/abs-b1-le-half--a280bc9862c1ce4373fdeeee.md) | 35 | `result-track:a280bc9862c1ce4373fdeeee2683640d9b58638512da7a13482872e92c084eee` |
| 4 | `lemma` | [integral_deriv_mul_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/declarations/integral-deriv-mul-add-const--0b7e65e17b3a7c1913410700.md) | 41 | `result-track:0b7e65e17b3a7c1913410700d17fa84b33c2efb0115c4a5da6126ec584e7047d` |
| 5 | `lemma` | [intervalIntegrable_deriv_mul_B1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/declarations/intervalintegrable-deriv-mul-b1--3e34eff3a0d8b9098fc48600.md) | 54 | `result-track:3e34eff3a0d8b9098fc4860029adbfb3a4cc77cabe941a13f9cf6b9cdcd4a83f` |
| 6 | `lemma` | [integral_deriv_mul_floor_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/declarations/integral-deriv-mul-floor-add-one--6a56e347e6b69233d1999824.md) | 64 | `result-track:6a56e347e6b69233d1999824e106fb0d3b265b8f10ca9aa03c05995b7cf5d61a` |
| 7 | `theorem` | [sum_eq_integral_add_integral_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMaclaurin/Variant0e2b201e2a99db8650c565f14c2d4c65ff54a59a29f81137a63a00f2d1776ab6.lean/declarations/sum-eq-integral-add-integral-deriv--5cd45088f3616f7ebd9534c6.md) | 80 | `result-track:5cd45088f3616f7ebd9534c6023901dcc59c54e3ef5fc69c89fbc150bec072b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
