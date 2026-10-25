# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InteractiveUnfold.Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c015061b395b1dd201677275c19d484e275c118e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c015061b395b1dd201677275c19d484e275c118e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Position` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Widget.SelectPanelUtils` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.GoalsLocation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.KAbstractPositions` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unfoldProjDefaultInst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/unfoldprojdefaultinst--1eb168471ec91a623f503ecb.md) | 69 | `declaration-track:1eb168471ec91a623f503ecbddc7b83b0e5389f822ef378b4d000f11b39a646d` |
| 2 | `def` | [unfolds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/unfolds--da4704eb8427a06deb058301.md) | 87 | `declaration-track:da4704eb8427a06deb0583012467a83d27981809831f4e754861e406a59e26a1` |
| 3 | `def` | [isUserFriendly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/isuserfriendly--9ab806f2c457e54c980135d4.md) | 115 | `declaration-track:9ab806f2c457e54c980135d4c2d6d04df932a78cfcf21050a98807664933ffd5` |
| 4 | `def` | [filteredUnfolds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/filteredunfolds--9bce9d2350204f5f4302367d.md) | 119 | `declaration-track:9bce9d2350204f5f4302367d4a5967265b5a65d7a5bb3e5ecf18e2314799dd78` |
| 5 | `def` | [mkRewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/mkrewrite--a39f7a91656c66ef539f9a11.md) | 125 | `declaration-track:a39f7a91656c66ef539f9a110921e8a255e1f6c7190d9753def0226208a42321` |
| 6 | `def` | [pasteString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/pastestring--532ef9580e8ee78b67e48c3f.md) | 145 | `declaration-track:532ef9580e8ee78b67e48c3f7b87bb1db01940e4a75c8e237d23536dd781fbd5` |
| 7 | `def` | [tacticString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/tacticstring--aec7cb89b6bc0bed255d2867.md) | 154 | `declaration-track:aec7cb89b6bc0bed255d28676a3820b18153804f8a6c8daae4b747f47bb7ba9b` |
| 8 | `def` | [renderUnfolds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/renderunfolds--683a955d8799cd17763fb64a.md) | 160 | `declaration-track:683a955d8799cd17763fb64a654f0d5133416ebe549fe8cc1481794a2aeeeefa` |
| 9 | `def` | [rpc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/rpc--212efa5cd405d9d76c08bde8.md) | 184 | `declaration-track:212efa5cd405d9d76c08bde82ef8943fda45d40e6950537d2f064babf27d67bb` |
| 10 | `def` | [UnfoldComponent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/unfoldcomponent--40094d869fc0f51c7f0ff7e7.md) | 214 | `declaration-track:40094d869fc0f51c7f0ff7e73c3366f0b4dc742ce67774fde61072056f65d97f` |
| 11 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/elab--3f1f643c7a4fc2e66e6f02cf.md) | 229 | `declaration-track:3f1f643c7a4fc2e66e6f02cf95fd8ad98631145316c258285c101d835986288f` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/syntax--8ad1d7aed5178ef9695bfd4b.md) | 236 | `declaration-track:8ad1d7aed5178ef9695bfd4b49f96e5730e82125c3aa060f191960eb77cffb8e` |
| 13 | `def` | [elabUnfoldCommand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/declarations/elabunfoldcommand--10bf1cc4765e4246e700686e.md) | 241 | `declaration-track:10bf1cc4765e4246e700686ed24a9e0ec4ee459e08e8abb5611d054d72140a75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
