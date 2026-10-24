# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SobolevInequality.Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f77ea7698c69b09fd175fb6d232115ceab6fe56",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f77ea7698c69b09fd175fb6d232115ceab6fe56`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.NormPow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Interval` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [T](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/t--c9faa8b132fce71fffe45afc.md) | 97 | `declaration-track:c9faa8b132fce71fffe45afc0cd118b85a20f6012e55e8e72bd84fca94180256` |
| 2 | `lemma` | [T_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/t-univ--f5910b47fcf85f0969292623.md) | 102 | `result-track:f5910b47fcf85f0969292623385f9fc8ee99183d930469764217ae4b55770333` |
| 3 | `lemma` | [T_empty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/t-empty--fa86fc3bdc74068e64b94405.md) | 108 | `result-track:fa86fc3bdc74068e64b94405c6d38736759bd7b5ccf9b3607c06d71851f1330c` |
| 4 | `theorem` | [T_insert_le_T_lmarginal_singleton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/t-insert-le-t-lmarginal-singleton--8f81f423ea0dde65663dff3b.md) | 117 | `result-track:8f81f423ea0dde65663dff3b846a02ab28380968c7e871539c55a2c0d3c2044e` |
| 5 | `theorem` | [T_lmarginal_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/t-lmarginal-antitone--201ba4b9a4555c0ce241ec92.md) | 225 | `result-track:201ba4b9a4555c0ce241ec92451d970f764e0ea81dc6e4fd46b42fd9e480d503` |
| 6 | `theorem` | [lintegral_mul_prod_lintegral_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/lintegral-mul-prod-lintegral-pow-le--198fb0040b0385931f8d6dc7.md) | 265 | `result-track:198fb0040b0385931f8d6dc7d4d5096da53c66a0457dcb23233cfec640b6021d` |
| 7 | `theorem` | [lintegral_prod_lintegral_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/lintegral-prod-lintegral-pow-le--13d93ce5426b422bb500f136.md) | 278 | `result-track:13d93ce5426b422bb500f1360a216042a5a42c7b2f194b6d1c2e0c2861a5eeca` |
| 8 | `theorem` | [lintegral_pow_le_pow_lintegral_fderiv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/lintegral-pow-le-pow-lintegral-fderiv-aux--501a8bc0091347480c6b4580.md) | 307 | `result-track:501a8bc0091347480c6b4580a34641196db48ca5a51ea323faaf69b0c3f71df8` |
| 9 | `theorem` | [lintegral_pow_le_pow_lintegral_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/lintegral-pow-le-pow-lintegral-fderiv--3bc017aa02e035ea6c90ecb8.md) | 379 | `result-track:3bc017aa02e035ea6c90ecb8190898663ab7ee06686a8b712408952778d04959` |
| 10 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/elpnorm-le-elpnorm-fderiv-one--72602010216d811b378b42fb.md) | 449 | `result-track:72602010216d811b378b42fbf78411a74d96d452c55a0fb86ac26ca0b4eed1d8` |
| 11 | `def` | [eLpNormLESNormFDerivOfEqInnerConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/elpnormlesnormfderivofeqinnerconst--494727c90f5281b3e32161a0.md) | 462 | `declaration-track:494727c90f5281b3e32161a0d088a8e6217d6025831abde7cfd988c0936bdf22` |
| 12 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_of_eq_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/elpnorm-le-elpnorm-fderiv-of-eq-inner--ad1235b3a1030cbe6e29c480.md) | 476 | `result-track:ad1235b3a1030cbe6e29c4809879326c30abb7c16a5616e2390f07d27854893e` |
| 13 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_of_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/elpnorm-le-elpnorm-fderiv-of-eq--c331fc4f81232db8d2e25402.md) | 610 | `result-track:c331fc4f81232db8d2e25402b44a3dda14af551009c229bbb73643853031a15d` |
| 14 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/elpnorm-le-elpnorm-fderiv-of-le--4a9406d792b3633450f40353.md) | 666 | `result-track:4a9406d792b3633450f403530bdb8b98002c60d3a6aee5437f54b3a269914c01` |
| 15 | `theorem` | [eLpNorm_le_eLpNorm_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/declarations/elpnorm-le-elpnorm-fderiv--e2d478869d35faa9fee929af.md) | 724 | `result-track:e2d478869d35faa9fee929af2fdfef5fd99b7e5dadd1a671d646c4d032580de1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
