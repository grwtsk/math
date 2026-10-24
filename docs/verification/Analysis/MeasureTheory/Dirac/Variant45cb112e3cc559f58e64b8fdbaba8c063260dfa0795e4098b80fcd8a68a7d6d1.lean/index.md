# Verification target: GRWTSK.Analysis.MeasureTheory.Dirac.Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "601633c6d26bea4c13b34b70336f641f56b6bd66",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `601633c6d26bea4c13b34b70336f641f56b6bd66`.

Source path: `GRWTSK/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.CountablyGenerated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MutuallySingular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NoAtoms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.SFinite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac--7dc9a8811ca920b27b1bbb81.md) | 31 | `declaration-track:7dc9a8811ca920b27b1bbb81e608eaca2fc5c5e30796ec07caac8ef514f5f37c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/instance--e6567fcaa12f689fbb3d9d27.md) | 33 | `declaration-track:e6567fcaa12f689fbb3d9d27060d3b5f65c906790633d0cc50a5489d00e2a54f` |
| 3 | `theorem` | [le_dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/le-dirac-apply--e76334ea1b6aaf603300512e.md) | 36 | `result-track:e76334ea1b6aaf603300512e3f1f29a242a53c126c41cba1a35d4d946fca743e` |
| 4 | `theorem` | [dirac_apply'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-apply--c499bd0b41689def96460759.md) | 40 | `result-track:c499bd0b41689def9646075991335ef546acaa1d963658531ea1ab5cb980a785` |
| 5 | `theorem` | [dirac_apply_eq_zero_or_one](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-apply-eq-zero-or-one--855b366b30076f44de3a6cc6.md) | 43 | `result-track:855b366b30076f44de3a6cc6c1e899e381960343beff2eacad9dff8426160775` |
| 6 | `theorem` | [dirac_apply_ne_zero_iff_eq_one](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-apply-ne-zero-iff-eq-one--179650923e3703ed64a2de5f.md) | 51 | `result-track:179650923e3703ed64a2de5ff9fc19e975c3949038cf0e954278b50cd7684a76` |
| 7 | `theorem` | [dirac_apply_ne_one_iff_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-apply-ne-one-iff-eq-zero--a6b5eb344fdd0a52da987551.md) | 57 | `result-track:a6b5eb344fdd0a52da987551e7ed649599ab4a8fb365122507492ac89e1c243c` |
| 8 | `theorem` | [dirac_apply_of_mem](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-apply-of-mem--0ebcdf44b490dc2261713573.md) | 63 | `result-track:0ebcdf44b490dc2261713573260baa0057508d39abfc3c4a554b34db6b85f75c` |
| 9 | `theorem` | [dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-apply--bab8407aefd349982f38c592.md) | 70 | `result-track:bab8407aefd349982f38c592fab3fb50212f37e381a7f17e9eeea2c1d477f36a` |
| 10 | `lemma` | [dirac_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-ne-zero--cdd02adee7fd1c328e534225.md) | 78 | `result-track:cdd02adee7fd1c328e534225584a65993e0d7d40a3667d0a667e0319b2089835` |
| 11 | `theorem` | [map_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/map-dirac--18239a3d59adbd26b8d493ff.md) | 81 | `result-track:18239a3d59adbd26b8d493ff71b65e2a6d802d7b958871d7cdcd93eafb71e1e8` |
| 12 | `lemma` | [map_const](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/map-const--ae2714a33dc9c89890e8c476.md) | 86 | `result-track:ae2714a33dc9c89890e8c476a6ff1af5d662cf4017e75b712ce017316ae2caca` |
| 13 | `theorem` | [restrict_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/restrict-singleton--a0f9387827e2dd07bec58442.md) | 97 | `result-track:a0f9387827e2dd07bec584423fdcaaa3699679f2a37f35d6b44efeec1e8ce25e` |
| 14 | `theorem` | [ext_of_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/ext-of-singleton--9048915a1e0f1cd0159e506b.md) | 106 | `result-track:9048915a1e0f1cd0159e506b4bad1f9ec7e398988d82d2d6b27f7ae1dc810b98` |
| 15 | `theorem` | [ext_iff_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/ext-iff-singleton--4c5bb0de8fd1ead5ea7f6fac.md) | 110 | `result-track:4c5bb0de8fd1ead5ea7f6fac443b278dd2becc0df84b90d4246807fdeb7a3611` |
| 16 | `theorem` | [_root_.MeasureTheory.ext_iff_measureReal_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/root-measuretheory-ext-iff-measurereal-singleton--465ed6699cabe7937aea47cc.md) | 113 | `result-track:465ed6699cabe7937aea47cc2f1ac87b4f4993368265de8be3bcdb74da5e6464` |
| 17 | `theorem` | [map_eq_sum](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/map-eq-sum--fc0532f931725d4163c59cdd.md) | 122 | `result-track:fc0532f931725d4163c59cdda37c9d3cba2414bc3fc065d791586bbd484e5ff4` |
| 18 | `theorem` | [sum_smul_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/sum-smul-dirac--14ac6682bd74bbaa1f5ca2f7.md) | 131 | `result-track:14ac6682bd74bbaa1f5ca2f7ae3fd338f1ebb124e447cac4a98a55c569cc640b` |
| 19 | `theorem` | [tsum_indicator_apply_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/tsum-indicator-apply-singleton--3b0d334b8a1d3d1090f4b215.md) | 136 | `result-track:3b0d334b8a1d3d1090f4b215a49e8f8e21b5d06db703def0ee7ea034c3a101b5` |
| 20 | `theorem` | [mem_ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/mem-ae-dirac-iff--b241a7b276fe2664839eaabf.md) | 150 | `result-track:b241a7b276fe2664839eaabf1021e158e0dbe91eaf0f030e8c9d88cb91d8d327` |
| 21 | `theorem` | [ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/ae-dirac-iff--e04364e99cb066ff7f96d816.md) | 153 | `result-track:e04364e99cb066ff7f96d81651a374b6dee0da1fa46b5e137224f46420d27219` |
| 22 | `theorem` | [ae_dirac_eq](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/ae-dirac-eq--db56d792bf7dd2956d1010b8.md) | 158 | `result-track:db56d792bf7dd2956d1010b8125c31c2389e5d1b8808c94efd54f8b13015b6cc` |
| 23 | `theorem` | [ae_eq_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/ae-eq-dirac--5a9058dc020e6e9f2cde8d9b.md) | 162 | `result-track:5a9058dc020e6e9f2cde8d9bff40b1fec7d7bcb130523e6f615fa65376a26515` |
| 24 | `theorem` | [ae_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/ae-eq-dirac--aeee2c123675e906410921f9.md) | 166 | `result-track:aeee2c123675e906410921f92432cab5d3cf9ddb6cde2da6ff31394daf475a43` |
| 25 | `lemma` | [aemeasurable_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/aemeasurable-dirac--f2edecd1fbaa8b6dd34c2191.md) | 170 | `result-track:f2edecd1fbaa8b6dd34c21918d747e8186f3b74998218771f0ee58103be77e25` |
| 26 | `instance` | [Measure.dirac.isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/measure-dirac-isprobabilitymeasure--78b03e07662f7e574c01112e.md) | 174 | `declaration-track:78b03e07662f7e574c01112e109ee906c7de18789e2c3c2d81b5c8cddc3801f5` |
| 27 | `instance` | [Measure.dirac.instIsFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/measure-dirac-instisfinitemeasure--a3436a6922aa6063e9e76847.md) | 179 | `declaration-track:a3436a6922aa6063e9e768470022ee2d0929b3889796df53179ab2d2689985a6` |
| 28 | `instance` | [Measure.dirac.instSigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/measure-dirac-instsigmafinite--1b22c985c8ad27cadfc9d3b1.md) | 180 | `declaration-track:1b22c985c8ad27cadfc9d3b177b573ea9238cd0d7f5efb458e1d4182a76e9752` |
| 29 | `theorem` | [restrict_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/restrict-dirac--880cfaedd7f72e5f36c74117.md) | 182 | `result-track:880cfaedd7f72e5f36c74117450dc4d0db97e381b4e6c2e15dfba6bd3d38ecca` |
| 30 | `theorem` | [restrict_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/restrict-dirac--2231ceec649e771391329b44.md) | 189 | `result-track:2231ceec649e771391329b44a2d330862739cbd6705bbf5855662a56f2dd3a5a` |
| 31 | `lemma` | [mutuallySingular_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/mutuallysingular-dirac--e8b1788a3a648673130052f1.md) | 196 | `result-track:e8b1788a3a648673130052f15df76196241186914789cd9106e2716fc28e9661` |
| 32 | `lemma` | [dirac_eq_dirac_iff_forall_mem_iff_mem](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-eq-dirac-iff-forall-mem-iff-mem--1d7f2e10b0156a4ffb0c1b3f.md) | 204 | `result-track:1d7f2e10b0156a4ffb0c1b3f6e3871402b27855a2934fe7144e1934d016ccbac` |
| 33 | `lemma` | [dirac_ne_dirac_iff_exists_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-ne-dirac-iff-exists-measurableset--784fa78aad2b78bab5b3e7ec.md) | 226 | `result-track:784fa78aad2b78bab5b3e7ec0a2f4f19d84ddfa933d85240754b670ab6c5084b` |
| 34 | `lemma` | [dirac_ne_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-ne-dirac--7bc9b1adf24f90ff4215bb4c.md) | 238 | `result-track:7bc9b1adf24f90ff4215bb4c1d8a78aa41587b3482ab965880b33c6d274035b9` |
| 35 | `lemma` | [dirac_ne_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-ne-dirac-iff--face26c8810ff6f5ebed4fe1.md) | 245 | `result-track:face26c8810ff6f5ebed4fe1592106893ff7d6d7c4588a9d886ffcb5a101cbff` |
| 36 | `lemma` | [dirac_eq_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/dirac-eq-dirac-iff--995143ac909db8e2c7dd60a7.md) | 251 | `result-track:995143ac909db8e2c7dd60a7bb87df00436eae0d50d0cbec3f371dcdc8e81021` |
| 37 | `lemma` | [injective_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant45cb112e3cc559f58e64b8fdbaba8c063260dfa0795e4098b80fcd8a68a7d6d1.lean/declarations/injective-dirac--673ad2cdc4d3d06920456747.md) | 255 | `result-track:673ad2cdc4d3d0692045674734292293d88470c69d3d7f6f789b79ff71c3a181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
