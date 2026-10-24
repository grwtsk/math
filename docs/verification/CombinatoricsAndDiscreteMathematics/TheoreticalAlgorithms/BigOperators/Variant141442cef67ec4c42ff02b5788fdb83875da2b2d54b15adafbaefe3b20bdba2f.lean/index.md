# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "026a809b17cf8f50723d49ed38552e9275f8e10d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `026a809b17cf8f50723d49ed38552e9275f8e10d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.MinMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Tropical.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.trop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/list-trop-sum--f6feb54d20c9ddaf98ac1911.md) | 38 | `result-track:f6feb54d20c9ddaf98ac191186d97cec2faeb800645435113953b45cec20b0b8` |
| 2 | `theorem` | [Multiset.trop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/multiset-trop-sum--11cdf9fe725916a431c5e6e7.md) | 43 | `result-track:11cdf9fe725916a431c5e6e7c95e082976ae2ea73a98e36c8e949899e0482f43` |
| 3 | `theorem` | [trop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/trop-sum--2b4962e0c05a00f899753c1e.md) | 47 | `result-track:2b4962e0c05a00f899753c1ef4d02450290fc0e875b4960c8342624021c795f1` |
| 4 | `theorem` | [List.untrop_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/list-untrop-prod--40ba33bbf6d779e06a837b8f.md) | 53 | `result-track:40ba33bbf6d779e06a837b8f7c3e30abee532e0ec507801046a598e7f0ab61a8` |
| 5 | `theorem` | [Multiset.untrop_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/multiset-untrop-prod--2ee22323164f7f51291d4b86.md) | 59 | `result-track:2ee22323164f7f51291d4b86580a5ad7564ce42ea83543a59c8a7437840759d4` |
| 6 | `theorem` | [untrop_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/untrop-prod--874da83580e3c97b05cbd82e.md) | 63 | `result-track:874da83580e3c97b05cbd82e6236c99433aeb2de3f32eeac2926f55228b6f306` |
| 7 | `theorem` | [List.trop_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/list-trop-minimum--e9a846912c90bc85c2272095.md) | 69 | `result-track:e9a846912c90bc85c22720957668c98bbe235b99cfc71d31bc114b4f1bd541f0` |
| 8 | `theorem` | [Multiset.trop_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/multiset-trop-inf--86888d1106583650bba492ff.md) | 75 | `result-track:86888d1106583650bba492ff36029a06d9d45984fafd93df24020ec686e877b0` |
| 9 | `theorem` | [Finset.trop_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/finset-trop-inf--38fca6aa6703dcad02b11a8f.md) | 81 | `result-track:38fca6aa6703dcad02b11a8fe0792fd9176bed6600f880bb9957acab3fb9811b` |
| 10 | `theorem` | [trop_sInf_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/trop-sinf-image--658089e76e591da7993f9633.md) | 87 | `result-track:658089e76e591da7993f96331bfdc65e7fbef075b0cb681f18fd84abb7b7fa76` |
| 11 | `theorem` | [trop_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/trop-iinf--b0682a353ef0a01c1cc50ec8.md) | 93 | `result-track:b0682a353ef0a01c1cc50ec8e4ec780c324800c82ec21001901e29a72fe5e506` |
| 12 | `theorem` | [Multiset.untrop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/multiset-untrop-sum--656aabbb9a36804b9a2725a8.md) | 97 | `result-track:656aabbb9a36804b9a2725a84779dc5f5fe58d630297c932b21fa1be1b83b02a` |
| 13 | `theorem` | [Finset.untrop_sum'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/finset-untrop-sum--43f44071b6f5d7bcde5ea13e.md) | 103 | `result-track:43f44071b6f5d7bcde5ea13e3bcdf5e9084708f55cdc33cf16def34253893c14` |
| 14 | `theorem` | [untrop_sum_eq_sInf_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/untrop-sum-eq-sinf-image--afcf3957e5fab93e92953f3a.md) | 108 | `result-track:afcf3957e5fab93e92953f3a75fcb7794e932ee6384af26322e2114fdc87bc19` |
| 15 | `theorem` | [untrop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/untrop-sum--d29096c6b5ebec73606e1f1e.md) | 114 | `result-track:d29096c6b5ebec73606e1f1e235eefe5ff2a6ab196a8d450c61bdfad79efac2e` |
| 16 | `theorem` | [Finset.untrop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant141442cef67ec4c42ff02b5788fdb83875da2b2d54b15adafbaefe3b20bdba2f.lean/declarations/finset-untrop-sum--350160e155076b2c91afcdfa.md) | 120 | `result-track:350160e155076b2c91afcdfafd7f5c8c7a50fdaf715395aefbddc2e4cbb07128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
