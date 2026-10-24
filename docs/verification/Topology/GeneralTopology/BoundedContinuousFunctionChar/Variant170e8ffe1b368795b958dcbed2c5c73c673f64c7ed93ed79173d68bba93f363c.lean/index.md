# Verification target: GRWTSK.Topology.GeneralTopology.BoundedContinuousFunctionChar.Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4347c6da611cf6886e8db342774a4e53785b32f6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4347c6da611cf6886e8db342774a4e53785b32f6`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Circle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [char](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/char--ccf15c777f741f497e0081ce.md) | 48 | `declaration-track:ccf15c777f741f497e0081ce707ef8a72a2641bbd936edbdce4f338a7a78228a` |
| 2 | `lemma` | [char_apply](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/char-apply--44409089ed4ee53bab1af14d.md) | 62 | `result-track:44409089ed4ee53bab1af14d2bf9b13d7b1e07a7e3971527215a433120cdbe88` |
| 3 | `lemma` | [char_zero_eq_one](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/char-zero-eq-one--6d86c94f03d3b472848f7683.md) | 66 | `result-track:6d86c94f03d3b472848f7683887e43930dae13cd04d0af6b54bad14687fb01c9` |
| 4 | `lemma` | [char_add_eq_mul](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/char-add-eq-mul--2d86999f55eeb33ec1d59c8e.md) | 68 | `result-track:2d86999f55eeb33ec1d59c8e1215f7b2f66fd203e8b23959299c57536a5920a5` |
| 5 | `lemma` | [char_neg](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/char-neg--a2a3f4daa070556e572c1e03.md) | 73 | `result-track:a2a3f4daa070556e572c1e0322ef1634d3b0a7fa5605c0012ed177a3a39997e9` |
| 6 | `theorem` | [ext_of_char_eq](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/ext-of-char-eq--9be82a0b437b654b9c5e6fce.md) | 77 | `result-track:9be82a0b437b654b9c5e6fceac1a9ca02b3e3a039242299c8c60ec60724b6ccf` |
| 7 | `def` | [charMonoidHom](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/charmonoidhom--176500ad6bc88b43f55db042.md) | 103 | `declaration-track:176500ad6bc88b43f55db042343c841f187ce29ce0333996d4c9bf9ccd407682` |
| 8 | `lemma` | [charMonoidHom_apply](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/charmonoidhom-apply--8652875c9e7a8e52c09e55aa.md) | 110 | `result-track:8652875c9e7a8e52c09e55aae9e60c568fde95c819fbdf04fbaaecea7f499e10` |
| 9 | `def` | [charAlgHom](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/charalghom--11cbb1127a26001c6b08ec7b.md) | 115 | `declaration-track:11cbb1127a26001c6b08ec7bcb56b0a65fbf8f239a04c0960d7280cdf475640a` |
| 10 | `lemma` | [charAlgHom_apply](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/charalghom-apply--b4656c9feb00d8fe59c087fb.md) | 120 | `result-track:b4656c9feb00d8fe59c087fb875a1e25f7e41a6b2caaee00959a7122bfda2cb0` |
| 11 | `lemma` | [star_mem_range_charAlgHom](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/star-mem-range-charalghom--e6c5b5261ac73fc89360467d.md) | 129 | `result-track:e6c5b5261ac73fc89360467d11b217441c6e5c5eba025e1563067907f31a16ef` |
| 12 | `def` | [charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/charpoly--57f241e7d35165cbd99d4b9c.md) | 145 | `declaration-track:57f241e7d35165cbd99d4b9c70516b89453389369338108612bdc70d65a67410` |
| 13 | `lemma` | [mem_charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/mem-charpoly--9e86aa3b67a06cedc1959570.md) | 150 | `result-track:9e86aa3b67a06cedc195957027b82aae4fa009181bb432e61de1bf4aac3ec6eb` |
| 14 | `lemma` | [char_mem_charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/char-mem-charpoly--8d9e518840643e4dac405a68.md) | 156 | `result-track:8d9e518840643e4dac405a680c583bdfa0c2837f1ebb1ddfdf7f8f7abf178ed1` |
| 15 | `lemma` | [separatesPoints_charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/declarations/separatespoints-charpoly--6e14a0ca1485e83f657bc1ab.md) | 167 | `result-track:6e14a0ca1485e83f657bc1abc9849e7e4791f226c593c0103fa98fe490511b70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
