# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.App.Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4171b932c4fa956f4f6011ce069f73d9bee1cda",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4171b932c4fa956f4f6011ce069f73d9bee1cda`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Types` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.CongrInfo` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/mkcongr--0df09fbf276552e1df5e5998.md) | 52 | `declaration-track:0df09fbf276552e1df5e599894cd8fafd6ad6cc04e2f8bb66e6178ed28b72b51` |
| 2 | `def` | [mkCongrFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/mkcongrfun--fc1b435f08963d66634bc7a0.md) | 83 | `declaration-track:fc1b435f08963d66634bc7a04475c08c80eebdfd12570351683a22fbbf7734c3` |
| 3 | `def` | [simpOverApplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/simpoverapplied--70111204928c57e5490fde65.md) | 122 | `declaration-track:70111204928c57e5490fde659af60a644e0ce50aacea47011d0de512eb29f951` |
| 4 | `def` | [propagateOverApplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/propagateoverapplied--14615dff52e1db193428064f.md) | 168 | `declaration-track:14615dff52e1db193428064fc30666844ce4a61813ca794cf0789e0e38c049ac` |
| 5 | `def` | [whnfToForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/whnftoforall--641c1fb3b92590941323a84c.md) | 188 | `declaration-track:641c1fb3b92590941323a84c8919b3dcdcc9201f4a870292e0590c2592a40de1` |
| 6 | `def` | [getFnType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/getfntype--2de345976cd90c8553c7f2df.md) | 206 | `declaration-track:2de345976cd90c8553c7f2df6284d84722aeefd4ccbd653cd93e74f997d3a457` |
| 7 | `def` | [simpFixedPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/simpfixedprefix--5095a17b79eeb9c49178912f.md) | 241 | `declaration-track:5095a17b79eeb9c49178912f73c7464fa12534bd4518c5b17e5025dfac4ddcd5` |
| 8 | `def` | [simpInterlaced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/simpinterlaced--fb73b998ced4ac70997307f4.md) | 293 | `declaration-track:fb73b998ced4ac70997307f4f96490440f66cc36ba5dabbff5802a9dec7fff35` |
| 9 | `def` | [pushResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/pushresult--8685cc42f07a316ab0887eab.md) | 322 | `declaration-track:8685cc42f07a316ab0887eab2dd06dcb1024d2f5abc8a314a420ca2065d1d2b7` |
| 10 | `def` | [simpUsingCongrThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/simpusingcongrthm--c3e35079fbb57c9d64e6e7ca.md) | 368 | `declaration-track:c3e35079fbb57c9d64e6e7ca36af4e99f4ae4d851a42bfe9fca2007f97b72a66` |
| 11 | `def` | [simpAppArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/simpappargs--7aacdba18baf96fe90cf16ed.md) | 460 | `declaration-track:7aacdba18baf96fe90cf16ed371650fa7f620361f244e4b1cddb051e160f564d` |
| 12 | `def` | [simpAppArgRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/declarations/simpappargrange--e7a7835735d38fd6c5da93f3.md) | 478 | `declaration-track:e7a7835735d38fd6c5da93f30fddba6c940e8b06db6914a26a785c1a1b29cb28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
