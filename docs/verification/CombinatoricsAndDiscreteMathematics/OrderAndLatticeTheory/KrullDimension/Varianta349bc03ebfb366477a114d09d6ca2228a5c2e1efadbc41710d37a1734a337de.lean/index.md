# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KrullDimension.Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60eb76ac051aa3ba6b216bcae549255fb606bca7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60eb76ac051aa3ba6b216bcae549255fb606bca7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Monotone.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WithBot` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrictSeries](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/strictseries--178ef0544af9147c4a31baad.md) | 38 | `declaration-track:178ef0544af9147c4a31baada92628e511acd309622122e197908c99276f9a58` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/instance--28aa8504ff71e8d86aa88dd7.md) | 48 | `declaration-track:28aa8504ff71e8d86aa88dd77b0d68c770a2e7124461e1c24e67156a2d8cc21c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/instance--8e8b07f1dab61bcbfd6b464e.md) | 51 | `declaration-track:8e8b07f1dab61bcbfd6b464eeee51c1b1f643decd7409a5669b1c07efda6799d` |
| 4 | `lemma` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/le-def--d9963076a8254b573743b812.md) | 56 | `result-track:d9963076a8254b573743b812b8599b60596a32971f3c323b6fc3cba65ac319a8` |
| 5 | `lemma` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/lt-def--04b6278c799351d46049787e.md) | 59 | `result-track:04b6278c799351d46049787ef5512b5f54fca27fc813968c9f2f872c5e0ee0b6` |
| 6 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/singleton--f10934469055eb31cc208c64.md) | 65 | `declaration-track:f10934469055eb31cc208c6441430b5d44889b3fec6139746cd31072eb0e5d49` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/instance--5db3f022ca3158b48316ba87.md) | 70 | `declaration-track:5db3f022ca3158b48316ba87efa9ade2f1df014382523428e37615d74621dc6a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/instance--3655d19663d5928c0f6ee174.md) | 73 | `declaration-track:3655d19663d5928c0f6ee1741710af0f92b8703398baffca28e9827f76393913` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/instance--311e9e74f144a6d6ad5041ef.md) | 76 | `declaration-track:311e9e74f144a6d6ad5041ef542fc3547df5213fef972152f2024aef66c54b1c` |
| 10 | `lemma` | [top_len_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/top-len-unique--b778ce5d82ac9451d6839c73.md) | 79 | `result-track:b778ce5d82ac9451d6839c730a03f8ba3f477cb54f3248fe0add6053068eeca7` |
| 11 | `lemma` | [top_len_unique'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/top-len-unique--2215fdf12207d40d7dffeced.md) | 83 | `result-track:2215fdf12207d40d7dffeced1a17b8fb260b8c5f1ac46a49c2b4987437c1e8fd` |
| 12 | `def` | [krullDim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/krulldim--4e548554515b5fdcf63376f4.md) | 94 | `declaration-track:4e548554515b5fdcf63376f4c9059324428d471ec5009d26080327fcdecd9a5d` |
| 13 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/height--4304ce33badf8c6ba1f71a08.md) | 100 | `declaration-track:4304ce33badf8c6ba1f71a08c1535ced2e81a7f2cde7bc788d8f8beed6f2ec6e` |
| 14 | `def` | [coheight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean/declarations/coheight--2eb9e036051f7ee46f4e7cde.md) | 105 | `declaration-track:2eb9e036051f7ee46f4e7cdeffb7efe703f8037638955dcaded5f41614a3c49f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
