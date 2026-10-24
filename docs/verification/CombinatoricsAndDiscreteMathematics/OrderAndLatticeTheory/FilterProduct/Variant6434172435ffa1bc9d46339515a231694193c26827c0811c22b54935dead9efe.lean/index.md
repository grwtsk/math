# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FilterProduct.Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93a5fb6ede0c18f3968de0f6bd308f66dc6b4f4b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93a5fb6ede0c18f3968de0f6bd308f66dc6b4f4b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instGroupWithZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/instgroupwithzero--cd3dca0a4059ff34e710a99d.md) | 46 | `declaration-track:cd3dca0a4059ff34e710a99d4cabe7e3faf86919f38d8fa00d9be2c92ba0b690` |
| 2 | `instance` | [instDivisionSemiring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/instdivisionsemiring--745c1ef69213ae805601e40d.md) | 53 | `declaration-track:745c1ef69213ae805601e40d474130b67f0f5b825e6837db017cc1bb176c92dc` |
| 3 | `instance` | [instDivisionRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/instdivisionring--607702dfb1bd6ab364ba5070.md) | 59 | `declaration-track:607702dfb1bd6ab364ba50704b4f02e11caef1f0019517fca1602bd62232a58a` |
| 4 | `instance` | [instSemifield](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/instsemifield--6075f00d55db3a1c9697c6a6.md) | 65 | `declaration-track:6075f00d55db3a1c9697c6a61a06fdbb3be551aebd6ad28eb767f22b61b318f8` |
| 5 | `instance` | [instField](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/instfield--ae03203c4c70d89db8b5a9bf.md) | 69 | `declaration-track:ae03203c4c70d89db8b5a9bffde0d1e12e611faed457bdbfca67b521f4339c4e` |
| 6 | `theorem` | [coe_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/coe-lt--51522272bca9f8e3eeabee65.md) | 73 | `result-track:51522272bca9f8e3eeabee65e571af20fb9e1414bed1792f02c0e3b49327760e` |
| 7 | `theorem` | [coe_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/coe-pos--50a3cb574ed9a36b1d6282e1.md) | 76 | `result-track:50a3cb574ed9a36b1d6282e1e08d6bc7d7fd7202d7216ae51c0976efadd1f1f5` |
| 8 | `theorem` | [const_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/const-lt--eb6456990266c4513f4fa636.md) | 79 | `result-track:eb6456990266c4513f4fa636e7f2ca1ab197c1d746f267fe3340d0b8836ad2ce` |
| 9 | `theorem` | [const_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/const-lt-iff--22c2c5d84303bd84468aefe0.md) | 83 | `result-track:22c2c5d84303bd84468aefe0b3d81cb5f054dbb5f52f106e570760d6e797fbff` |
| 10 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/lt-def--2ecd2d72a8c6b8fcd04a97e8.md) | 86 | `result-track:2ecd2d72a8c6b8fcd04a97e8c495c7dbd30e799b85c4c048f06de061e0197b8d` |
| 11 | `instance` | [isTotal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/istotal--53bc15d30d33e47635376f47.md) | 90 | `declaration-track:53bc15d30d33e47635376f475f8b9d746dce2e57b5589750175f26e0ccf970bb` |
| 12 | `instance` | [instLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/instlinearorder--cf363591c092063fc351b4de.md) | 96 | `declaration-track:cf363591c092063fc351b4de29107b600d8efed6830442a538698cc3b695708d` |
| 13 | `instance` | [instIsStrictOrderedRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/instisstrictorderedring--f48ae9b59408b0e41dac0967.md) | 99 | `declaration-track:f48ae9b59408b0e41dac0967cf8e5f8219944422adf523c21474ac8648c04c9a` |
| 14 | `theorem` | [max_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/max-def--089391c11b72767dced58332.md) | 106 | `result-track:089391c11b72767dced58332123caeb8cc863bed18a3d0c2ebf506c1ceea4d32` |
| 15 | `theorem` | [min_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/min-def--1e001be7bdc1dd7041f273ca.md) | 114 | `result-track:1e001be7bdc1dd7041f273cab75e1215a84976f113c4c0af9f9336b6f70b857d` |
| 16 | `theorem` | [abs_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/abs-def--84768b5b0e4da0ce2f0053de.md) | 122 | `result-track:84768b5b0e4da0ce2f0053defba4d5e30b566bc19528166b28debd71c03caae8` |
| 17 | `theorem` | [const_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/const-max--2490ebd1f6456bc078508426.md) | 127 | `result-track:2490ebd1f6456bc078508426478aaf9fdd96450802350388623bbd74d04e3bc9` |
| 18 | `theorem` | [const_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/const-min--bdaeea131ad80451dff99ba9.md) | 131 | `result-track:bdaeea131ad80451dff99ba91068a3e651f2557a5c2ec8839141f44f51d6fee5` |
| 19 | `theorem` | [const_abs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variant6434172435ffa1bc9d46339515a231694193c26827c0811c22b54935dead9efe.lean/declarations/const-abs--e8b886bdf5061651e59f38af.md) | 135 | `result-track:e8b886bdf5061651e59f38afe916539437ee77ec71626388b61b6b861f96d9e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
