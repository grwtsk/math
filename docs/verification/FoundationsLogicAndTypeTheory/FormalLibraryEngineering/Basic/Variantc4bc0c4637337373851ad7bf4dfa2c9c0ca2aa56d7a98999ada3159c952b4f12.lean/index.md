# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "138d245b0222fb5a07174cdaeb41234ce18c64ae",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `138d245b0222fb5a07174cdaeb41234ce18c64ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Std` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/syntax--77dbd03423bab35140b82a60.md) | 23 | `declaration-track:77dbd03423bab35140b82a600d7b4e7b9d4a358f9eb0342a8ae73559075361b7` |
| 2 | `def` | [elabVariables](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/elabvariables--521102cbdbad6bd2caae024e.md) | 25 | `declaration-track:521102cbdbad6bd2caae024efa6dd2687789e7271816885d7e497e66aa71304c` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/syntax--fc8c16bea32493616a065924.md) | 32 | `declaration-track:fc8c16bea32493616a065924b46b0bd97d9b31fa1b85321552450196346b3646` |
| 4 | `def` | [expandLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/expandlemma--4dc1dc612cd33e0b38aad299.md) | 36 | `declaration-track:4dc1dc612cd33e0b38aad299468c6be827bfe775fab2041d48787f8984036523` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/elab--60ea100cf2d8bd993cb97b2d.md) | 46 | `declaration-track:60ea100cf2d8bd993cb97b2d191aac7faa5e9bfa7b841506f26894f5664997da` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/elab--a85f1b1d9c3d1018389dd13c.md) | 52 | `declaration-track:a85f1b1d9c3d1018389dd13cb3a6095f1dceb13b75154b4496158072b4c0f1b4` |
| 7 | `def` | [pushFVarAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/pushfvaraliasinfo--dea94dc6ed0794b6e89ee9ea.md) | 62 | `declaration-track:dea94dc6ed0794b6e89ee9eaec0f45c078d48bebbc5794c41e3996a48a15cf4c` |
| 8 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.Lean.MVarId.withReverted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-pushf--be0de7ed5d02346b0aa6139c.md) | 89 | `declaration-track:be0de7ed5d02346b0aa6139c74ac3bbde925f339f6d0396053d4a231920c8461` |
| 9 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.Lean.MVarId.changeLocalDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-pushf--4d73a5100a59003785922d60.md) | 111 | `declaration-track:4d73a5100a59003785922d60354795815d4c81f1b11ec46a82b9b2cc8959ad3d` |
| 10 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/elab-rules--3fa4f3a6f6784cd59c55717c.md) | 147 | `declaration-track:3fa4f3a6f6784cd59c55717c563175a1a09d6c56f396fa16fb293b6aeca1a2b0` |
| 11 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/macro--6159dc443f2f7ff549ee3789.md) | 166 | `declaration-track:6159dc443f2f7ff549ee378969542ec36732baf489faaa9a482004fabae9c852` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/syntax--2b270a42b3398857e429328d.md) | 169 | `declaration-track:2b270a42b3398857e429328db9844f38df84173b3928c8be0c27e04d6e0e09b8` |
| 13 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/macro-rules--d0ecb231d8374b775b0e5049.md) | 171 | `declaration-track:d0ecb231d8374b775b0e504914bf14153d18ff717ead0e631430046200a8cd8c` |
| 14 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/macro-rules--f087f79384b214060eeaff1f.md) | 175 | `declaration-track:f087f79384b214060eeaff1f2b606d36199ad1145bf56785312ef0fd5ce5c308` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/syntax--ab5d6df40e27a48d90700e7d.md) | 211 | `declaration-track:ab5d6df40e27a48d90700e7d99d8a25e82cdee60e900f02c0b342a4ef4551794` |
| 16 | `def` | [evalIntrov](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/evalintrov--99862415c2272944a37b4508.md) | 212 | `declaration-track:99862415c2272944a37b45086ff0b45c4abd06d26e6ff27ea2fa332adcf85159` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/macro--3643657cc421d76d82442247.md) | 235 | `declaration-track:3643657cc421d76d82442247367c79b41ff19a3a13d5b5f2ca60dcf7c7f24996` |
| 18 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/elab--45ee5d810837c4892c61a5e3.md) | 237 | `declaration-track:45ee5d810837c4892c61a5e3073ba8140809a4af4ff2dcc3d53e2106c4358169` |
| 19 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/elab--1392c20fe18a610621a02f67.md) | 244 | `declaration-track:1392c20fe18a610621a02f675d4c0be293d82dcce74281881812584e7dcb0096` |
| 20 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.Lean.MVarId.clearValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-pushf--0f9fbb9c7fd727f71696f7d8.md) | 253 | `declaration-track:0f9fbb9c7fd727f71696f7d8c97cfff4b708bb92baa45787ba9c5c3c01b2d15a` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/declarations/elab--dde082d9552e5fd3498d38a7.md) | 276 | `declaration-track:dde082d9552e5fd3498d38a7fddb0ed6cebc7dbfe7887164540716f8ed613f6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
