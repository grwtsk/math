# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RingEquiv.Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02384bf10092a96f9c005c920eab3cbd5e37c8da",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02384bf10092a96f9c005c920eab3cbd5e37c8da`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/declarations/map-list-prod--af3ccf19c61f0785f384f4cd.md) | 27 | `result-track:af3ccf19c61f0785f384f4cd983adab09be6b001cc1d484b1ced6931d8ef9ea1` |
| 2 | `theorem` | [map_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/declarations/map-list-sum--1614ac829e84168a0cec2255.md) | 30 | `result-track:1614ac829e84168a0cec2255908c760843e6b7bb5e5e00988afa36d981609dd6` |
| 3 | `theorem` | [unop_map_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/declarations/unop-map-list-prod--ea5665deb92d8491bf1fac2e.md) | 34 | `result-track:ea5665deb92d8491bf1fac2e13d761e8c228416b8d9220958030644329c5cffc` |
| 4 | `theorem` | [map_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/declarations/map-multiset-prod--53abbb1933a003ce38c63cb9.md) | 38 | `result-track:53abbb1933a003ce38c63cb9cdc0c7b64c5c7c7e210eec35dd5047a8e81dff57` |
| 5 | `theorem` | [map_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/declarations/map-multiset-sum--26d4146ebda8bb76743abc6e.md) | 42 | `result-track:26d4146ebda8bb76743abc6e1f9834f5e3022ee21625797eb83b918492e44d06` |
| 6 | `theorem` | [map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/declarations/map-prod--98b966b0bb0ab425d4fac5cd.md) | 46 | `result-track:98b966b0bb0ab425d4fac5cd01cae85f500c544d188ff919579ec9821c968a4a` |
| 7 | `theorem` | [map_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant96d3b54fc8a16c04f0f754eda42ec87d51b2e2c1efea800dcdc053947c59932f.lean/declarations/map-sum--97e9e62d1a9edc9229f62835.md) | 50 | `result-track:97e9e62d1a9edc9229f62835d074f375ed41b8d0f6c472c4f9b603d779f7f824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
