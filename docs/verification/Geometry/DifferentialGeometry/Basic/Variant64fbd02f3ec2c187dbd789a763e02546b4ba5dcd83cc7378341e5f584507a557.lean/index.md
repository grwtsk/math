# Verification target: GRWTSK.Geometry.DifferentialGeometry.Basic.Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5296fbb115576f051f88f25372a75764296adb9b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5296fbb115576f051f88f25372a75764296adb9b`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffWithinAt.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-comp--966f458206c970358c52bb7b.md) | 59 | `result-track:966f458206c970358c52bb7b6ffc9200860cc1d3fd8224eb280237ddee6586be` |
| 2 | `theorem` | [ContMDiffWithinAt.comp_of_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-comp-of-eq--3a7ebb08751651fa9cfa2bfb.md) | 89 | `result-track:3a7ebb08751651fa9cfa2bfb0450f4b416318a7f6b58ea36b78552ecd327d4d1` |
| 3 | `theorem` | [ContMDiffOn.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-comp--e654980a11869b7da82e7801.md) | 97 | `result-track:e654980a11869b7da82e780121bf4b1ba62bdf1029f71c9d5242dfc7f2e5bce8` |
| 4 | `theorem` | [ContMDiffOn.comp'](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-comp--364257ebc110f7ccc8f0526a.md) | 104 | `result-track:364257ebc110f7ccc8f0526a69d163f9f2957bbac25c36cdfe4ff0ff28adc730` |
| 5 | `theorem` | [ContMDiff.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-comp--dbb76e6771db251f836d8fd6.md) | 111 | `result-track:dbb76e6771db251f836d8fd64b4c4445d6f9aedb0ab2993d763c6c3973105da8` |
| 6 | `theorem` | [ContMDiffWithinAt.comp'](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-comp--595305d5829768d29ba7c39a.md) | 119 | `result-track:595305d5829768d29ba7c39add5d93ec8aeaafe04385f3074681cf7aa82eaf8f` |
| 7 | `theorem` | [ContMDiffAt.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-comp-contmdiffwithinat--4d722b83352d24b7bf5c2549.md) | 128 | `result-track:4d722b83352d24b7bf5c254973443ad9ba4d067ca72507a12b597e526bbd612f` |
| 8 | `theorem` | [ContMDiffAt.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-comp--deb7fb5cede54c6c2c7f005c.md) | 137 | `result-track:deb7fb5cede54c6c2c7f005c1cb14f64e423856333d1f19bdda1ca66ae64d135` |
| 9 | `theorem` | [ContMDiffAt.comp_of_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-comp-of-eq--26c05195b02a064db319d577.md) | 142 | `result-track:26c05195b02a064db319d57710fcf64500827638c793d9d7455c4317c0fb8fab` |
| 10 | `theorem` | [ContMDiff.comp_contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-comp-contmdiffon--282ab8438c944a2d50fdc560.md) | 148 | `result-track:282ab8438c944a2d50fdc5600949cc75867f950ecd3c2d4e8692c1ac21869305` |
| 11 | `theorem` | [ContMDiffOn.comp_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-comp-contmdiff--0e7b866dc34ed30ae1aa256c.md) | 154 | `result-track:0e7b866dc34ed30ae1aa256cae1e1af6e3d503967219dae162b683b76a3ee692` |
| 12 | `theorem` | [contMDiff_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-id--556af075df6230248be224ec.md) | 166 | `result-track:556af075df6230248be224ec43d5b4321dc4b991aaacb52cee15e64439a4d898` |
| 13 | `theorem` | [contMDiffOn_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-id--572dd27b6fa84ba076f2cddc.md) | 172 | `result-track:572dd27b6fa84ba076f2cddc18d3618666db064521856cfabbb59ef5fd653c0f` |
| 14 | `theorem` | [contMDiffAt_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-id--c17b440dc596baee62d8e9f4.md) | 177 | `result-track:c17b440dc596baee62d8e9f4acc13d181a575bb0644f48f6a72c3385de672467` |
| 15 | `theorem` | [contMDiffWithinAt_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-id--b68b3c4801ff371e872dad9e.md) | 182 | `result-track:b68b3c4801ff371e872dad9e7e2d8e690b16f860de4df448ff4d02bfcd24033f` |
| 16 | `theorem` | [contMDiff_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-const--797c00c62c93698fc6c07813.md) | 194 | `result-track:797c00c62c93698fc6c078135439fa8df04c768ac02b56d1ff9a489a47974040` |
| 17 | `theorem` | [contMDiff_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-one--f960800e97b5853f02b7487f.md) | 201 | `result-track:f960800e97b5853f02b7487f735fc513beaeccda3bca24baffe92ca971f9024d` |
| 18 | `theorem` | [contMDiffOn_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-const--b88b89347ef2cdea52affe4f.md) | 209 | `result-track:b88b89347ef2cdea52affe4f1638f29a8468e602f97266f42eee61284053687c` |
| 19 | `theorem` | [contMDiffOn_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-one--cbec094a15566c602dfcb2d7.md) | 213 | `result-track:cbec094a15566c602dfcb2d735c5361d5a77419f33cf6310e2775a2b0714b85e` |
| 20 | `theorem` | [contMDiffAt_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-const--bf8d791ee5486cfa8b553542.md) | 222 | `result-track:bf8d791ee5486cfa8b553542942932137456677542f3c97e33a71bba34d0abf2` |
| 21 | `theorem` | [contMDiffAt_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-one--79ac63ce52012c0965fed4d5.md) | 226 | `result-track:79ac63ce52012c0965fed4d54242fdc453890f795cac3976c8513790187aaa22` |
| 22 | `theorem` | [contMDiffWithinAt_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-const--e576f6b12705623e5d1efdd9.md) | 234 | `result-track:e576f6b12705623e5d1efdd9dbfebc08b3223620035b00f7972e60c56ce0dece` |
| 23 | `theorem` | [contMDiffWithinAt_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-one--8cfeef9fea7b9a9c102e7c6b.md) | 238 | `result-track:8cfeef9fea7b9a9c102e7c6b068013975cd3468c2deb7ee45a42e38f2c80ae8d` |
| 24 | `theorem` | [contMDiff_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-of-subsingleton--5e704740c77e681e5e164e1f.md) | 247 | `result-track:5e704740c77e681e5e164e1fdbd49a7b90b7eae20bd3311e767400aad1193a5f` |
| 25 | `theorem` | [contMDiffAt_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-of-subsingleton--302aaf95368792bd6333a41c.md) | 253 | `result-track:302aaf95368792bd6333a41cd28bc42272930e3969457bcabefc2c40227410a1` |
| 26 | `theorem` | [contMDiffWithinAt_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-of-subsingleton--e8119a8952842a34048b2fae.md) | 257 | `result-track:e8119a8952842a34048b2fae2fb8727c7f660a256f2500ea4cd8c31bf09832bb` |
| 27 | `theorem` | [contMDiffOn_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-of-subsingleton--5e911cf57620faccca88e90a.md) | 261 | `result-track:5e911cf57620faccca88e90a225c299cea745c78236ac3ea7b04ce722b518690` |
| 28 | `lemma` | [contMDiff_of_discreteTopology](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-of-discretetopology--eaff519e024507d41705a374.md) | 264 | `result-track:eaff519e024507d41705a37444a1a92fab360fb66842bdb0286b82242279b6bd` |
| 29 | `theorem` | [contMDiff_of_mulTSupport](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-of-multsupport--34bfce036ee482f475686d28.md) | 277 | `result-track:34bfce036ee482f475686d286335ec38a6568e7ad46b39e16c19d32bb2a6c8a8` |
| 30 | `theorem` | [contMDiffWithinAt_of_notMem_mulTSupport](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffwithinat-of-notmem-multsupport--ba708d6973099ab0bae2ff65.md) | 286 | `result-track:ba708d6973099ab0bae2ff65a13d98d803bc7557905186b9bab0d369f2068d47` |
| 31 | `theorem` | [contMDiffAt_of_notMem_mulTSupport](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-of-notmem-multsupport--44cb4785456cc96604237f1a.md) | 300 | `result-track:44cb4785456cc96604237f1acd07d5d680a8850e5ddb87a101bfb4883c988fa1` |
| 32 | `theorem` | [contMDiffAt_subtype_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffat-subtype-iff--51dd946b5f992e995422b731.md) | 317 | `result-track:51dd946b5f992e995422b7310718c297a377b70c68bbeb906a025c447516024d` |
| 33 | `theorem` | [contMDiff_subtype_val](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-subtype-val--9111ac93c79b874ade2a619f.md) | 323 | `result-track:9111ac93c79b874ade2a619f92fc434db2d06393682cacd64d293d5907554a8b` |
| 34 | `theorem` | [ContMDiff.extend_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-extend-one--84a4a4044b1f3c465a18689f.md) | 328 | `result-track:84a4a4044b1f3c465a18689fcc3a177cc47fc4096af89839e507fbf83f034d2c` |
| 35 | `theorem` | [contMDiff_inclusion](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-inclusion--bec1e089ebcc115293784f83.md) | 339 | `result-track:bec1e089ebcc115293784f837d9a411721567a5abe047f6032196ebc4ae5d754` |
| 36 | `lemma` | [contMDiff_isOpenEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-isopenembedding--82deb7bf8e92c67775ddcb24.md) | 369 | `result-track:82deb7bf8e92c67775ddcb244177b205f8527f120b8e87afc46071ad4a3d9d28` |
| 37 | `lemma` | [contMDiffOn_isOpenEmbedding_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiffon-isopenembedding-symm--742967476d57057348a9a0c7.md) | 394 | `result-track:742967476d57057348a9a0c787b07ab01787389268ce4a2b8a695a04d60f9ba9` |
| 38 | `lemma` | [ContMDiff.of_comp_isOpenEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/declarations/contmdiff-of-comp-isopenembedding--4c1e534247faa7e54035de0c.md) | 422 | `result-track:4c1e534247faa7e54035de0c05e8502c8eb22676b1859bee394a442610de730e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
