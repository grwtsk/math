# Verification target: GRWTSK.Analysis.MeasureTheory.Convolution.Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9257db543426a423daf5317297ead6cdc4c1dbcd",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9257db543426a423daf5317297ead6cdc4c1dbcd`.

Source path: `GRWTSK/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mconv](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/mconv--140b89147117fddeb791aceb.md) | 31 | `declaration-track:140b89147117fddeb791aceb5339644e41afae74ef5fd7da14f99f1ae99773b0` |
| 2 | `theorem` | [lintegral_mconv](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/lintegral-mconv--3998f73f8f492eb2183b494a.md) | 41 | `result-track:3998f73f8f492eb2183b494a2bcbc42281eb9daca296f755f1fa667486995cff` |
| 3 | `theorem` | [dirac_one_mconv](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/dirac-one-mconv--2956adac4d29b3da4a43cb75.md) | 49 | `result-track:2956adac4d29b3da4a43cb7508464b637c44b572e37b6634eb0a2ca88590891e` |
| 4 | `theorem` | [mconv_dirac_one](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/mconv-dirac-one--1b2f0bd6d17d77b31292b035.md) | 58 | `result-track:1b2f0bd6d17d77b31292b035178a76c3e30c8289a72d32d76330a93f4b7f4944` |
| 5 | `theorem` | [zero_mconv](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/zero-mconv--94a717da718ef4544d02411a.md) | 68 | `result-track:94a717da718ef4544d02411a096f805f1c915d1adc0a3872366c17a0305045c0` |
| 6 | `theorem` | [mconv_zero](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/mconv-zero--5c0ab8daa5c7f161d93f8078.md) | 75 | `result-track:5c0ab8daa5c7f161d93f80783fe27ae4eac7b16587a506ca38af59ed9e6f498b` |
| 7 | `theorem` | [mconv_add](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/mconv-add--3c16b3b5e7bd1bca9dea3b76.md) | 80 | `result-track:3c16b3b5e7bd1bca9dea3b7665fa63ea2db5c655c349e2ee21c67c0c9cc7dc25` |
| 8 | `theorem` | [add_mconv](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/add-mconv--e780b50f69932f309eab58f7.md) | 87 | `result-track:e780b50f69932f309eab58f790d34573bc25df23efa47d1b040d6252d3ffa5ad` |
| 9 | `theorem` | [mconv_comm](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/mconv-comm--fd7e7c6bf2aa9a801442f6b4.md) | 95 | `result-track:fd7e7c6bf2aa9a801442f6b440d3ed6760c1b046c7c3999ac0a5eeed7973f963` |
| 10 | `instance` | [sfinite_mconv_of_sfinite](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/sfinite-mconv-of-sfinite--a3df24d609e045fdf2c824de.md) | 104 | `declaration-track:a3df24d609e045fdf2c824deff53cc3e036b7c92baad6fa080cff62de67a8ee4` |
| 11 | `instance` | [finite_of_finite_mconv](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/finite-of-finite-mconv--52fe39b76bc6ead436061732.md) | 108 | `declaration-track:52fe39b76bc6ead43606173275415287ddd51e1506c05c65772c68de4a8098f9` |
| 12 | `theorem` | [mconv_assoc](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/mconv-assoc--b7294470dfe89f518328dc77.md) | 117 | `result-track:b7294470dfe89f518328dc7714b4d52119d53415c8f9860ffe4e5d2ccc3e2eb3` |
| 13 | `instance` | [probabilitymeasure_of_probabilitymeasures_mconv](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/probabilitymeasure-of-probabilitymeasures-mconv--4ff197a9c75747a9c7d19257.md) | 128 | `declaration-track:4ff197a9c75747a9c7d1925707d682feb16c7246aa23e367d87d34829cfb4498` |
| 14 | `lemma` | [map_mconv_monoidHom](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/map-mconv-monoidhom--38fb1dd76a1bf3858ceb051e.md) | 134 | `result-track:38fb1dd76a1bf3858ceb051e30f8e2caf0fc8d7934bd157a578bcc4d4fcb4040` |
| 15 | `lemma` | [map_conv_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/declarations/map-conv-continuouslinearmap--7aed81e1f26e43f88ac4453e.md) | 146 | `result-track:7aed81e1f26e43f88ac4453ed4c39f9417a9e5717ced230e5b0dabbfb00ab544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
