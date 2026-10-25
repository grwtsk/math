# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Import.Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dbec270457e39333fcd6e630277a8a5ef24d997",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dbec270457e39333fcd6e630277a8a5ef24d997`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.ModPkgExt` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Modify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HeaderSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/headersyntax--ec4b8d9be3cd11cc6dab07d3.md) | 21 | `declaration-track:ec4b8d9be3cd11cc6dab07d3678af9ff3043621ba7d5d03527940dc5c204c104` |
| 2 | `def` | [HeaderSyntax.startPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/headersyntax-startpos--83db464b02d83394293ab094.md) | 23 | `declaration-track:83db464b02d83394293ab094e3813b2b89f2de0e6e91da84945218216fa6b02f` |
| 3 | `def` | [HeaderSyntax.isModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/headersyntax-ismodule--43830f8b0f2fcdd6683eee55.md) | 26 | `declaration-track:43830f8b0f2fcdd6683eee55a10a230d5d69c5fd06878ccc1ae9252253957031` |
| 4 | `def` | [HeaderSyntax.imports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/headersyntax-imports--99bff7e9dfa6261d53ba658a.md) | 29 | `declaration-track:99bff7e9dfa6261d53ba658a6035db1d7731d4f2ec27dc32654d0ca9910b9136` |
| 5 | `def` | [HeaderSyntax.toModuleHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/headersyntax-tomoduleheader--30ed54521998e4648facb686.md) | 43 | `declaration-track:30ed54521998e4648facb68602041fe3f4a70dbad1a0af5a35ecefeaf4ed21d6` |
| 6 | `abbrev` | [headerToImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/headertoimports--2efe61c7e0d3119e76b3098a.md) | 47 | `declaration-track:2efe61c7e0d3119e76b3098a71793ab6b14655c542adb0727ac152544e5d2cfb` |
| 7 | `def` | [checkDeprecatedImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/checkdeprecatedimports--dd0d7991b94570e9d326f5c9.md) | 61 | `declaration-track:dd0d7991b94570e9d326f5c912fede6a990b0ec3e88f9ad1c602b47c0e681b97` |
| 8 | `def` | [osForbiddenChars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/osforbiddenchars--20dfc0a5e903723d6af49c2d.md) | 101 | `declaration-track:20dfc0a5e903723d6af49c2d366123f54496781550e2fea72c8fa5aa7f432b4a` |
| 9 | `def` | [osForbiddenNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/osforbiddennames--0937c65ce4790c8e50e49da4.md) | 104 | `declaration-track:0937c65ce4790c8e50e49da4d43e3137c10c8fbaed3d8c2fa0487cfb4db2b168` |
| 10 | `def` | [checkComponentPortability](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/checkcomponentportability--4b25408dca0d05c156d78cef.md) | 111 | `declaration-track:4b25408dca0d05c156d78cefe9ef5920b446601014b5fe1709351a3ad5291be4` |
| 11 | `def` | [checkModuleNamePortability](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/checkmodulenameportability--81677f9343ca04e4b16fce7f.md) | 119 | `declaration-track:81677f9343ca04e4b16fce7f75fd61287325c0bb13029587bb459633d4cd6b53` |
| 12 | `def` | [processHeaderCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/processheadercore--70aa65586fd81deda63ae58f.md) | 138 | `declaration-track:70aa65586fd81deda63ae58fa5228101d44d01cc5ce0cfcbca0b34a61184b040` |
| 13 | `def` | [processHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/processheader--28539e5e4d2b7c33937f273c.md) | 174 | `declaration-track:28539e5e4d2b7c33937f273c1de46c2e95926627ebbba4693ded852cba78fd98` |
| 14 | `def` | [parseImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/parseimports--cd8d15110cf3f0a5a6c7e1ff.md) | 184 | `declaration-track:cd8d15110cf3f0a5a6c7e1ff11ac9bffd88f0c15388148ebb262a8175823a665` |
| 15 | `def` | [printImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/printimports--878fad51a136f610738f8db3.md) | 190 | `declaration-track:878fad51a136f610738f8db3e059b0d6454432c00693b4b41df144cca1e33b2e` |
| 16 | `def` | [printImportSrcs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/declarations/printimportsrcs--91cc2c55d4b2152f123b82fd.md) | 196 | `declaration-track:91cc2c55d4b2152f123b82fd62f73d0e62e292f9d02f819cf65b6d064de08a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
