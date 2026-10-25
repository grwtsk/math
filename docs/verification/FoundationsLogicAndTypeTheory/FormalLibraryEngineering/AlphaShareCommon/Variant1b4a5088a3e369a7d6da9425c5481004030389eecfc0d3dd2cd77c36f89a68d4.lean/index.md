# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AlphaShareCommon.Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3a603988da78fe4313c5d2e6fcb3fe29030d4fe",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3a603988da78fe4313c5d2e6fcb3fe29030d4fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.ReducibilityAttrs` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.ProjFns` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hashChild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/hashchild--37591da1b1b7fbb642acc0cc.md) | 16 | `declaration-track:37591da1b1b7fbb642acc0cc6596624af5b0cf8e22e38dcaedb8529e7b8c03a9` |
| 2 | `def` | [alphaHash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/alphahash--a389c15740d3b098080adcd9.md) | 23 | `declaration-track:a389c15740d3b098080adcd964a3ca6dbf7cd62d4f031b002e76b628b737185d` |
| 3 | `def` | [alphaEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/alphaeq--15396985fece7d80e3c9daea.md) | 33 | `declaration-track:15396985fece7d80e3c9daea2fc9373ab6e43c1eb7714273a95dc429f2df63d9` |
| 4 | `def` | [isGrindGadget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/isgrindgadget--bfdbc63ce9f05b397713983d.md) | 62 | `declaration-track:bfdbc63ce9f05b397713983d7dc61c2b719442e5eed5f27d17a507161052d1d5` |
| 5 | `def` | [isUnfoldReducibleCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/isunfoldreduciblecandidate--2205af8b9199da823a0e5321.md) | 73 | `declaration-track:2205af8b9199da823a0e532150208e2c4ba3df5d9f0ec6ca9e09bd26a1ab6051` |
| 6 | `structure` | [AlphaKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/alphakey--e24ab7a6045a29421b5b1c7e.md) | 77 | `declaration-track:e24ab7a6045a29421b5b1c7e14a838e006acdc4c581ac7b99d46286e24138a29` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/instance--f8f1c52baba5dff0278963de.md) | 80 | `declaration-track:f8f1c52baba5dff0278963de3642c337607ec564ac9292d8e87f0690382432d6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/instance--f5f85eac6eac9323f1e68e0e.md) | 83 | `declaration-track:f5f85eac6eac9323f1e68e0ee8ab840768d9e8a381ffac748e7da896840f895c` |
| 9 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/context--6737ac46ab92ebca850bde78.md) | 89 | `declaration-track:6737ac46ab92ebca850bde78c8e797f2e9e9ee265571ab29e18b5e3d6fb2ffeb` |
| 10 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/state--50141c326e9b1a6b08c08223.md) | 104 | `declaration-track:50141c326e9b1a6b08c0822319aff9b9abf226ada31370cf24b0b7c9fcb971f9` |
| 11 | `abbrev` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/cache--92273860e83431aa3bb99071.md) | 113 | `declaration-track:92273860e83431aa3bb9907162d6ca282a2953343a441d1eadb2e7d88bddaa3d` |
| 12 | `abbrev` | [AlphaShareCommonM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/alphasharecommonm--8c9551aa319b9396798e2595.md) | 130 | `declaration-track:8c9551aa319b9396798e259518ef3487d097d3990ab784f30dcba04f8f8f9bde` |
| 13 | `def` | [isReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/isreducible--19cafd3dc6b4322b80849539.md) | 136 | `declaration-track:19cafd3dc6b4322b80849539c25c98e0c53ceacbd5dab5c3a0696440ce9ab57a` |
| 14 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/state--28fd29f143a67d8b031af73c.md) | 139 | `declaration-track:28fd29f143a67d8b031af73c2fce0d24aa583beb28528901b1177edd30965f1e` |
| 15 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/m--2060f881d3b24c80966a8752.md) | 143 | `declaration-track:2060f881d3b24c80966a875265937de6b49e30e37af39b79bf19e1aef0064b1b` |
| 16 | `def` | [dummy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/dummy--8d8deacc2c42a53d761b93c2.md) | 145 | `declaration-track:8d8deacc2c42a53d761b93c2352a3ec02353c84f63e40e9030f99b777495ece2` |
| 17 | `def` | [save](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/save--a507a5d44ea0bae22b37e500.md) | 147 | `declaration-track:a507a5d44ea0bae22b37e500b1c8d75c987513b765c70436fd7e176c0268fb4d` |
| 18 | `abbrev` | [visit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/visit--1f1ef8338013dd5c5e5e7660.md) | 164 | `declaration-track:1f1ef8338013dd5c5e5e7660227589ce03e2c33ccbb8add4a47a93ce9f616357` |
| 19 | `def` | [go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/go--75dc03f780f7f9a3c3004ad7.md) | 183 | `declaration-track:75dc03f780f7f9a3c3004ad7afcb332a97315514fcd0eb56da55dcb30d73e96d` |
| 20 | `def` | [shareCommonAlpha](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/sharecommonalpha--ced831fff9a5fd1d64debeb4.md) | 214 | `declaration-track:ced831fff9a5fd1d64debeb408930e7501ed0b3309438e5efb49b19fdc9a1a0f` |
| 21 | `def` | [saveInc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/saveinc--fd815b4b79db8f1381de2384.md) | 225 | `declaration-track:fd815b4b79db8f1381de238410ecf8160f091a1d64d3c74ae4945d0d01dc4e57` |
| 22 | `def` | [visitInc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/visitinc--6c2702f8a44e4fbf9ff5b4fd.md) | 234 | `declaration-track:6c2702f8a44e4fbf9ff5b4fdbdf8d893bdc1cd43fbb80eb7d55841f412c440e3` |
| 23 | `def` | [shareCommonAlphaInc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variant1b4a5088a3e369a7d6da9425c5481004030389eecfc0d3dd2cd77c36f89a68d4.lean/declarations/sharecommonalphainc--bb98429ae3d90b25df20b426.md) | 262 | `declaration-track:bb98429ae3d90b25df20b4266ec4f6ac7dadf81b21eeb33fa46b91f3182911c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
