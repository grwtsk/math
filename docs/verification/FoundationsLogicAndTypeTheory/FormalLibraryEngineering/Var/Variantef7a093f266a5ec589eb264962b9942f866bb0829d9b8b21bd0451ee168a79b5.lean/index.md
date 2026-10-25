# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Var.Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "991ae05099a8aab00d3b427dbc7fd350e89803c4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `991ae05099a8aab00d3b427dbc7fd350e89803c4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.IntInstTesters` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [propagateNonlinearTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/propagatenonlinearterm--5166c804def8bab2deb769a0.md) | 25 | `declaration-track:5166c804def8bab2deb769a04c943727fa7d5b3995c06a656577376e8f13e55b` |
| 2 | `def` | [isNonlinearTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/isnonlinearterm--a372351e56ee0e86a0a08be3.md) | 32 | `declaration-track:a372351e56ee0e86a0a08be38fdc6631b3622f87c7595aaa7bb13606d32c7a17` |
| 3 | `def` | [registerNonlinearOcc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/registernonlinearocc--be2460e3d6102bc9b416efee.md) | 42 | `declaration-track:be2460e3d6102bc9b416efeeb87883e3a8e5dcd7fd6db848a702ac319aa3cb88` |
| 4 | `def` | [registerNonlinearOccsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/registernonlinearoccsat--230dc541433763474b8a1319.md) | 51 | `declaration-track:230dc541433763474b8a1319a7abf81c2994d4fb13a4a2253570a0b1f0d4eb67` |
| 5 | `def` | [mkVarImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/mkvarimpl--80e6deba1bff76c4c89e4b62.md) | 77 | `declaration-track:80e6deba1bff76c4c89e4b622246e3c8cccca8726bdfddfcf65f8f9639ecc1e4` |
| 6 | `def` | [isInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/isint--7de9472959a77b5beaf1ca61.md) | 100 | `declaration-track:7de9472959a77b5beaf1ca610fd408d2bc7fe91985750b3e091d7aa5684f8580` |
| 7 | `def` | [isAdd?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/isadd--0496407123bde49577d36bb3.md) | 103 | `declaration-track:0496407123bde49577d36bb3534cf8e20c01b55540027c333a7d8f057dbba168` |
| 8 | `def` | [isAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/isadd--4c6f7b35bda18fc16cfe164d.md) | 111 | `declaration-track:4c6f7b35bda18fc16cfe164ddc2e76e94a0e7f257b2086f54191b66257e7cd28` |
| 9 | `def` | [isMul?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/ismul--d8aa7b5785631463f3476444.md) | 114 | `declaration-track:d8aa7b5785631463f34764449cb9b9ae5b4eea6068dca4ac7880952fdccbf933` |
| 10 | `def` | [isMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/ismul--6cd71d773c98d9dde96a16bf.md) | 125 | `declaration-track:6cd71d773c98d9dde96a16bfecd316df0d27dfe3b94a246e16b3ec7f1aa98df9` |
| 11 | `def` | [addMonomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/addmonomial--54ff8996ca5d52c03a238d0f.md) | 128 | `declaration-track:54ff8996ca5d52c03a238d0fd6b85ed0c29951366baba1a0a6e57ed41115a270` |
| 12 | `def` | [toPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/declarations/topoly--fac7b9fc28696255cc4f6ffb.md) | 138 | `declaration-track:fac7b9fc28696255cc4f6ffb50958ff874f44fac92aa6091e4d7558f36599c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
