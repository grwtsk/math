# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mor.Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3782d91e477c644a9eada4e9c3227114d3e9d35b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3782d91e477c644a9eada4e9c3227114d3e9d35b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FunLike.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.ToBatteries` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isCoeFunName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/iscoefunname--404283d9688ea18a5e11fa81.md) | 40 | `declaration-track:404283d9688ea18a5e11fa81cf15b3191b293719f2587d51e3383320cb5ade55` |
| 2 | `def` | [isCoeFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/iscoefun--706491db379c9d1de7a2bc77.md) | 45 | `declaration-track:706491db379c9d1de7a2bc770da2be25db276fa6a28465866a1a62cf11ef55a3` |
| 3 | `structure` | [App](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/app--4f4ca2802ca88812a51310c1.md) | 51 | `declaration-track:4f4ca2802ca88812a51310c11613737574d4424872236ad2fad81bb9485de3ee` |
| 4 | `def` | [isMorApp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/ismorapp--2032f6fb94aa5c0c280b8d7c.md) | 60 | `declaration-track:2032f6fb94aa5c0c280b8d7c3f3989f2ee556d7fe92886ae7937fdca7291cb6f` |
| 5 | `def` | [whnfPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/whnfpred--2fbace5e0d075a79c92d7a29.md) | 74 | `declaration-track:2fbace5e0d075a79c92d7a2968d869876c0985810147ec8a748cee7c708d2124` |
| 6 | `def` | [whnf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/whnf--7bb076e260b7454cd00d84b1.md) | 99 | `declaration-track:7bb076e260b7454cd00d84b196eed36064fa7d5629581f48f01fa8f394bed59f` |
| 7 | `structure` | [Arg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/arg--dfc354cf861671ff40a0b6f9.md) | 104 | `declaration-track:dfc354cf861671ff40a0b6f9a0c7e964c2a5982084fa1bd363986082bf83d4f8` |
| 8 | `def` | [app](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/app--8fb70d8c7e431701797d7c15.md) | 112 | `declaration-track:8fb70d8c7e431701797d7c15d86779de91883e668597b4331048812969f42266` |
| 9 | `def` | [withApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/withapp--c8156c38804a19d440fbe79e.md) | 119 | `declaration-track:c8156c38804a19d440fbe79e3cad63b4eb52a0ac8557dbb4989101ec21e31742` |
| 10 | `def` | [getAppFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/getappfn--c84bd88a44b8d1f483c2b71e.md) | 147 | `declaration-track:c84bd88a44b8d1f483c2b71eed0570849155292fb0d377a1ae5f65e31fe7fdfd` |
| 11 | `def` | [getAppArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/getappargs--fb07a30122fce6827a65240d.md) | 160 | `declaration-track:fb07a30122fce6827a65240da92eb042248e50b3b64db25c17602f462b06f56e` |
| 12 | `def` | [mkAppN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Varianta5bc002f74621343bd9330258a40780ab8ead2bea283ad6cc7580083982caaba.lean/declarations/mkappn--a067d6fc76f354f9dcf4aec0.md) | 163 | `declaration-track:a067d6fc76f354f9dcf4aec02a8e5c05801a21ce9266c0b17f626fc524014994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
