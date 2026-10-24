# Verification target: GRWTSK.Analysis.MeasureTheory.Dirac.Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a5d46815549975cde2b0a9bb75dcba9091fa811",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a5d46815549975cde2b0a9bb75dcba9091fa811`.

Source path: `GRWTSK/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.CountablyGenerated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MutuallySingular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NoAtoms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.SFinite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac--7df8376964778699d405331f.md) | 39 | `declaration-track:7df8376964778699d405331f2844d0dcd16d6f79096b59df0027b8774424ee5e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/instance--f17bee66c1be00265912c210.md) | 41 | `declaration-track:f17bee66c1be00265912c210b365d19bc8336c880f7fce9caf74483b1d03867e` |
| 3 | `theorem` | [le_dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/le-dirac-apply--b494c4597b3a2aa13a58b579.md) | 44 | `result-track:b494c4597b3a2aa13a58b579cbee4712a771e13bb10edb217e7e4dc0bc4d4552` |
| 4 | `theorem` | [dirac_apply'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-apply--6aaf3d4edd4a2647554a3eb0.md) | 48 | `result-track:6aaf3d4edd4a2647554a3eb073b6db89a6f3c1974249eccbaedee7e106829e81` |
| 5 | `theorem` | [dirac_apply_eq_zero_or_one](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-apply-eq-zero-or-one--fd0acd2ab01e1be879c38caa.md) | 51 | `result-track:fd0acd2ab01e1be879c38caa3c533be5b596fe3e3a05614fea25b90b3b7a81f9` |
| 6 | `theorem` | [dirac_apply_ne_zero_iff_eq_one](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-apply-ne-zero-iff-eq-one--bbf81a97dafe5f8d810c2d2f.md) | 59 | `result-track:bbf81a97dafe5f8d810c2d2f2af296b196d462aded604f9cce1f95d52c0d33a4` |
| 7 | `theorem` | [dirac_apply_ne_one_iff_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-apply-ne-one-iff-eq-zero--fe85da15cafafb444233291c.md) | 65 | `result-track:fe85da15cafafb444233291c3d8153a63a1cf893b9042969b248e4a5f497bbea` |
| 8 | `theorem` | [dirac_apply_of_mem](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-apply-of-mem--fd702a038918296965a39b65.md) | 71 | `result-track:fd702a038918296965a39b65bf917562e679e00f221a0e3cf1301a43f5484335` |
| 9 | `theorem` | [dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-apply--ebd0d93c914f4c672e21d78d.md) | 78 | `result-track:ebd0d93c914f4c672e21d78db0ecc69e0f8ecd4ca61ad1807badeb9efbd79c86` |
| 10 | `lemma` | [dirac_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-ne-zero--512d35abd0cfba7b4c3e3cb9.md) | 86 | `result-track:512d35abd0cfba7b4c3e3cb92c9a500f5c8b74e538bbcce114bb8886c270949b` |
| 11 | `theorem` | [map_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/map-dirac--d947da6252f01127e4277943.md) | 89 | `result-track:d947da6252f01127e42779439e146cc6831bb4775e0d09fa440ae8c7da52624e` |
| 12 | `lemma` | [map_const](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/map-const--d4d293118131e6651cc02e6b.md) | 94 | `result-track:d4d293118131e6651cc02e6b83428341a5a87bb051468afb7487b36f4ea10002` |
| 13 | `theorem` | [restrict_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/restrict-singleton--48f2fedb6cc1f83cce5f0791.md) | 105 | `result-track:48f2fedb6cc1f83cce5f0791f6b925f5c40830a5631c96027cce411db76f9d0a` |
| 14 | `theorem` | [ext_of_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/ext-of-singleton--238cafa7eef6f7a142f074d4.md) | 114 | `result-track:238cafa7eef6f7a142f074d45083e9b816ce4b3d8d3fe60913c2a80b62747deb` |
| 15 | `theorem` | [ext_iff_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/ext-iff-singleton--20e7e62a8dd3826ab7065dee.md) | 118 | `result-track:20e7e62a8dd3826ab7065deee0c0e45a6e48e635dd3cc702aee3f325235c22a0` |
| 16 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Dirac.Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.MeasureTheory.ext_iff_measureReal_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/root-grwtsk-analysis-measuretheory-dirac-variant45cb112e3cc559f58e64b8fd--7895ea35d15500809bd49d9b.md) | 121 | `result-track:7895ea35d15500809bd49d9b87129095d66f3a893d5286eb33739757427f70ae` |
| 17 | `theorem` | [map_eq_sum](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/map-eq-sum--4d65a39eabe66e94ea593c82.md) | 130 | `result-track:4d65a39eabe66e94ea593c82be8485b15e8a75e16bb1fa97495123acc3baa4a2` |
| 18 | `theorem` | [sum_smul_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/sum-smul-dirac--abe6d74a350a4ab61494be8b.md) | 139 | `result-track:abe6d74a350a4ab61494be8ba02a0d7a0d58fcfdff408b8ea43ee7259f4c1fee` |
| 19 | `theorem` | [tsum_indicator_apply_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/tsum-indicator-apply-singleton--ce6843676a0be230687ffbe1.md) | 144 | `result-track:ce6843676a0be230687ffbe1dab631af1b72bbabeef65bc59c5f93bf01cee4cc` |
| 20 | `theorem` | [mem_ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/mem-ae-dirac-iff--fff095658b9e01c8eef7c88e.md) | 158 | `result-track:fff095658b9e01c8eef7c88ecc301b261eabcec6abbceedd1a008a788d81a409` |
| 21 | `theorem` | [ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/ae-dirac-iff--e6d0fecd78eaa509d85c0f31.md) | 161 | `result-track:e6d0fecd78eaa509d85c0f3195a8aacedaf40473c3f5c8cebbd2483c01294187` |
| 22 | `theorem` | [ae_dirac_eq](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/ae-dirac-eq--32ae884ebba919dfe81ad047.md) | 166 | `result-track:32ae884ebba919dfe81ad047b8490c47decf80f565f8ab2580a43f8d447fc321` |
| 23 | `theorem` | [ae_eq_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/ae-eq-dirac--b1fe059ef96c2dc24cd9ead5.md) | 170 | `result-track:b1fe059ef96c2dc24cd9ead53d100dde8e580a405cdc7d876554f3e7a38ccad6` |
| 24 | `theorem` | [ae_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/ae-eq-dirac--38dd5e814c87033121ff463b.md) | 174 | `result-track:38dd5e814c87033121ff463b5103fd3ef2c4f60f8778cac0d34ac18e1eb4d843` |
| 25 | `lemma` | [aemeasurable_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/aemeasurable-dirac--d1b5b27066a2387c0ad83b68.md) | 178 | `result-track:d1b5b27066a2387c0ad83b68bc1e4c7adc41844746dba69c3bcb7c44d226bd6a` |
| 26 | `instance` | [Measure.dirac.isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/measure-dirac-isprobabilitymeasure--b9b73cd6fe1ebc1fd1478dc2.md) | 182 | `declaration-track:b9b73cd6fe1ebc1fd1478dc23d6a19f038509c4ca7c32f51947a3513ae5dd007` |
| 27 | `instance` | [Measure.dirac.instIsFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/measure-dirac-instisfinitemeasure--c95637cf182e7422f5961b2e.md) | 187 | `declaration-track:c95637cf182e7422f5961b2ebfd5e36062b83778603dee261072c1a73009c925` |
| 28 | `instance` | [Measure.dirac.instSigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/measure-dirac-instsigmafinite--97fe977d4e537499384a90d0.md) | 188 | `declaration-track:97fe977d4e537499384a90d06ac8980087407b8ef462a084994578b87e254fc0` |
| 29 | `theorem` | [restrict_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/restrict-dirac--f4d5b550caa5f6950ab535d6.md) | 190 | `result-track:f4d5b550caa5f6950ab535d63b14bc367b4755266328d3bc1dc8edcf1cd7b1f0` |
| 30 | `theorem` | [restrict_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/restrict-dirac--8b8694a7cc9715e1bad82238.md) | 197 | `result-track:8b8694a7cc9715e1bad82238f174825bd099c95fad6fb6cf476c022f31531db6` |
| 31 | `lemma` | [mutuallySingular_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/mutuallysingular-dirac--c2bda8c28844aa4aea578a20.md) | 204 | `result-track:c2bda8c28844aa4aea578a209d55e6e2ebfe0b82dc3e5b028c27f42677a88148` |
| 32 | `lemma` | [dirac_eq_dirac_iff_forall_mem_iff_mem](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-eq-dirac-iff-forall-mem-iff-mem--50411014a7446b57950f924c.md) | 212 | `result-track:50411014a7446b57950f924c720fc682580e00aeb62e14ea50c5c8ae1cd476fd` |
| 33 | `lemma` | [dirac_ne_dirac_iff_exists_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-ne-dirac-iff-exists-measurableset--d33fc9826e6dbc775bc5f3fa.md) | 234 | `result-track:d33fc9826e6dbc775bc5f3fa93139d13c5e6fd3633c6cf5514209919f9179c7a` |
| 34 | `lemma` | [dirac_ne_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-ne-dirac--bd627ab8d28fff6d67b110ce.md) | 246 | `result-track:bd627ab8d28fff6d67b110cece5789c93ff688a7826ee25afbee70c2679bd87c` |
| 35 | `lemma` | [dirac_ne_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-ne-dirac-iff--ecfd6941ada6cb1764e1afee.md) | 253 | `result-track:ecfd6941ada6cb1764e1afee48e2f28e6faea4d1c50199aac1f3e25b4bccb223` |
| 36 | `lemma` | [dirac_eq_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/dirac-eq-dirac-iff--15270178c20dc35dc622d556.md) | 259 | `result-track:15270178c20dc35dc622d55619a2a980629dce6f3eaac53a857f566587dfadcb` |
| 37 | `lemma` | [injective_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/declarations/injective-dirac--88641aa7e26115492967a0c2.md) | 263 | `result-track:88641aa7e26115492967a0c292dd98581e6ee6581920a089f45cd82db03c725f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
