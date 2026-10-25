# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Control.Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afef07b33d862c522e2396634e5e2d4bf5e10da5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afef07b33d862c522e2396634e5e2d4bf5e10da5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.ProdN` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Control.Do` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ControlStack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack--80b5d54bf6292aafb816562a.md) | 19 | `declaration-track:80b5d54bf6292aafb816562a39dfb1f70190266a622152763ba35a080dd27bb4` |
| 2 | `def` | [ControlStack.unStM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-unstm--3d4817bf21cb22b5b152d629.md) | 26 | `declaration-track:3d4817bf21cb22b5b152d6293a1a6060d2f909f3c362a05a3d13b69491f5f537` |
| 3 | `def` | [ControlStack.base](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-base--4ba3e21acc48684fe5e56860.md) | 33 | `declaration-track:4ba3e21acc48684fe5e5686018c073c7eef50a0ebbaac790ff595cbec7d0dbd5` |
| 4 | `def` | [ControlStack.stateT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-statet--9ea5d54bf1b1bec4d01f58d2.md) | 40 | `declaration-track:9ea5d54bf1b1bec4d01f58d21495ca33673b0def80485874f29f9517e3425dfa` |
| 5 | `def` | [ControlStack.optionT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-optiont--00dc47f3ae006414f1d1c56d.md) | 70 | `declaration-track:00dc47f3ae006414f1d1c56d3bcf59d326bcc2f9daa46d522acf5ebb085b023e` |
| 6 | `def` | [ControlStack.exceptT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-exceptt--77b8542a5bc966713c4ca87c.md) | 98 | `declaration-track:77b8542a5bc966713c4ca87c33b385ae9c619ea12f45dcc556bc58aeeab6ba7d` |
| 7 | `def` | [ControlStack.earlyReturnT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-earlyreturnt--0e994a29f61efe7645ce0cfc.md) | 128 | `declaration-track:0e994a29f61efe7645ce0cfce2051471b75b9102e74c9387cabcb5822d726f30` |
| 8 | `def` | [ControlStack.breakT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-breakt--3d85f543906291b0bd3cef73.md) | 131 | `declaration-track:3d85f543906291b0bd3cef7375e8167577d45231da88a7b8a63b9fa1c3fe5c99` |
| 9 | `def` | [ControlStack.continueT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-continuet--bfa31d4f718b2c11afa30953.md) | 135 | `declaration-track:bfa31d4f718b2c11afa30953fc9ef4a1cb4e9af179b034b79c950d7dd0575ebc` |
| 10 | `def` | [mkInstMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/mkinstmonad--863634900485f6bcaa5e3b75.md) | 139 | `declaration-track:863634900485f6bcaa5e3b758391d30fb8111a4dae2e5511f27e45f856bdd6ca` |
| 11 | `def` | [synthUsingDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/synthusingdefeq--227cd9eb9c4c3522344e7198.md) | 142 | `declaration-track:227cd9eb9c4c3522344e7198a37448b6638786699b06515b97e0a5eaab60934e` |
| 12 | `def` | [ControlStack.mkBreak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-mkbreak--22ca4c2925606c758b2c9e9c.md) | 146 | `declaration-track:22ca4c2925606c758b2c9e9c0f5c0971be885d99276a3f45893dfa6c526cf1f8` |
| 13 | `def` | [ControlStack.mkContinue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-mkcontinue--22df3531adc18f19e93cc911.md) | 160 | `declaration-track:22df3531adc18f19e93cc911063fedb4ff52b8585f2344fd120730decd4b6923` |
| 14 | `def` | [ControlStack.mkReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-mkreturn--f9ef01e1840068f84b26cbdc.md) | 171 | `declaration-track:f9ef01e1840068f84b26cbdc7f3ec70ae51c0eca537183926d219250716fd6bf` |
| 15 | `def` | [ControlStack.mkPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/controlstack-mkpure--b41e0b9d8179fff1bf217c56.md) | 181 | `declaration-track:b41e0b9d8179fff1bf217c56f10378d88fb6d4d7a64825fb0ea91f51ac5c1c31` |
| 16 | `structure` | [EffectForwarder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/effectforwarder--7cf4e59ea9160d9c559162d6.md) | 190 | `declaration-track:7cf4e59ea9160d9c559162d65fe7df93f317c97013a5023f4b0f6c1b7270f019` |
| 17 | `def` | [EffectForwarder.ofCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/effectforwarder-ofcont--88d8bbcc76c705bdefc7d0af.md) | 209 | `declaration-track:88d8bbcc76c705bdefc7d0af6cc82fa5457c63176e6b01b221e4d3c17706af35` |
| 18 | `def` | [EffectForwarder.lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/effectforwarder-lift--57e31fdda0a7899db4e86445.md) | 254 | `declaration-track:57e31fdda0a7899db4e8644547a81c735e551c70b740a921f89a8e7dea13dbcd` |
| 19 | `def` | [EffectForwarder.restoreCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/declarations/effectforwarder-restorecont--118746e5b82ace9c713409cc.md) | 276 | `declaration-track:118746e5b82ace9c713409cce0feb89ac408d77ed0c5ce92eb0d72f964f07808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
