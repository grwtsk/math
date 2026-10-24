# Verification target: GRWTSK.Algebra.BaseChange.Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3c16c386e50b0680d9532b9006d119c6c60c874",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md) · [Full source](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3c16c386e50b0680d9532b9006d119c6c60c874`.

Source path: `GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IsTensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalizedModule.isBaseChange](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalizedmodule-isbasechange--6e8df6f5629fd8cade91e416.md) | 31 | `result-track:6e8df6f5629fd8cade91e416161bcbc54b0662231b63b6adb86f4bd6664cda02` |
| 2 | `theorem` | [isLocalizedModule_iff_isBaseChange](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalizedmodule-iff-isbasechange--f4b1342c5eef6517c40083d0.md) | 44 | `result-track:f4b1342c5eef6517c40083d06406a00f3133daf500a6b2ae84331f742c354d63` |
| 3 | `def` | [LocalizedModule.equivTensorProduct](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/localizedmodule-equivtensorproduct--5efa6f0d8a18699c9bd71794.md) | 59 | `declaration-track:5efa6f0d8a18699c9bd717949eeea882ef9c025a5f5e29b1d1ff9a3c6f6e821d` |
| 4 | `lemma` | [LocalizedModule.equivTensorProduct_symm_apply_tmul](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/localizedmodule-equivtensorproduct-symm-apply-tmul--75da4e554466a1fc886d4a3e.md) | 65 | `result-track:75da4e554466a1fc886d4a3ec8c93deb0f10c5aac8b25ffb6fcd05e46aac77ef` |
| 5 | `lemma` | [LocalizedModule.equivTensorProduct_symm_apply_tmul_one](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/localizedmodule-equivtensorproduct-symm-apply-tmul-one--5580c32c2121f786a28459d5.md) | 70 | `result-track:5580c32c2121f786a28459d5f19c338faa4b04786e2012fa8c22d0f0650701dc` |
| 6 | `lemma` | [LocalizedModule.equivTensorProduct_apply_mk](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/localizedmodule-equivtensorproduct-apply-mk--f11acb19d29e002cf214dc2d.md) | 75 | `result-track:f11acb19d29e002cf214dc2ddddaa059c1160e81cc393dbbaabe0fdcf62f4c71` |
| 7 | `instance` | [tensorProduct_isLocalizedModule](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/tensorproduct-islocalizedmodule--eb53be8af36a2b92271ac3d6.md) | 84 | `declaration-track:eb53be8af36a2b92271ac3d6dde156c1a5e058fcf6cc6248bfa97b0bed348059` |
| 8 | `theorem` | [tensorProduct_compatibleSMul](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/tensorproduct-compatiblesmul--c9b09d973e2413a0a21d2134.md) | 93 | `result-track:c9b09d973e2413a0a21d21346176da887873167d99d253bda74d593284fc011a` |
| 9 | `def` | [moduleTensorEquiv](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/moduletensorequiv--38666dff1693156c5a2f1a4e.md) | 102 | `declaration-track:38666dff1693156c5a2f1a4ec019eefbd4d0493d03ea7040866ea8ab489ca058` |
| 10 | `def` | [moduleLid](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/modulelid--176875ed4c9005326b927c42.md) | 107 | `declaration-track:176875ed4c9005326b927c42c0856126a4c7d19386f0549653701970964aa774` |
| 11 | `def` | [algebraTensorEquiv](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/algebratensorequiv--a8c19fd900d68b956096ce83.md) | 113 | `declaration-track:a8c19fd900d68b956096ce8300faced7af5a8fd72cc632c5969ae0c9e429c5ac` |
| 12 | `def` | [algebraLid](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/algebralid--caa10e8777daae577e07e291.md) | 118 | `declaration-track:caa10e8777daae577e07e291237590b8a549768d8b28c37b0397b44d5c01a52e` |
| 13 | `theorem` | [bijective_linearMap_mul'](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/bijective-linearmap-mul--6619dba3692c858f14c23e06.md) | 125 | `result-track:6619dba3692c858f14c23e06d8eabf124919feda3a37ec7bd767bca73e657970` |
| 14 | `lemma` | [Algebra.isLocalization_iff_isPushout](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/algebra-islocalization-iff-ispushout--5b09f4c7c480db69517a05b8.md) | 136 | `result-track:5b09f4c7c480db69517a05b865891d9ba04523b327a79c5c5b250185272a9ba2` |
| 15 | `lemma` | [Algebra.isPushout_of_isLocalization](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/algebra-ispushout-of-islocalization--f8567757d45b8616997a1a1e.md) | 141 | `result-track:f8567757d45b8616997a1a1e10ee8348e720e155c8473b7c0834647257d80cf9` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/instance--59bd0e4230e32dfbd1b26baa.md) | 146 | `declaration-track:59bd0e4230e32dfbd1b26baa9476016b50556f2d4010bcfbc1e78ed709d286e6` |
| 17 | `instance` | [IsLocalizedModule.rTensor](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalizedmodule-rtensor--9e850bf0e8d6a8d94e41b0d3.md) | 178 | `declaration-track:9e850bf0e8d6a8d94e41b0d378539c6d42730d571e23a6a77b0c3b7aa05f3441` |
| 18 | `lemma` | [IsLocalizedModule.map_lTensor](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalizedmodule-map-ltensor--d4a2b8dae5a098bcd06b91a8.md) | 190 | `result-track:d4a2b8dae5a098bcd06b91a8f3b05daf310659e394b9b2b1bdb96052a166d6ba` |
| 19 | `instance` | [IsLocalization.tensor](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalization-tensor--27301cda67e6b6cf8327ef47.md) | 205 | `declaration-track:27301cda67e6b6cf8327ef475295cd172429685d6d2347a9eeb06ad7ba8bd964` |
| 20 | `instance` | [IsLocalization.tensorRight](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalization-tensorright--749dd24135c6412968b85cf0.md) | 212 | `declaration-track:749dd24135c6412968b85cf00e717e8c4b66f1a20948d71b7e751216998b8a51` |
| 21 | `lemma` | [IsLocalization.tmul_mk'](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalization-tmul-mk--a87b943e39416599405e2491.md) | 218 | `result-track:a87b943e39416599405e24913b8d0295083f6ef3e5e8050c2d84805902c2ee33` |
| 22 | `lemma` | [IsLocalization.mk'_tmul](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/islocalization-mk-tmul--c07dd54caddd25121a58a725.md) | 228 | `result-track:c07dd54caddd25121a58a725a6143f78e1fa7c1b5df62114fdd8f386cb52953f` |
| 23 | `instance` | [tensor](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/tensor--ea6a73a9524427bb99a96c2a.md) | 237 | `declaration-track:ea6a73a9524427bb99a96c2ab9175a6b68c229d75ff7035151fb9798ad7087e2` |
| 24 | `abbrev` | [tensorEquiv](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/tensorequiv--74ffe52c3d7fe314f4de6467.md) | 244 | `declaration-track:74ffe52c3d7fe314f4de646799d9988a237396a3daa022bc2665321ff5522f46` |
| 25 | `instance` | [tensorRight](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/tensorright--98a0b34680f0a25c9e42bbfe.md) | 250 | `declaration-track:98a0b34680f0a25c9e42bbfe1de4ff81de2bf3481b1dbcd3aafce91f28e1aff8` |
| 26 | `abbrev` | [tensorRightEquiv](../../../../mathematics/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/declarations/tensorrightequiv--eb4eb1e60c16928764240a83.md) | 257 | `declaration-track:eb4eb1e60c16928764240a837598cd63fe214bbeba9e0ec20b5657cf4e77bad2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
