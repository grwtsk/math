# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Iterate.Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05f831756e6a4351a922a2f11664c5b172cccfb8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05f831756e6a4351a922a2f11664c5b172cccfb8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [seq_le_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/seq-le-seq--42d4305f1ac18c098a4bdf02.md) | 40 | `result-track:42d4305f1ac18c098a4bdf0233a54bd679232abadd492fe764e699a40e967ab9` |
| 2 | `theorem` | [seq_pos_lt_seq_of_lt_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/seq-pos-lt-seq-of-lt-of-le--6717b4dc2fbab33b4fb019f8.md) | 49 | `result-track:6717b4dc2fbab33b4fb019f89ebf516400cc8f80970f48e4250d887600808895` |
| 3 | `theorem` | [seq_pos_lt_seq_of_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/seq-pos-lt-seq-of-le-of-lt--ac495808f9a1897aac3443b4.md) | 61 | `result-track:ac495808f9a1897aac3443b469389c7c3e20177fed2493643d17305f95804caf` |
| 4 | `theorem` | [seq_lt_seq_of_lt_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/seq-lt-seq-of-lt-of-le--210c16b1f64518f7232f188c.md) | 65 | `result-track:210c16b1f64518f7232f188cd6ec5a72223479b1dab3cdaa8df368543dd0a564` |
| 5 | `theorem` | [seq_lt_seq_of_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/seq-lt-seq-of-le-of-lt--f823302c57eab4b94562bc5d.md) | 70 | `result-track:f823302c57eab4b94562bc5dd6e6b011509e27bdfadb9e0b351b390797870137` |
| 6 | `theorem` | [le_iterate_comp_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/le-iterate-comp-of-le--750c0189d396177f87bc747f.md) | 89 | `result-track:750c0189d396177f87bc747fbfd4c6dff9383a3dfb4e5b21f1aa8f67b41ab9a9` |
| 7 | `theorem` | [iterate_comp_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-comp-le-of-le--d994b15d3395c441bf91ea08.md) | 95 | `result-track:d994b15d3395c441bf91ea08382d0c979c5bdb17c9156a324ffaf6272c18814c` |
| 8 | `theorem` | [iterate_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-le-of-le--4675bee1f0ee2d4245dbf509.md) | 100 | `result-track:4675bee1f0ee2d4245dbf509494fbda7355bb63cb736ba76bf9d21e6a7e2de85` |
| 9 | `theorem` | [le_iterate_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/le-iterate-of-le--43a228f72822bf59e1ab478f.md) | 104 | `result-track:43a228f72822bf59e1ab478fe7163bdabef01378ebd8265e9ede9ffcf128d8dd` |
| 10 | `theorem` | [id_le_iterate_of_id_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/id-le-iterate-of-id-le--16ec2f646220b4d1e7da2efd.md) | 125 | `result-track:16ec2f646220b4d1e7da2efdbbb6ec772bbe092ffbb2820a54319dcae6f21f2b` |
| 11 | `theorem` | [iterate_le_id_of_le_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-le-id-of-le-id--8d106d45bee166be67986f69.md) | 128 | `result-track:8d106d45bee166be67986f69f26cd6370a3024e86cf0217202d3ad5b15fd3323` |
| 12 | `theorem` | [monotone_iterate_of_id_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/monotone-iterate-of-id-le--9c36258bd93dcf68a31ec018.md) | 131 | `result-track:9c36258bd93dcf68a31ec018cdaa6cc5f692a3c1576862d7048b5328a8dbfa7c` |
| 13 | `theorem` | [antitone_iterate_of_le_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/antitone-iterate-of-le-id--3f855a1284ba0e7348005c61.md) | 136 | `result-track:3f855a1284ba0e7348005c61fcf650cd9116c52f9f83918b8dbd16c9de192aed` |
| 14 | `theorem` | [iterate_le_of_map_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-le-of-map-le--42fae23af6b77a20ed0cf841.md) | 156 | `result-track:42fae23af6b77a20ed0cf84193758bd9f4556470e3a38d6f0456e44be04bd26f` |
| 15 | `theorem` | [iterate_pos_lt_of_map_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-pos-lt-of-map-lt--fa8090c21698fcee7a9ac1fa.md) | 163 | `result-track:fa8090c21698fcee7a9ac1facd75826c2182bc364cdf0d0730f2c9b720b19227` |
| 16 | `theorem` | [iterate_pos_lt_of_map_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-pos-lt-of-map-lt--1b60399bd79a7323de477d91.md) | 170 | `result-track:1b60399bd79a7323de477d9104154bcb6f435678f3a3ee7c3029c05c1acd3b0c` |
| 17 | `theorem` | [iterate_pos_lt_iff_map_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-pos-lt-iff-map-lt--afd1a9758e4fc8614bcc3d92.md) | 178 | `result-track:afd1a9758e4fc8614bcc3d92506bd844b59910f4830d02250a44d50599777dc9` |
| 18 | `theorem` | [iterate_pos_lt_iff_map_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-pos-lt-iff-map-lt--3fd4bf1c31cb0752b31e8fbe.md) | 185 | `result-track:3fd4bf1c31cb0752b31e8fbe8bec491893a63096d6afeeb658426f94c33c0a58` |
| 19 | `theorem` | [iterate_pos_le_iff_map_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-pos-le-iff-map-le--af4ed1cc9473bb8d2fa0996e.md) | 189 | `result-track:af4ed1cc9473bb8d2fa0996ec1d14ba2ea86cf9236db34d2eaee121785ecd269` |
| 20 | `theorem` | [iterate_pos_le_iff_map_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-pos-le-iff-map-le--e8b5f6b37b4e9cda464530d5.md) | 193 | `result-track:e8b5f6b37b4e9cda464530d5cf4edfd240062fd9cfed5ff455e46255258ba791` |
| 21 | `theorem` | [iterate_pos_eq_iff_map_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/iterate-pos-eq-iff-map-eq--a667f3fdc2e09c4eb59e2e8b.md) | 197 | `result-track:a667f3fdc2e09c4eb59e2e8bb149970cfc54881030d39330887d3f7e8db697aa` |
| 22 | `theorem` | [monotone_iterate_of_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/monotone-iterate-of-le-map--d477913595c92ccef618a95d.md) | 212 | `result-track:d477913595c92ccef618a95dd15dcb3b37915924be254c353946253fdb7c5640` |
| 23 | `theorem` | [antitone_iterate_of_map_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/antitone-iterate-of-map-le--2d957685014c6472e15354b7.md) | 219 | `result-track:2d957685014c6472e15354b7633cf2ab09e59c67b5b16a4e21456e1c687272ef` |
| 24 | `theorem` | [strictMono_iterate_of_lt_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/strictmono-iterate-of-lt-map--07763ca56f7a2ed5ea5d3f66.md) | 230 | `result-track:07763ca56f7a2ed5ea5d3f660736f7fd13d8a11581515162d55e010834fe758a` |
| 25 | `theorem` | [strictAnti_iterate_of_map_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variant0c8a2a4878401afcf30171b3c02e80dccf421c449d3bea92d575668e24b524e0.lean/declarations/strictanti-iterate-of-map-lt--58bf56ac5b850fb1502d5ca8.md) | 238 | `result-track:58bf56ac5b850fb1502d5ca80fcc67f94f53b7284ce914540ccfb411c61cfc2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
