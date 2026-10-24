# Verification target: GRWTSK.Topology.GeneralTopology.GDelta.Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe41b7380b60e57fc81c37e699c93d511cd4891",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe41b7380b60e57fc81c37e699c93d511cd4891`.

Source path: `GRWTSK/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Lindelof` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.SigmaCompact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Inseparable` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.GDelta.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsGδ.compl_singleton](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/isg-compl-singleton--26417c28a028b1b24840b158.md) | 35 | `result-track:26417c28a028b1b24840b1588180d695dc6a367d92275426802f0c73530c4559` |
| 2 | `theorem` | [Set.Countable.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/set-countable-isg-compl--bcb69dbcd1305b3c5ddb610b.md) | 39 | `result-track:bcb69dbcd1305b3c5ddb610b630e29b4b474eee096654d37fdb36ca3cd2907ab` |
| 3 | `theorem` | [Set.Finite.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/set-finite-isg-compl--f14c1047db5ce9bea203e836.md) | 43 | `result-track:f14c1047db5ce9bea203e83679ce1d170d6d63ba564d45f4795b95e5b12aa73c` |
| 4 | `theorem` | [Set.Subsingleton.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/set-subsingleton-isg-compl--4906e41302b9f212c7c3e883.md) | 46 | `result-track:4906e41302b9f212c7c3e883413954d50c758170990609fd8913c95b4c6d717a` |
| 5 | `theorem` | [Finset.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/finset-isg-compl--d264864062bbea28ca6f44c6.md) | 49 | `result-track:d264864062bbea28ca6f44c67dca3737d767a1bfe5ff9caecb6f06bca667bd59` |
| 6 | `theorem` | [IsGδ.singleton](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/isg-singleton--1be2e9252f0c743a46a07040.md) | 52 | `result-track:1be2e9252f0c743a46a07040695e0820cfc8e77117e527d47753823d7f8cba18` |
| 7 | `theorem` | [Set.Finite.isGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/set-finite-isg--b8f690030bf02e2cbcee6f9e.md) | 59 | `result-track:b8f690030bf02e2cbcee6f9ec05f8c96394aaf48bc7af001f8c696dc57f22ce1` |
| 8 | `class` | [PerfectlyNormalSpace](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/perfectlynormalspace--5da5ab941427a4923094e9e0.md) | 68 | `declaration-track:5da5ab941427a4923094e9e05a45f12a1459dd1489def2c8122f335d0853d7e9` |
| 9 | `theorem` | [Disjoint.hasSeparatingCover_closed_gdelta_right](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/disjoint-hasseparatingcover-closed-gdelta-right--740be9b5b6ba7c101f662195.md) | 72 | `result-track:740be9b5b6ba7c101f662195cf7ec1029a4b4020fbea801fb73e0a716cb97521` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/instance--09c8910aaa96b610d7ace76c.md) | 100 | `declaration-track:09c8910aaa96b610d7ace76c93c8b061d17fca00d9f4b7f943fcf275645bc585` |
| 11 | `theorem` | [IsClosed.isGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/isclosed-isg--0c65594ad93bf19893a28141.md) | 110 | `result-track:0c65594ad93bf19893a28141c06c5d9bc77b8bcccc2e1d1f05d8c4397a4204da` |
| 12 | `class` | [T6Space](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/t6space--f5c2714bbf98f665f98256bc.md) | 114 | `declaration-track:f5c2714bbf98f665f98256bcc2a51b6511e9050c62ae70bbe732ae57f89d967b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/declarations/instance--ff4b19313bdb5468bed83652.md) | 118 | `declaration-track:ff4b19313bdb5468bed8365217ff4a9a1849f2af0c01737a2868d6bc43938595` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
