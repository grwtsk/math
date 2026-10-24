# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Arsinh.Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b25b416694aa23b6257164d3a5fb7c899aeaa108",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b25b416694aa23b6257164d3a5fb7c899aeaa108`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh--3e3f15ebb82edc3abbd3928a.md) | 51 | `declaration-track:3e3f15ebb82edc3abbd3928a06a1bb4073e562875057e0780a5199ceb4fe4f8f` |
| 2 | `theorem` | [exp_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/exp-arsinh--e239cf39730be045a8c1a1ad.md) | 54 | `result-track:e239cf39730be045a8c1a1ad1ded95ab7dc23079810615ac0ce8225aaac0ace9` |
| 3 | `theorem` | [arsinh_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-zero--129a5302d01474bef1e63708.md) | 61 | `result-track:129a5302d01474bef1e637080aca8355b4d1593bca76757c38181161b8f74e48` |
| 4 | `theorem` | [arsinh_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-neg--8d7158a13a70c0984c2697bc.md) | 64 | `result-track:8d7158a13a70c0984c2697bc47e2910b0ada2526bdae8eb5b2763f8d5f824795` |
| 5 | `theorem` | [sinh_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/sinh-arsinh--5e8975874839fa23c775d743.md) | 72 | `result-track:5e8975874839fa23c775d743bb830c673d6ede146cc379cf42203b9589bec483` |
| 6 | `theorem` | [cosh_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/cosh-arsinh--c494209ab37df0508d30df5d.md) | 76 | `result-track:c494209ab37df0508d30df5dd59592f931dcdb9f6fb27cbcb8cddac367b7b22b` |
| 7 | `theorem` | [sinh_surjective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/sinh-surjective--7bc9a0ae0450b38b8934efd2.md) | 80 | `result-track:7bc9a0ae0450b38b8934efd24fa71c72d480a555b09e2f630660d53cdf9b7146` |
| 8 | `theorem` | [sinh_bijective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/sinh-bijective--12fd53790d123351a5c4119d.md) | 84 | `result-track:12fd53790d123351a5c4119dd829524cb819cd4ff0c2c237f043593da82fa95d` |
| 9 | `theorem` | [arsinh_sinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-sinh--b465796eda83ec18f585e676.md) | 89 | `result-track:b465796eda83ec18f585e6761c1d51b9eb063e093d12b38388e9c670db920a3d` |
| 10 | `def` | [sinhEquiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/sinhequiv--aa785b3e13bfc9463ce93bac.md) | 94 | `declaration-track:aa785b3e13bfc9463ce93bac553ac2bb844bb3575a344b80972fd6beb9aafac6` |
| 11 | `def` | [sinhOrderIso](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/sinhorderiso--a531d5ef36b04e83977822da.md) | 102 | `declaration-track:a531d5ef36b04e83977822dafe04636fa5b2f6850a026da692fd6fe2245e4b39` |
| 12 | `def` | [sinhHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/sinhhomeomorph--f229d9fcf9dcb6d9e6909e7e.md) | 108 | `declaration-track:f229d9fcf9dcb6d9e6909e7e3b8d8efae0fec6b6fc23cc567086a08eccc789f3` |
| 13 | `theorem` | [arsinh_bijective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-bijective--60ca86200031f67e77b94698.md) | 111 | `result-track:60ca86200031f67e77b94698a4b8233c51b3d68308995ab4fc076de2cd41abf1` |
| 14 | `theorem` | [arsinh_injective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-injective--659810d5429196f3cb96c817.md) | 114 | `result-track:659810d5429196f3cb96c81701848ec742d369a814d8f87a8b6169559efebe27` |
| 15 | `theorem` | [arsinh_surjective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-surjective--21ff2d531e5f9a353bd02e18.md) | 117 | `result-track:21ff2d531e5f9a353bd02e184f861ecb147f1550d57edb890f8178a1a9497205` |
| 16 | `theorem` | [arsinh_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-strictmono--0d487d1caeae46cc6a460262.md) | 120 | `result-track:0d487d1caeae46cc6a460262b2afb40205ca960f52411ea72e0e4fdcc3ea206e` |
| 17 | `theorem` | [arsinh_inj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-inj--2ab2b1838e09e9f1384b59ff.md) | 124 | `result-track:2ab2b1838e09e9f1384b59ff738383c9c89a4c8abea906cce83f3a3f53ca2c4b` |
| 18 | `theorem` | [arsinh_le_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-le-arsinh--0270cd6492446cd767f97f86.md) | 128 | `result-track:0270cd6492446cd767f97f86a01cc931563e495d3283b9a9f1727892583358ff` |
| 19 | `theorem` | [arsinh_lt_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-lt-arsinh--6ef7baf47f8d4a0df01d0198.md) | 134 | `result-track:6ef7baf47f8d4a0df01d01988d8b86a02b97c01664b111727827791593a4a8aa` |
| 20 | `theorem` | [arsinh_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-eq-zero-iff--dd510ee4ed81181f3dbe79d2.md) | 138 | `result-track:dd510ee4ed81181f3dbe79d2c15b7b6e54f5bc7a241dbdfadfa1e166e8061dee` |
| 21 | `theorem` | [arsinh_nonneg_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-nonneg-iff--99a1bb577fe79acdc43b59cf.md) | 142 | `result-track:99a1bb577fe79acdc43b59cf0e20c2790174e70a9003ac8faf14891618b6ab73` |
| 22 | `theorem` | [arsinh_nonpos_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-nonpos-iff--0b8b56ea8e9518786160102e.md) | 145 | `result-track:0b8b56ea8e9518786160102ef5bde0911a266d8f2010feb2142839570f8a37ad` |
| 23 | `theorem` | [arsinh_pos_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-pos-iff--5c04f68e2d1265c2619d827e.md) | 148 | `result-track:5c04f68e2d1265c2619d827ec58f2a5c7c964b83b5ef00ce2e5d4e7cc6ae0110` |
| 24 | `theorem` | [arsinh_neg_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/arsinh-neg-iff--3a11ee846ce39cd01ea90021.md) | 152 | `result-track:3a11ee846ce39cd01ea9002136bb5555be73f1aad5d98757ac8cc3c576b57ee9` |
| 25 | `theorem` | [hasStrictDerivAt_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasstrictderivat-arsinh--3cf845a43e44189c25b77ff4.md) | 155 | `result-track:3cf845a43e44189c25b77ff42f997934bb9066c2a7548ba70fff403d9e65eae7` |
| 26 | `theorem` | [hasDerivAt_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasderivat-arsinh--d4ebd4502ba90824f869a178.md) | 160 | `result-track:d4ebd4502ba90824f869a1780bf29f61b2604e859861c8b35100b657916d787c` |
| 27 | `theorem` | [differentiable_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/differentiable-arsinh--b218197f097e35fe0fcd8eb3.md) | 164 | `result-track:b218197f097e35fe0fcd8eb3c72a609d6f440ffe42a556a5d7b32dbef02f9073` |
| 28 | `theorem` | [contDiff_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/contdiff-arsinh--eb42ac3959cec8307678d261.md) | 168 | `result-track:eb42ac3959cec8307678d2611ea4c99fe4989885ea906ad8d11bb7532028febc` |
| 29 | `theorem` | [continuous_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/continuous-arsinh--34209e687ebf9e118671114b.md) | 172 | `result-track:34209e687ebf9e118671114b7650380c56ec73913e638032c9465c728269bf27` |
| 30 | `theorem` | [Filter.Tendsto.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/filter-tendsto-arsinh--d4822942753e1239c30cbb78.md) | 179 | `result-track:d4822942753e1239c30cbb781dcdd225d1aa64cd363b2898dc8c8dcf766c476f` |
| 31 | `theorem` | [ContinuousAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/continuousat-arsinh--7b243f5f248edd253bf10884.md) | 187 | `result-track:7b243f5f248edd253bf10884bd82987dbb8ffc48493f1f50434a9b018141442b` |
| 32 | `theorem` | [ContinuousWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/continuouswithinat-arsinh--7b3b33153b3d03a99fa13a5d.md) | 191 | `result-track:7b3b33153b3d03a99fa13a5d381b54e300e84c57e001d969b5b8d0b145934a91` |
| 33 | `theorem` | [ContinuousOn.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/continuouson-arsinh--3b5ed8e53aca892aeef4f111.md) | 195 | `result-track:3b5ed8e53aca892aeef4f111d5b0692f01319a2060b6a787dc4dc6f2a72fc2de` |
| 34 | `theorem` | [Continuous.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/continuous-arsinh--845c28faa268afcf271f7694.md) | 198 | `result-track:845c28faa268afcf271f769495036c59e3ab2c22eff9d0ea16bf389fc1775b8b` |
| 35 | `theorem` | [HasStrictFDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasstrictfderivat-arsinh--de145a06dbefda1c75ede580.md) | 208 | `result-track:de145a06dbefda1c75ede580fa1fc7873632ea290a6327d571cffe7c7744a536` |
| 36 | `theorem` | [HasFDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasfderivat-arsinh--ba0237eb752b9d339956a578.md) | 212 | `result-track:ba0237eb752b9d339956a5786a20b88ccf5b5684708743b37afb0ce13727f3e8` |
| 37 | `theorem` | [HasFDerivWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasfderivwithinat-arsinh--d3656342cf12a3b69af223f7.md) | 216 | `result-track:d3656342cf12a3b69af223f7951a6f96e3eb1ebb36182af9c904046b2a668a1f` |
| 38 | `theorem` | [DifferentiableAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/differentiableat-arsinh--37c4c8f995a8fbe2075b6a9b.md) | 221 | `result-track:37c4c8f995a8fbe2075b6a9bef96678ec775e517054edd440aa21d7ea3c8d467` |
| 39 | `theorem` | [DifferentiableWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/differentiablewithinat-arsinh--84ab94f89fd05855f4310ea0.md) | 226 | `result-track:84ab94f89fd05855f4310ea0695f1f51ae09ffec129427e6ccca438808619c2d` |
| 40 | `theorem` | [DifferentiableOn.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/differentiableon-arsinh--1b516da3dbf4195045071663.md) | 231 | `result-track:1b516da3dbf41950450716637b0ec20d401162538c8f04a52aa64cda3ac39a35` |
| 41 | `theorem` | [Differentiable.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/differentiable-arsinh--e3f672e88d8c3a172375270a.md) | 235 | `result-track:e3f672e88d8c3a172375270a6fcafba7d394c23e9144d05567fceb156c3bb045` |
| 42 | `theorem` | [ContDiffAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/contdiffat-arsinh--80f16c5e5d1de725fe5f21c1.md) | 239 | `result-track:80f16c5e5d1de725fe5f21c1fe51272c2693f8ffd4bfa74c9c1975c6e69ff959` |
| 43 | `theorem` | [ContDiffWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/contdiffwithinat-arsinh--a6111c33658b4a9342d09462.md) | 243 | `result-track:a6111c33658b4a9342d0946274a1ef9c9331ecfcf24cbabbb547c6fd3689802b` |
| 44 | `theorem` | [ContDiff.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/contdiff-arsinh--9da5675257a9a0f397ace147.md) | 248 | `result-track:9da5675257a9a0f397ace1471803f7f4be8541dea48621ae642866e8f1419dff` |
| 45 | `theorem` | [ContDiffOn.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/contdiffon-arsinh--27d373c0aa5918e35e975254.md) | 252 | `result-track:27d373c0aa5918e35e9752545065a0eb1960b26bd2c8448da1b40d33274f10a5` |
| 46 | `theorem` | [HasStrictDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasstrictderivat-arsinh--4076099a4ec060a221661c80.md) | 261 | `result-track:4076099a4ec060a221661c80d153c13cd027898eacdf48f6f7b108b0f94a1b3c` |
| 47 | `theorem` | [HasDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasderivat-arsinh--fc1311bbf6e04d49cb19025b.md) | 265 | `result-track:fc1311bbf6e04d49cb19025b7c14fd393574926f3d738d36fc6b65b7f16049e0` |
| 48 | `theorem` | [HasDerivWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variant61511b7f73eb62532b322ae1d1e467406b1b6aafe8d2fa2de04cf153221a79dc.lean/declarations/hasderivwithinat-arsinh--5a22f71e85caf26f6e1dc5f1.md) | 269 | `result-track:5a22f71e85caf26f6e1dc5f19b1d61ec31ddc9c6a57256f59fd5b2efab0ab477` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
