# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Control.Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.ProdN` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Control.Do` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ControlStack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack--c28efcc63832cd4bcb92deed.md) | 27 | `declaration-track:c28efcc63832cd4bcb92deed548f6bc2a65b5fb74e236b7b88d21000ffc82d6a` |
| 2 | `def` | [ControlStack.unStM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-unstm--cc22312209a1f953a40979df.md) | 34 | `declaration-track:cc22312209a1f953a40979dfa6aa43d60c85ca8167a6598f1ce90cd8764b6de8` |
| 3 | `def` | [ControlStack.base](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-base--8b9dc0c31229b43f53b5f2d3.md) | 41 | `declaration-track:8b9dc0c31229b43f53b5f2d3e7e5e5892b32ebb20f84c4682a4e60a9bad471dd` |
| 4 | `def` | [ControlStack.stateT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-statet--248fa42f45245b6ba8c38fa4.md) | 48 | `declaration-track:248fa42f45245b6ba8c38fa4517dfc416ef35fcb806b6adf9294da0def97a584` |
| 5 | `def` | [ControlStack.optionT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-optiont--de505a45477a3acb2856ec79.md) | 78 | `declaration-track:de505a45477a3acb2856ec798b0030ff357d922726d6654da1a36a7ceb240384` |
| 6 | `def` | [ControlStack.exceptT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-exceptt--af5e3890ddf5a5a1b99a6991.md) | 106 | `declaration-track:af5e3890ddf5a5a1b99a6991b5c70a6e63b667c713d56ab362ea889929d895c3` |
| 7 | `def` | [ControlStack.earlyReturnT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-earlyreturnt--0f38b78ee651a290b1bc052f.md) | 136 | `declaration-track:0f38b78ee651a290b1bc052fbce0b9382a64d6f4079b3f19ffacd53bfb5656ee` |
| 8 | `def` | [ControlStack.breakT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-breakt--eca6688927c0a6fceb96e18c.md) | 139 | `declaration-track:eca6688927c0a6fceb96e18c9ace5ae491ededa806a8db3a5961d343cb6c562a` |
| 9 | `def` | [ControlStack.continueT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-continuet--098f03baf35e31d3b2ec8e36.md) | 143 | `declaration-track:098f03baf35e31d3b2ec8e3607aca99ef007dbdbaf073aabce3410a7603c7d08` |
| 10 | `def` | [mkInstMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/mkinstmonad--ea8612e7b72050a947edfd99.md) | 147 | `declaration-track:ea8612e7b72050a947edfd99e31e81c97b29487df57abb9b9985da0e017a84f6` |
| 11 | `def` | [synthUsingDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/synthusingdefeq--dcb131aa9248378f65ac5d47.md) | 150 | `declaration-track:dcb131aa9248378f65ac5d47127ea854a73a812a1158a7314101a1fc4d6d1073` |
| 12 | `def` | [ControlStack.mkBreak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-mkbreak--79c5e3aba1b8778c04ea03a3.md) | 154 | `declaration-track:79c5e3aba1b8778c04ea03a3dde5c2f339016b8e00a96e32834bda2382cf5821` |
| 13 | `def` | [ControlStack.mkContinue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-mkcontinue--a82d7be48569232055231a60.md) | 168 | `declaration-track:a82d7be48569232055231a60d278af90806028400c7434aafc6b05084ab469ef` |
| 14 | `def` | [ControlStack.mkReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-mkreturn--f9dd9034b5944cd0baee9480.md) | 179 | `declaration-track:f9dd9034b5944cd0baee94806941c040ca20b1401a91611a549f8d19fc596653` |
| 15 | `def` | [ControlStack.mkPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/controlstack-mkpure--68c393a5acb89c0474e0439b.md) | 189 | `declaration-track:68c393a5acb89c0474e0439ba54e147d242addbd5cd20bba7f6c58427cf236c8` |
| 16 | `structure` | [EffectForwarder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/effectforwarder--9236f005d85e3d8edfe7defc.md) | 198 | `declaration-track:9236f005d85e3d8edfe7defc18b239ebe03c7a662e8bee89fa294a1a91fd194b` |
| 17 | `def` | [EffectForwarder.ofCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/effectforwarder-ofcont--16e90e7b98881473dcccd8e9.md) | 217 | `declaration-track:16e90e7b98881473dcccd8e95be26af43f0e3e1566c30a70859e429436803c9c` |
| 18 | `def` | [EffectForwarder.lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/effectforwarder-lift--59a2cc8ab9131da371408396.md) | 262 | `declaration-track:59a2cc8ab9131da371408396f76c3ff0beb22ae07958123891b2cb119f254b72` |
| 19 | `def` | [EffectForwarder.restoreCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/declarations/effectforwarder-restorecont--63948c50f1a51cf411a0705b.md) | 284 | `declaration-track:63948c50f1a51cf411a0705b44d8f9c14a3cf2c8c07857270a0519b3b99c38e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
