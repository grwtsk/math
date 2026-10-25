# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "788dba46ec685bbf05cff5ba54441b470b0dc60d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `788dba46ec685bbf05cff5ba54441b470b0dc60d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.SimpUtil` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Param` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Finish` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CollectParams` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Parser` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabGrindPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/elabgrindpattern--5bfef107ecb7c3468f93465b.md) | 24 | `declaration-track:5bfef107ecb7c3468f93465b105914ca7dc351bfe5278a2dcec469fd0e77671f` |
| 2 | `def` | [elabResetGrindAttrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/elabresetgrindattrs--2f0080498c564c2857e0338e.md) | 142 | `declaration-track:2f0080498c564c2857e0338eeb63f1980e70a4c8e316d527390eac7768742e3c` |
| 3 | `def` | [elabInitGrindNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/elabinitgrindnorm--400bdee0df1514290a865f6d.md) | 150 | `declaration-track:400bdee0df1514290a865f6d330f58f2a784cebc5c8160b0dd35796ac73895af` |
| 4 | `def` | [parseModifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/parsemodifier--72e13cd330831df5fd201d1e.md) | 163 | `declaration-track:72e13cd330831df5fd201d1e9862ffc26f28cd5cfa93201aba32f02285d7119e` |
| 5 | `def` | [elabGrindSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/elabgrindsuggestions--ead0a4cb44d32b8f8a770ab1.md) | 170 | `declaration-track:ead0a4cb44d32b8f8a770ab1bb31df3e3666603319798b268399c30fb8f6b73b` |
| 6 | `def` | [elabGrindLocals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/elabgrindlocals--ddcb5af86425f89f0378db64.md) | 195 | `declaration-track:ddcb5af86425f89f0378db64e695e574d7ebcca832fd98b1a3616340648c9bef` |
| 7 | `def` | [mkGrindParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/mkgrindparams--310585f9998a8ee14e09ab8f.md) | 214 | `declaration-track:310585f9998a8ee14e09ab8fb1e9b49ba513a53218e05880f4abe01055f9b6fc` |
| 8 | `def` | [checkTerminalAsSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/checkterminalassorry--db31b0bc30fd9c9849c88437.md) | 241 | `declaration-track:db31b0bc30fd9c9849c88437d653801d7c80263cd801a393b855f221ae11610c` |
| 9 | `def` | [grind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/grind--78353801181535b1ba62f16d.md) | 249 | `declaration-track:78353801181535b1ba62f16d74ee1ded6813b074f4b71d3e01dc7f70319cad4d` |
| 10 | `def` | [evalGrindCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalgrindcore--dd8d07ce9d7749446436050b.md) | 281 | `declaration-track:dd8d07ce9d7749446436050bedf2b63654b8f3857639bbe639c2547873915e7b` |
| 11 | `def` | [grindParamsPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/grindparamspos--3ae9a36184979b626ed27b17.md) | 296 | `declaration-track:3ae9a36184979b626ed27b17db120e3f99f087e66ec20ed8444876f2fde11e62` |
| 12 | `def` | [grindOnlyPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/grindonlypos--3a907624937867a60559e308.md) | 299 | `declaration-track:3a907624937867a60559e308b67b0a4acb58605decde81427d18198c52b307c2` |
| 13 | `def` | [isGrindOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/isgrindonly--d623a5e3b865fc8130d2d84e.md) | 301 | `declaration-track:d623a5e3b865fc8130d2d84e58a76f14aa0219c965ea340aac83f7ca8f496995` |
| 14 | `def` | [setGrindParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/setgrindparams--0bc23b0277761cf60e366682.md) | 304 | `declaration-track:0bc23b0277761cf60e3666823f9878a23543e505256f5ef92d03d0454b68a000` |
| 15 | `def` | [getGrindParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/getgrindparams--203aeaf0ab8761ea2555cb53.md) | 311 | `declaration-track:203aeaf0ab8761ea2555cb53be90b79f840b724ad4f6aa715c5f4e24496ba175` |
| 16 | `def` | [filterSuggestionsAndLocalsFromGrindConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/filtersuggestionsandlocalsfromgrindconfig--1b079ad64c7bb8d050c8028c.md) | 315 | `declaration-track:1b079ad64c7bb8d050c8028c389025922bc5555b58515073271348ecd16a27aa` |
| 17 | `def` | [elabGrindConfig'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/elabgrindconfig--30513bc1c4a3080c46e3b572.md) | 333 | `declaration-track:30513bc1c4a3080c46e3b572743d4bea5825afeeeddce0bcfbdfe1e4d1cbfd24` |
| 18 | `def` | [evalGrind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalgrind--288116dcd78affd97d3c4046.md) | 339 | `declaration-track:288116dcd78affd97d3c40465bc89b55af7558119f15fdedbe1d31a0701b470f` |
| 19 | `def` | [evalSym](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalsym--d8251abb06e8b341de284861.md) | 348 | `declaration-track:d8251abb06e8b341de28486188f37b580162d84c5ae69cd77bda48cd0d9ccfa3` |
| 20 | `def` | [evalGrindTraceCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalgrindtracecore--1fd510fa5fbdd027d5fc3e9d.md) | 367 | `declaration-track:1fd510fa5fbdd027d5fc3e9d0954f7b28103aa840eebb42a1bda6f401334b37e` |
| 21 | `def` | [evalGrindTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalgrindtrace--7337f7b523f89d7eb6638044.md) | 446 | `declaration-track:7337f7b523f89d7eb663804433a100556cb7c5c0c2cf1d1727b8985d55ac1ff8` |
| 22 | `def` | [evalLia](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evallia--87ddf7d060fc65178e0b9c9b.md) | 453 | `declaration-track:87ddf7d060fc65178e0b9c9be61e32683e0f79054302d82ef5d7fe88ebd9e466` |
| 23 | `def` | [evalCutsat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalcutsat--54999457140bf69290269d4f.md) | 459 | `declaration-track:54999457140bf69290269d4f74d1f4463486a346363b7474a8ae916ede6a4d0d` |
| 24 | `def` | [evalOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalorder--ce2c9e0ab14127d9aba63110.md) | 471 | `declaration-track:ce2c9e0ab14127d9aba631108340155e04f122b87e13cbb559a05c56cb6f56df` |
| 25 | `def` | [evalLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evallinarith--31494502569b3309f2c98fdf.md) | 476 | `declaration-track:31494502569b3309f2c98fdf39ecb1f66a89a801c8401957263bdf151165f7f9` |
| 26 | `def` | [evalGrobner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/declarations/evalgrobner--d7c65ce67c3138f8f674da7f.md) | 481 | `declaration-track:d7c65ce67c3138f8f674da7fceac52af62029698a4f7d5db3bbcbbbb2728b883` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
