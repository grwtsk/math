# Verification target: GRWTSK.Algebra.BaseChange.Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c7dee33cb587aa0ee020b89e761413f1d2fbd99",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c7dee33cb587aa0ee020b89e761413f1d2fbd99`.

Source path: `GRWTSK/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IsTensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalizedModule.isBaseChange](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalizedmodule-isbasechange--d769dfed20a72149015a1e3d.md) | 39 | `result-track:d769dfed20a72149015a1e3da887f99aba194ce1a43b200d524b649177c6952b` |
| 2 | `theorem` | [isLocalizedModule_iff_isBaseChange](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalizedmodule-iff-isbasechange--0145ff8d36eaddc6ac7958ab.md) | 52 | `result-track:0145ff8d36eaddc6ac7958ab7dddbb40302d0c9515454081aeb969427cfb8021` |
| 3 | `def` | [LocalizedModule.equivTensorProduct](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/localizedmodule-equivtensorproduct--6dc43c09c6e1995f25703c78.md) | 67 | `declaration-track:6dc43c09c6e1995f25703c78c82f873f60ce9818b9a1a5de8fc532724b86e9dd` |
| 4 | `lemma` | [LocalizedModule.equivTensorProduct_symm_apply_tmul](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/localizedmodule-equivtensorproduct-symm-apply-tmul--541c39d179b4de04473e19ed.md) | 73 | `result-track:541c39d179b4de04473e19edde0175ed55585f3002f2ef608cdf027d26ad0509` |
| 5 | `lemma` | [LocalizedModule.equivTensorProduct_symm_apply_tmul_one](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/localizedmodule-equivtensorproduct-symm-apply-tmul-one--5857d657fe2c45e376b1ecb7.md) | 78 | `result-track:5857d657fe2c45e376b1ecb72cbd7022a29f92beab7f29053807ba8e5004db8b` |
| 6 | `lemma` | [LocalizedModule.equivTensorProduct_apply_mk](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/localizedmodule-equivtensorproduct-apply-mk--c815a81cec72830d6ee93bda.md) | 83 | `result-track:c815a81cec72830d6ee93bdab31624095bc120244824ed36a694cdf4b2b1cceb` |
| 7 | `instance` | [tensorProduct_isLocalizedModule](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/tensorproduct-islocalizedmodule--3cfcc39dff3defa7b2cefdcb.md) | 92 | `declaration-track:3cfcc39dff3defa7b2cefdcb60e103f0d34a7a8776b15a2ae4ab3fccda2ed209` |
| 8 | `theorem` | [tensorProduct_compatibleSMul](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/tensorproduct-compatiblesmul--f9fecd349e1c9013a795fdc7.md) | 101 | `result-track:f9fecd349e1c9013a795fdc77ae2b4c2c45977708ad77f5edf29b3102fb23e7a` |
| 9 | `def` | [moduleTensorEquiv](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/moduletensorequiv--c591d423ba8854fcae18319d.md) | 110 | `declaration-track:c591d423ba8854fcae18319d7df05fd6c57f84c96808fc9b28606bb63326f198` |
| 10 | `def` | [moduleLid](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/modulelid--261d29232e4764344b45d873.md) | 115 | `declaration-track:261d29232e4764344b45d87387c25e71ac9912b2b5caa67b083cd1b08256c3bc` |
| 11 | `def` | [algebraTensorEquiv](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/algebratensorequiv--6cf00cdf943a085652ddba82.md) | 121 | `declaration-track:6cf00cdf943a085652ddba822b84b9eefa6849aef0bf21506407f1707a1c71d3` |
| 12 | `def` | [algebraLid](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/algebralid--c1b8b6d5cea3213eb6382475.md) | 126 | `declaration-track:c1b8b6d5cea3213eb63824756e2f3bb766c101044c940f1ca6be3ad7f72beb49` |
| 13 | `theorem` | [bijective_linearMap_mul'](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/bijective-linearmap-mul--8f8dcf7f8fffd7a7f90c9fe8.md) | 133 | `result-track:8f8dcf7f8fffd7a7f90c9fe8451cd1fb1f784dfcb1810289b59950c7ee9e8b06` |
| 14 | `lemma` | [Algebra.isLocalization_iff_isPushout](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/algebra-islocalization-iff-ispushout--e69188f5862133be9b387a4e.md) | 144 | `result-track:e69188f5862133be9b387a4efd9ebabf95e9378eb638b1b4b4de71447e16b9f6` |
| 15 | `lemma` | [Algebra.isPushout_of_isLocalization](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/algebra-ispushout-of-islocalization--1881cdcfc2df423bd4aaab85.md) | 149 | `result-track:1881cdcfc2df423bd4aaab850dc420ca15fb55aac0673bca3b2327a2152cf1ab` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/instance--f0e506608996c15b66df0638.md) | 154 | `declaration-track:f0e506608996c15b66df063837297a94449ac3042f9a4ea939d9969eddb0f1a2` |
| 17 | `instance` | [IsLocalizedModule.rTensor](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalizedmodule-rtensor--aec2b7df9fb9bc97ccc312a8.md) | 186 | `declaration-track:aec2b7df9fb9bc97ccc312a821e6c029d573ba8b6f062552bc0f54c0ca0c2dca` |
| 18 | `lemma` | [IsLocalizedModule.map_lTensor](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalizedmodule-map-ltensor--1c0e098c4601e240aa38dba2.md) | 198 | `result-track:1c0e098c4601e240aa38dba27df5d5d1f5e220a276456d563faa462965cb7809` |
| 19 | `instance` | [IsLocalization.tensor](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalization-tensor--e12d909248b0f975ea6d17a6.md) | 213 | `declaration-track:e12d909248b0f975ea6d17a6218e586c9cc2f5027b8557456f47f367a5af2903` |
| 20 | `instance` | [IsLocalization.tensorRight](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalization-tensorright--e80e3c70d497b815e184cf5a.md) | 220 | `declaration-track:e80e3c70d497b815e184cf5abd5764ed646b58f0260183d0b897ff01227591c1` |
| 21 | `lemma` | [IsLocalization.tmul_mk'](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalization-tmul-mk--2d60701e0272f04d0be15e14.md) | 226 | `result-track:2d60701e0272f04d0be15e1403123971f4c550396c2662e4842bbaa705dce931` |
| 22 | `lemma` | [IsLocalization.mk'_tmul](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/islocalization-mk-tmul--2550d85e1190f44921043de4.md) | 236 | `result-track:2550d85e1190f44921043de43d453cf77cd3f95ab0bf2ba6d302bc07c4b90a9c` |
| 23 | `instance` | [tensor](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/tensor--dfc0f23efcc39ef65336d07a.md) | 245 | `declaration-track:dfc0f23efcc39ef65336d07a09286a250bcf9b40431b75a50907adc229590cf2` |
| 24 | `abbrev` | [tensorEquiv](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/tensorequiv--389952c000190c150c820b76.md) | 252 | `declaration-track:389952c000190c150c820b76d52165babad9509720d5de167690a04bbf2015b7` |
| 25 | `instance` | [tensorRight](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/tensorright--cd5aaed773474a8163af9917.md) | 258 | `declaration-track:cd5aaed773474a8163af99173db45de2a13517684c32234e095f98d296897880` |
| 26 | `abbrev` | [tensorRightEquiv](../../../../mathematics/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/declarations/tensorrightequiv--bd4369c2f636255acc7bbd40.md) | 265 | `declaration-track:bd4369c2f636255acc7bbd404d2ab4b96844d54974526eb8d7a807d169cbcda5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
