# Verification target: GRWTSK.Topology.GeneralTopology.Metrizable.Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d34a4fcff057d5ed1bc832673334b7aa3888523",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d34a4fcff057d5ed1bc832673334b7aa3888523`.

Source path: `GRWTSK/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PseudoMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/pseudometrizablespace--07ce0ba46fd2cb827a7b477e.md) | 46 | `declaration-track:07ce0ba46fd2cb827a7b477ed9a6a578e82378482fd49ed9d89ca93ed1c1e19d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/instance--295f3fd8c681f6b9fd4c1bfa.md) | 50 | `declaration-track:295f3fd8c681f6b9fd4c1bfab7858eec5d2f9cb5505a70dac1cf89aa66e76ea1` |
| 3 | `def` | [pseudoMetrizableSpacePseudoMetric](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/pseudometrizablespacepseudometric--58487e0ab05f39fc4e62e27e.md) | 56 | `declaration-track:58487e0ab05f39fc4e62e27ec1cf648f9fe0d65a7c079678a2357777522ac149` |
| 4 | `instance` | [pseudoMetrizableSpace_prod](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/pseudometrizablespace-prod--7a6d1d727baf9fbb995b0d7c.md) | 61 | `declaration-track:7a6d1d727baf9fbb995b0d7cc5e54efdee8e0b52b90c28970c7b827a4356dece` |
| 5 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.PseudoMetrizableSpace.Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.Inducing.pseudoMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/root-grwtsk-topology-generaltopology-pseudometrizablespace-variant399d8e--40cac93c36b8909414dc6c15.md) | 70 | `result-track:40cac93c36b8909414dc6c1548d821e5d695e37d4bd8ce585f06381e02f3e6a6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/instance--3c5c50af58fc50708cace4da.md) | 77 | `declaration-track:3c5c50af58fc50708cace4dafc336b97e00c3816669a53b4fe2c9e45ac273229` |
| 7 | `instance` | [PseudoMetrizableSpace.subtype](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/pseudometrizablespace-subtype--a4aba923d31d5b07178afff7.md) | 85 | `declaration-track:a4aba923d31d5b07178afff706dfff8f62afefe0cea3d87a81be26fad99ad818` |
| 8 | `instance` | [pseudoMetrizableSpace_pi](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/pseudometrizablespace-pi--ce3a3649499bc7031ef5e68c.md) | 90 | `declaration-track:ce3a3649499bc7031ef5e68c5e216a5e84f46ad48a4aa85eca847f0567fecf83` |
| 9 | `class` | [MetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/metrizablespace--3bb41cdf7225a222c0cbdd88.md) | 100 | `declaration-track:3bb41cdf7225a222c0cbdd88f5f709102fdd51f5343d0c6ab411dd38347ed3dc` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/instance--93bf93dbca1573fa2c134982.md) | 104 | `declaration-track:93bf93dbca1573fa2c134982821e6f36ead7d7e981c765765f8f40b4d46283c0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/instance--d2ba41677ceef194ea5c7048.md) | 109 | `declaration-track:d2ba41677ceef194ea5c704896ab8fab6edfa4224a8ca0798e7fdaa9b90d0eb6` |
| 12 | `def` | [metrizableSpaceMetric](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/metrizablespacemetric--f89ceab391e5b84009482a96.md) | 116 | `declaration-track:f89ceab391e5b84009482a960cc439a8388768fc6cb62259c58b3a6504392879` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/instance--56b8e914126c44e15f8a68a6.md) | 121 | `declaration-track:56b8e914126c44e15f8a68a66604bd4f6aad4360a549b70c5fb38e9866746c8e` |
| 14 | `instance` | [metrizableSpace_prod](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/metrizablespace-prod--b2caa8661dd558d22cf4b732.md) | 126 | `declaration-track:b2caa8661dd558d22cf4b732ada9547fb753e77247632fc227c12af784fae14d` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.PseudoMetrizableSpace.Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.Embedding.metrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/root-grwtsk-topology-generaltopology-pseudometrizablespace-variant399d8e--afadc58f7ddf2bce80271710.md) | 134 | `result-track:afadc58f7ddf2bce80271710d141af72b0634205e4cc252200c306102cacd17c` |
| 16 | `instance` | [MetrizableSpace.subtype](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/metrizablespace-subtype--9ed09fef28914046a38398c5.md) | 140 | `declaration-track:9ed09fef28914046a38398c55449233a262ab31588dc3e0f2c4f43da68e27483` |
| 17 | `instance` | [metrizableSpace_pi](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/metrizablespace-pi--4fd4f261a38c07ee30a83640.md) | 144 | `declaration-track:4fd4f261a38c07ee30a83640f184bd0e40a60b66843260bd3161a581c0a6ffbd` |
| 18 | `theorem` | [IsSeparable.secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/isseparable-secondcountabletopology--17e20ac6a9beccdd94196b10.md) | 150 | `result-track:17e20ac6a9beccdd94196b10a092b8eb731dd6f58dcde3e91fcd72c509d9967e` |
| 19 | `theorem` | [exists_embedding_l_infty](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/exists-embedding-l-infty--f952ba64f72f2c052c76e7e3.md) | 160 | `result-track:f952ba64f72f2c052c76e7e31620d30eb676cf2a774acc2bb200733c1c7a4c07` |
| 20 | `theorem` | [metrizableSpace_of_t3_second_countable](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/metrizablespace-of-t3-second-countable--2d5e339afa12dfd37551a41c.md) | 246 | `result-track:2d5e339afa12dfd37551a41ca3a8cabb2c30f2c7764994fce74c6aba0e26238d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/declarations/instance--c6f3339272eca331eae7c97d.md) | 251 | `declaration-track:c6f3339272eca331eae7c97d2fe8963a3abeadb0effd02a8392cff2e7792384a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
