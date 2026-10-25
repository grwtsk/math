# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2771137e95629c32e0d5276bf819765cbf0201c6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2771137e95629c32e0d5276bf819765cbf0201c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.Paths` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LintVerbosity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/lintverbosity--57c9cd266e32fe7a6f070dd8.md) | 64 | `declaration-track:57c9cd266e32fe7a6f070dd830fab3ed288591c42a6ec345a58f562dbc5ba5b4` |
| 2 | `def` | [getChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/getchecks--c05fec204e5594157a2af072.md) | 78 | `declaration-track:c05fec204e5594157a2af072d2654a655699fff950181c8455823d9165f7fa19` |
| 3 | `def` | [lintCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/lintcore--293b36df1ce8385d69d057e8.md) | 93 | `declaration-track:293b36df1ce8385d69d057e8b99aaef63c14641644ce103ced828bb469a065b7` |
| 4 | `def` | [sortResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/sortresults--1cca3fd21ca436064fa9c5c3.md) | 117 | `declaration-track:1cca3fd21ca436064fa9c5c398ea4023272671e13992fee6a468cf97d7158f1e` |
| 5 | `def` | [printWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/printwarning--2e878d260e05d050e056f2fd.md) | 125 | `declaration-track:2e878d260e05d050e056f2fd3e9a6891a33513b0fa1e0b34b12facee92845d6c` |
| 6 | `def` | [printWarnings](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/printwarnings--fde425fe1c53721bb4294dad.md) | 134 | `declaration-track:fde425fe1c53721bb4294dad22e1e646e840597ff0d8d539e971aadf81b8983b` |
| 7 | `def` | [groupedByFilename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/groupedbyfilename--b03f9ac22917d7f9ee53c1e2.md) | 144 | `declaration-track:b03f9ac22917d7f9ee53c1e23bc97e9d42af12e57456aef16d97b9306cc222ec` |
| 8 | `def` | [formatLinterResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/formatlinterresults--a754f71477eb82976ce7ff3c.md) | 167 | `declaration-track:a754f71477eb82976ce7ff3c4e41303b1a4efc958799b159d488f76c63b6f8a2` |
| 9 | `def` | [getDeclsInCurrModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/getdeclsincurrmodule--9d58d3ae282831a1b00a100c.md) | 198 | `declaration-track:9d58d3ae282831a1b00a100c4a7c4f2701025b16e4466ce7ffb3f8f874c8b448` |
| 10 | `def` | [getAllDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/getalldecls--91972516f1c128f865c8736f.md) | 202 | `declaration-track:91972516f1c128f865c8736f4b3c21dc5dbe88972284f999e32d1f8a61cbce16` |
| 11 | `def` | [getDeclsInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/getdeclsinpackage--196cf95c14ad0c23b8793297.md) | 206 | `declaration-track:196cf95c14ad0c23b8793297ffc9cbdd424b4573e9f43715dc1904c9a69c156d` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/syntax--1cf84bc5232b37aa14d54a28.md) | 216 | `declaration-track:1cf84bc5232b37aa14d54a28926c9a73a5bcd23d369aad0ccbe5db0b2d270071` |
| 13 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/elab--a5441f3f381757ea58213ecc.md) | 222 | `declaration-track:a5441f3f381757ea58213eccdefa0a5cd0ca41ff0b9699a68bf5b0a1b535c0e6` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/declarations/elab--467daa45d89a928a460d3ac7.md) | 263 | `declaration-track:467daa45d89a928a460d3ac70ef105773f96d7f70084ec0907871968549bd1d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
