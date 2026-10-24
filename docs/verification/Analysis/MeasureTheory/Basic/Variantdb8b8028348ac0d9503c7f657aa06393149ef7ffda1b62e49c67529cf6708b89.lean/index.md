# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3431d6976e3a76bd141f5be517d8eb2fdc79436d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3431d6976e3a76bd141f5be517d8eb2fdc79436d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/map-dirac--1554b79b54c55997bb8537ff.md) | 36 | `result-track:1554b79b54c55997bb8537ff3ccbcb396634cc3610bd4ab4c0ecea475d6c40e4` |
| 2 | `lemma` | [map_const](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/map-const--0e78bd74598158a8cd27af86.md) | 41 | `result-track:0e78bd74598158a8cd27af86714ec489afbd643270f4f4803629df8ade3a268e` |
| 3 | `theorem` | [restrict_singleton](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/restrict-singleton--d24275a655c3c537cde4b4b8.md) | 52 | `result-track:d24275a655c3c537cde4b4b8315552a02d52d2ad854436e0f824971b560d520b` |
| 4 | `theorem` | [ext_of_singleton](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ext-of-singleton--0e23738c03f9558038ab1e71.md) | 61 | `result-track:0e23738c03f9558038ab1e7146cf8baa26fad92196c77b911e751c2b3ff8a37c` |
| 5 | `theorem` | [ext_iff_singleton](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ext-iff-singleton--08cf6fa2578a9aba44446d32.md) | 65 | `result-track:08cf6fa2578a9aba44446d3222474ea1cd80e9bd926e342480ec6c5a63306daf` |
| 6 | `theorem` | [_root_.MeasureTheory.ext_iff_measureReal_singleton](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/root-measuretheory-ext-iff-measurereal-singleton--a55771371a73f558d6879423.md) | 68 | `result-track:a55771371a73f558d6879423a74efa3f650c32c79d022d1657bce42ba8b03f88` |
| 7 | `theorem` | [map_eq_sum](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/map-eq-sum--43826162be0167863ceadca9.md) | 79 | `result-track:43826162be0167863ceadca97404729e88d2c82a1db75f5bbc50be13890d878d` |
| 8 | `theorem` | [sum_smul_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/sum-smul-dirac--949c289a82db14149b0ee44d.md) | 88 | `result-track:949c289a82db14149b0ee44d6ce4a5df266c44e2d750862c6acec904db7f45e3` |
| 9 | `lemma` | [sum_smul_dirac_singleton](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/sum-smul-dirac-singleton--478ff4769c67f06cfff5998d.md) | 92 | `result-track:478ff4769c67f06cfff5998df8cf8b02f476d23f375c881711eb782a2144391c` |
| 10 | `lemma` | [exists_sum_smul_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/exists-sum-smul-dirac--ae83c05ef86ec1a1d4b7658b.md) | 98 | `result-track:ae83c05ef86ec1a1d4b7658bc28ff79de588d76e8a341678c6c447451042c479` |
| 11 | `theorem` | [tsum_indicator_apply_singleton](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/tsum-indicator-apply-singleton--b535dceafb4a54eaa94fdc01.md) | 137 | `result-track:b535dceafb4a54eaa94fdc01084b758de36a2859fdb53ba6f0cdf0681184b0b6` |
| 12 | `theorem` | [mem_ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/mem-ae-dirac-iff--a1732c5b10f0a78ec3b759f7.md) | 151 | `result-track:a1732c5b10f0a78ec3b759f72194f19c2a651294d2b2aa2a10244041327775b3` |
| 13 | `theorem` | [ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-dirac-iff--8004b59bc7875c8d4aeb29dd.md) | 154 | `result-track:8004b59bc7875c8d4aeb29dd18e77098b2b5d446983e1c5d67fb6036d4282d0f` |
| 14 | `theorem` | [ae_dirac_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-dirac-eq--7f6f07e564374235bb2ae266.md) | 159 | `result-track:7f6f07e564374235bb2ae2669d1a2ab0fa7fed01cc52cc07d8d773ede5604ee5` |
| 15 | `theorem` | [ae_eq_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-eq-dirac--8fc3f43aab0891165ca5be79.md) | 163 | `result-track:8fc3f43aab0891165ca5be796f1fa3eb0e99b7bd6b6a146ee5aa9522f16011c2` |
| 16 | `theorem` | [ae_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-eq-dirac--3b2fa3d4769bd472eb244019.md) | 167 | `result-track:3b2fa3d4769bd472eb24401985eda517d074b1fc97a675891116240a29c4143f` |
| 17 | `lemma` | [aemeasurable_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/aemeasurable-dirac--325e728ff21a5f06b54ded37.md) | 171 | `result-track:325e728ff21a5f06b54ded37cd11f94f2ddea907d8f1a74be546b7ffb6174478` |
| 18 | `theorem` | [Measure.map_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/measure-map-dirac--b8735372f9dc1be09804276c.md) | 176 | `result-track:b8735372f9dc1be09804276cd5115198c0dfe0180a237c46d2098da0be38650a` |
| 19 | `instance` | [Measure.dirac.isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/measure-dirac-isprobabilitymeasure--1d95836465d19868eaa0654e.md) | 183 | `declaration-track:1d95836465d19868eaa0654e406343f23156c2bddd47d4db9e6909bf569c0a2e` |
| 20 | `lemma` | [_root_.HasSum.isProbabilityMeasure_sum_dirac_ennreal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/root-hassum-isprobabilitymeasure-sum-dirac-ennreal--c7900875306df5a7bdd210fb.md) | 186 | `result-track:c7900875306df5a7bdd210fbe6c7f6d5f1260b15191e419b5268dae805c8ec60` |
| 21 | `lemma` | [_root_.HasSum.isProbabilityMeasure_sum_dirac_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/root-hassum-isprobabilitymeasure-sum-dirac-nnreal--575583d1e5911b32abf1f293.md) | 191 | `result-track:575583d1e5911b32abf1f2933eba3e9aa86798db6973d452bb15e4e9b865dff7` |
| 22 | `lemma` | [_root_.HasSum.isProbabilityMeasure_sum_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/root-hassum-isprobabilitymeasure-sum-dirac--c4609b8515898016a811d25f.md) | 196 | `result-track:c4609b8515898016a811d25faff14b75adaceabaaf3a513334fa0915f496c982` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/instance--d0230687804a2d7cbf0ebee4.md) | 201 | `declaration-track:d0230687804a2d7cbf0ebee43d0330d2a9084be13518d1a7ad69f133eb128301` |
| 24 | `instance` | [Measure.dirac.instIsFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/measure-dirac-instisfinitemeasure--863b7b0aca8a51d6bb36524f.md) | 206 | `declaration-track:863b7b0aca8a51d6bb36524fc5e557643ccc42b29ddfba63d5f4f2263938e7e0` |
| 25 | `instance` | [Measure.dirac.instSigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/measure-dirac-instsigmafinite--5c2c4203e2c62ce82c9faf2e.md) | 207 | `declaration-track:5c2c4203e2c62ce82c9faf2e705d27ba46c9fb30d5a8b00e26f557d4e5fcfd61` |
| 26 | `theorem` | [dirac_eq_one_iff_mem](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/dirac-eq-one-iff-mem--55459463cbbd28574ba7cd1a.md) | 209 | `result-track:55459463cbbd28574ba7cd1a02b396df5fc97a7291b235c4e82810c0b4f15dbd` |
| 27 | `theorem` | [dirac_eq_zero_iff_not_mem](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/dirac-eq-zero-iff-not-mem--00ee20e3e2d2ad780a147d00.md) | 213 | `result-track:00ee20e3e2d2ad780a147d00f7868555979d1f9ec90297c0cd9ac394433311d9` |
| 28 | `theorem` | [restrict_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/restrict-dirac--2e1adc38397ef0813d2e3ee5.md) | 217 | `result-track:2e1adc38397ef0813d2e3ee52fbdfe63510cae4c3f8a834fa768b6f107a5bf74` |
| 29 | `theorem` | [restrict_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/restrict-dirac--46a998d5613a5a7170f42253.md) | 224 | `result-track:46a998d5613a5a7170f422538125c42e312843af46470c49f2e5d6c58fcb5273` |
| 30 | `lemma` | [mutuallySingular_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/mutuallysingular-dirac--1c36731e7b880577e744c730.md) | 231 | `result-track:1c36731e7b880577e744c7308c7fc9fd4cdb5edd7d20a158a02161b3fcc5b7e4` |
| 31 | `lemma` | [dirac_eq_dirac_iff_forall_mem_iff_mem](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/dirac-eq-dirac-iff-forall-mem-iff-mem--f44f8ca12162d9b12bd12993.md) | 240 | `result-track:f44f8ca12162d9b12bd12993a9c78405f99ad6fb68fb088a1b6a53c9c6406246` |
| 32 | `lemma` | [dirac_ne_dirac_iff_exists_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/dirac-ne-dirac-iff-exists-measurableset--e58a0ef7f68e6c5d2506167d.md) | 262 | `result-track:e58a0ef7f68e6c5d2506167dfa6cedb7b52b759a706e5da73c6bb045a35b7630` |
| 33 | `lemma` | [dirac_ne_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/dirac-ne-dirac--27f074dd4adea2fa9115491d.md) | 274 | `result-track:27f074dd4adea2fa9115491d4c0692a11ca683ed41a7e1ce3eccb7372d0f0caf` |
| 34 | `lemma` | [dirac_ne_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/dirac-ne-dirac-iff--0fbdab2564a2cc8d04aa9bc0.md) | 281 | `result-track:0fbdab2564a2cc8d04aa9bc074644c54ae0f7a4faf906ab99cf97a61b23d9e00` |
| 35 | `lemma` | [dirac_eq_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/dirac-eq-dirac-iff--23641cdb4c8350ef90d0d0b4.md) | 287 | `result-track:23641cdb4c8350ef90d0d0b4327263c3c36878f7f8025338097f7c4ad7ba004a` |
| 36 | `lemma` | [injective_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/injective-dirac--59e388100ebec8e985244770.md) | 291 | `result-track:59e388100ebec8e9852447704f43ded7b96edccfe64e9b95e5f27d590500df54` |
| 37 | `lemma` | [ae_mem_finset_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-mem-finset-iff--2a67cf38a9f32ffea5c88d44.md) | 302 | `result-track:2a67cf38a9f32ffea5c88d446ab40e78cc40744580a7b542e5d66c290e75798a` |
| 38 | `lemma` | [ae_eq_or_eq_iff_eq_dirac_add_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-eq-or-eq-iff-eq-dirac-add-dirac--b4ab98d720d1e20238bc3804.md) | 317 | `result-track:b4ab98d720d1e20238bc3804a867daa0bc09f3965d1adb85d5be8a9696d06762` |
| 39 | `lemma` | [ae_mem_finset_iff_map_eq_sum_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-mem-finset-iff-map-eq-sum-dirac--d40e4aa86fac988638e8a87b.md) | 322 | `result-track:d40e4aa86fac988638e8a87b607c724aedbb0936541b5e37be47b43509e3686c` |
| 40 | `lemma` | [ae_eq_or_eq_iff_map_eq_dirac_add_dirac](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/declarations/ae-eq-or-eq-iff-map-eq-dirac-add-dirac--d0fab4340ee2d7171ee2630a.md) | 327 | `result-track:d0fab4340ee2d7171ee2630aa5e0e7aa8fc9ece36d6795455bf3de62f6022744` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
