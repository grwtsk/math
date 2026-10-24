# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Circulant.Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e10531455fd7c9dc90db8ae9320f7dd352ff8a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e10531455fd7c9dc90db8ae9320f7dd352ff8a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Hasse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circulantGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/circulantgraph--1631daf74d2fe25a36ae69cd.md) | 35 | `declaration-track:1631daf74d2fe25a36ae69cda2fb03bbbc79710ccaa852289489040ad1291ecf` |
| 2 | `theorem` | [circulantGraph_eq_erase_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/circulantgraph-eq-erase-zero--0e85eb4cbd28937fe15fd979.md) | 40 | `result-track:0e85eb4cbd28937fe15fd979d598f3eabf1116ee9789cda551bc0669704abfd3` |
| 3 | `theorem` | [circulantGraph_eq_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/circulantgraph-eq-symm--323819ee137206cc392cb8ac.md) | 54 | `result-track:323819ee137206cc392cb8acacdbdcb7f3a1191e50324d5160fc26f13dfd73ba` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/instance--a96ea23615c0f58e973d60f3.md) | 61 | `declaration-track:a96ea23615c0f58e973d60f3b3108be7969c400e5790c1581f0e4805d16cc08d` |
| 5 | `theorem` | [circulantGraph_adj_translate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/circulantgraph-adj-translate--527e8f8593fc33b54c6ebd61.md) | 64 | `result-track:527e8f8593fc33b54c6ebd61dd58b78d16f3dab40de5f9e1248438f863f0cf90` |
| 6 | `def` | [cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph--ba596c56110604619d2aaa1f.md) | 68 | `declaration-track:ba596c56110604619d2aaa1f74670d1c285972ef1c8369b1678fe66b9d6d9467` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/instance--b293e918f3bbaa75e9159fa7.md) | 72 | `declaration-track:b293e918f3bbaa75e9159fa7f5537656d7e3ab60e834b9fda86d77153ce35467` |
| 8 | `theorem` | [cycleGraph_zero_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-zero-adj--65bfb1ea19082624a9781320.md) | 76 | `result-track:65bfb1ea19082624a978132095c3c8e371e92d8ca29a420444531fec94889b5c` |
| 9 | `theorem` | [cycleGraph_zero_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-zero-eq-bot--f1f3092b813a56fdfb226831.md) | 78 | `result-track:f1f3092b813a56fdfb226831ad5b33b69b2b9b6d9737b47ee98ddd1c8eda91ad` |
| 10 | `theorem` | [cycleGraph_one_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-one-eq-bot--cbdd1c680a82b98ffae52b31.md) | 79 | `result-track:cbdd1c680a82b98ffae52b3137b4ff7e2511cb2f8f67a0b72b7f21d463d091a4` |
| 11 | `theorem` | [cycleGraph_zero_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-zero-eq-top--a651daccf2e081210dd6e30e.md) | 80 | `result-track:a651daccf2e081210dd6e30e2dfda17085b4a94b782ddbd7f74a9d4cc46915fe` |
| 12 | `theorem` | [cycleGraph_one_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-one-eq-top--420a27efc13126947dfe0608.md) | 81 | `result-track:420a27efc13126947dfe0608b0a2de0d9506f6175ea314f31e33d59e820e992b` |
| 13 | `theorem` | [cycleGraph_two_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-two-eq-top--0ebdd0bf92a600e8935d6b17.md) | 83 | `result-track:0ebdd0bf92a600e8935d6b17383032370fee5a7293a60c1a20047636515c46a3` |
| 14 | `theorem` | [cycleGraph_three_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-three-eq-top--25dc29ba7def5b77ca86d170.md) | 87 | `result-track:25dc29ba7def5b77ca86d1707a7febe74f2c82bdddb1b5b9334e195c893bf532` |
| 15 | `theorem` | [cycleGraph_one_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-one-adj--1e9d94a66bb98ac938ab3eb1.md) | 91 | `result-track:1e9d94a66bb98ac938ab3eb1af5757a37db31254f5da5f67fa988f0b0c1cbbcc` |
| 16 | `theorem` | [cycleGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-adj--9d70705751172245d27cc4e7.md) | 95 | `result-track:9d70705751172245d27cc4e754162741046a66fe8e15f6838232d3c5d05763b1` |
| 17 | `theorem` | [cycleGraph_adj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-adj--6ed0a03ae76adbe2dc356bc7.md) | 101 | `result-track:6ed0a03ae76adbe2dc356bc724e57c0aa0ea38b3048aace8f978d4dc583c85fa` |
| 18 | `theorem` | [cycleGraph_neighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-neighborset--580a7b1b62b5d502cd98e8cf.md) | 108 | `result-track:580a7b1b62b5d502cd98e8cfe154a4025aed752eab9ce01562eae663775ad8bc` |
| 19 | `theorem` | [cycleGraph_neighborFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-neighborfinset--192d7558095d9ffc9b92454a.md) | 114 | `result-track:192d7558095d9ffc9b92454a2d428c49b6b0a7888f04c630fea9a9f645212755` |
| 20 | `theorem` | [cycleGraph_degree_two_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-degree-two-le--07bead371a3ccd690cc13b73.md) | 118 | `result-track:07bead371a3ccd690cc13b73f2757c378219248b43d11fbf55c1280e0be87c83` |
| 21 | `theorem` | [cycleGraph_degree_three_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-degree-three-le--6ade5becee5c87fdf1c020d2.md) | 122 | `result-track:6ade5becee5c87fdf1c020d27e0d73bf46259d0f6a561083d8009db89113ffac` |
| 22 | `theorem` | [pathGraph_le_cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/pathgraph-le-cyclegraph--c71e1cd513ac2c9cbe5f89cb.md) | 128 | `result-track:c71e1cd513ac2c9cbe5f89cba3ce4f1322f32ee8e4ec1ab5df34f13e4896bdb0` |
| 23 | `theorem` | [cycleGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-preconnected--1e046d4a63c54cb0fe86a3d8.md) | 139 | `result-track:1e046d4a63c54cb0fe86a3d8182e928d7aae9a0a685cd3d0ceb376a12fa4ad93` |
| 24 | `theorem` | [cycleGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-connected--481e834e7038db465033bb1e.md) | 142 | `result-track:481e834e7038db465033bb1e696881a452867f361cb2ab6a601c1343b4e99274` |
| 25 | `def` | [cycleGraph_EulerianCircuit_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-euleriancircuit-cons--98a81c6f175fd5a295c769d1.md) | 145 | `declaration-track:98a81c6f175fd5a295c769d188dea80d848f44a17082773e80ff618735637d7a` |
| 26 | `def` | [cycleGraph_EulerianCircuit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-euleriancircuit--802a628570119cbdde6bcbae.md) | 154 | `declaration-track:802a628570119cbdde6bcbae470989cc9440590e8f26db045eeec6ffd7005d1a` |
| 27 | `theorem` | [cycleGraph_EulerianCircuit_cons_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-euleriancircuit-cons-length--139b2c6adf9cc41cab37c8f8.md) | 159 | `result-track:139b2c6adf9cc41cab37c8f8f9e1000e5a4e4b1f04752e20d35ded05f555ec7f` |
| 28 | `theorem` | [cycleGraph_EulerianCircuit_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean/declarations/cyclegraph-euleriancircuit-length--edcd7ff0ad76831c20defc02.md) | 169 | `result-track:edcd7ff0ad76831c20defc02a9f39dbba5c59d5c0534bc5d30c8ec4c6909db21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
