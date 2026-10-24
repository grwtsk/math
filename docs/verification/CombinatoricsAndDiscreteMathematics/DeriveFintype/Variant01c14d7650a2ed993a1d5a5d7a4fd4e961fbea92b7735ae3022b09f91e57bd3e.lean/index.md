# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8734039b01543842e6e44aef6e5a2d31c6406bc7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8734039b01543842e6e44aef6e5a2d31c6406bc7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ProxyType` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/declarations/macro--d1099b17e8318433806880c2.md) | 93 | `declaration-track:d1099b17e8318433806880c2de176cd9b0876d3a0300e10ae5935c11fe24830e` |
| 2 | `def` | [mkFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/declarations/mkfintype--aa9be24078b359c4afc30c09.md) | 99 | `declaration-track:aa9be24078b359c4afc30c09abff6124852d61b706603e8a9d6c92865b63cd89` |
| 3 | `instance` | [$header.binders](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/declarations/header-binders--f458261de1fcec89d93b8d11.md) | 105 | `declaration-track:f458261de1fcec89d93b8d11374ba624fe26a0766bd75f023c8c326feaf19984` |
| 4 | `def` | [mkFintypeEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/declarations/mkfintypeenum--247e2471bafbfaf7714bce75.md) | 121 | `declaration-track:247e2471bafbfaf7714bce756dc30abc53f0ae0372b485748a459af900758b92` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/declarations/instance--ef9ee7c06c0c7eb519bd020f.md) | 177 | `declaration-track:ef9ee7c06c0c7eb519bd020f87b774efa85824f4402c004572b487c5dd8e46e7` |
| 6 | `def` | [mkFintypeInstanceHandler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/declarations/mkfintypeinstancehandler--e57a04a5ea08d69fa93f5fb6.md) | 186 | `declaration-track:e57a04a5ea08d69fa93f5fb6651c284ddd68a936c1e62b2d050a9e8701c44174` |
| 7 | `initialize` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/declarations/initialize--1161f2e9e4dfd0974ff648e4.md) | 196 | `declaration-track:1161f2e9e4dfd0974ff648e4afc7cb3f5777b666bbdc5e3c62369b5e035a1767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
