# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f99fc53f2340308500a0932cba2d045d6032744`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThree012` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rankThreeKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/rankthreekernel--f107d6d199f91cb08daa95fa.md) | 24 | `declaration-track:f107d6d199f91cb08daa95fab689cbbc26f7f4cb1147d63dc31d5152d6269ffc` |
| 2 | `theorem` | [rankThreeKernel_eq_det](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/rankthreekernel-eq-det--3fe473a216f5cfbc60b743d9.md) | 33 | `result-track:3fe473a216f5cfbc60b743d9adb85411fdeb282d6359445b817915a665ffb84e` |
| 3 | `theorem` | [triple_setIntegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/triple-setintegral-mul--c83bbc26f61e7a86ab97d2ba.md) | 41 | `result-track:c83bbc26f61e7a86ab97d2bab8aba40fe854254c1f4d1715639f581932a37a47` |
| 4 | `theorem` | [triple_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/triple-mul-integrableon--49c1c63595fe00613d33217b.md) | 56 | `result-track:49c1c63595fe00613d33217b6c3a128fff3bb3506bc6dcdaff03b5b3db90ab84` |
| 5 | `theorem` | [rankThreeKernel_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/rankthreekernel-integrableon--900a52d0e6ae46ed8971137b.md) | 65 | `result-track:900a52d0e6ae46ed8971137b20a939510b65b2f6b8f5c87cb294f3ac79d82d69` |
| 6 | `theorem` | [det_setIntegral_columns_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/det-setintegral-columns-eq--f6681027ce85a2acfa0e83e1.md) | 86 | `result-track:f6681027ce85a2acfa0e83e1c547e234936cbd9ea46aa68ff0ff3dac709afa67` |
| 7 | `theorem` | [det_three_tail_columns_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/det-three-tail-columns-sub--01b567c4f9768ab97a10b979.md) | 157 | `result-track:01b567c4f9768ab97a10b979cafd35ff81ac8e709780b290d642434dfb9d4ca4` |
| 8 | `theorem` | [thetaTail_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/thetatail-integrableon-ioc--c9cba777c400281272da2442.md) | 166 | `result-track:c9cba777c400281272da244223f999f6567ded9f91b7d203901b9c85f4a2f8d2` |
| 9 | `theorem` | [thetaTail_succ_sub_eq_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/thetatail-succ-sub-eq-ioc--9fabc539c14237b6b46de280.md) | 171 | `result-track:9fabc539c14237b6b46de28003647befb58d51a9595eba0d5ba38ad4434c6864` |
| 10 | `theorem` | [thetaTail_rankThree_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/thetatail-rankthree-shift--5aa701aa450ae3751a35f2ee.md) | 184 | `result-track:5aa701aa450ae3751a35f2ee4f27b0435ae87dd8009e4c91de59a4f7092017e2` |
| 11 | `theorem` | [thetaTail_rankThree_consecutive_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/thetatail-rankthree-consecutive-shift--5de083670c25f41b5c8f61f0.md) | 229 | `result-track:5de083670c25f41b5c8f61f028662956d2f2576504b1788dd439808633e6d946` |
| 12 | `theorem` | [thetaTailSignRegular_three_consecutive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/declarations/thetatailsignregular-three-consecutive--ba8812fe1b2cdcb4d92b8435.md) | 246 | `result-track:ba8812fe1b2cdcb4d92b8435d76406f5b62d2757ab3dff3e063cc082ecc0975b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
