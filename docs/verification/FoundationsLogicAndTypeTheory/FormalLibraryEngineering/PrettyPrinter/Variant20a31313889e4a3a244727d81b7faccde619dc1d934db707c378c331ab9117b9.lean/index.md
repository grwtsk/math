# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrettyPrinter.Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9af9eb4ddad8aa43f13c7ebfd0fe0b64b9479a11",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9af9eb4ddad8aa43f13c7ebfd0fe0b64b9479a11`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter.Delaborator` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppCategory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppcategory--eb322cf4c57fc0099521acdb.md) | 20 | `declaration-track:eb322cf4c57fc0099521acdb3c2936ad545ba0546463a245247937151bbf621a` |
| 2 | `def` | [ppTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppterm--1d605eb50005b5f63580e525.md) | 25 | `declaration-track:1d605eb50005b5f63580e525bfc1e01c8e8a8e1376d990433acff7010bd96438` |
| 3 | `def` | [ppUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppusing--cdc2209a74551d3392fb562a.md) | 27 | `declaration-track:cdc2209a74551d3392fb562a6cd86c688e18f678ce945d4b9aef62c852b35eab` |
| 4 | `def` | [maybePrependExprSizes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/maybeprependexprsizes--e0e3c051273a7757e7fed1b7.md) | 38 | `declaration-track:e0e3c051273a7757e7fed1b7e569be5b95914738beb3945f27171eab0b6f54e7` |
| 5 | `def` | [ppExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppexpr--81cce09bfdd3c344a1922412.md) | 44 | `declaration-track:81cce09bfdd3c344a1922412b9b11ae7fb305fd943dd0b0588a6165f690b12fc` |
| 6 | `def` | [ppExprWithInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppexprwithinfos--32cc1733a86a358c58d7ae60.md) | 49 | `declaration-track:32cc1733a86a358c58d7ae60443c7fbb428e07f1fc46dc0a10df300c6685c315` |
| 7 | `def` | [ppConstNameWithInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppconstnamewithinfos--b39584c48800557cf8faa676.md) | 58 | `declaration-track:b39584c48800557cf8faa676b5bd81445a45bdd355e9a1a90bae402986625c7d` |
| 8 | `def` | [ppExprLegacy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppexprlegacy--43674900e59e80f74c414dcb.md) | 68 | `declaration-track:43674900e59e80f74c414dcbe5bc12fb6ddf0cf9415ca423a348b7df189da2ed` |
| 9 | `def` | [ppLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/pplevel--b0bdb878c72775fd7c39bcdb.md) | 73 | `declaration-track:b0bdb878c72775fd7c39bcdbd3d9555634324ebf6c4d4a77b47a08a6e05e5e08` |
| 10 | `def` | [ppTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/pptactic--56daca48ca8419fb70836ea7.md) | 76 | `declaration-track:56daca48ca8419fb70836ea7581e5d68d1b258f5d7cf88a8d89b004141f4d3d7` |
| 11 | `def` | [ppCommand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppcommand--b8f6e0eb9192275270056b0c.md) | 78 | `declaration-track:b8f6e0eb9192275270056b0cf458e21f48c6c44fa663d443a7f7a92b9d547fec` |
| 12 | `def` | [ppModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppmodule--689baf269f24fafc497dd8c4.md) | 80 | `declaration-track:689baf269f24fafc497dd8c432805083835662263e6cfc54d4233840b1c6ce6e` |
| 13 | `def` | [ppSignature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ppsignature--e0c74a55ed64369f53a5400d.md) | 85 | `declaration-track:e0c74a55ed64369f53a5400d9167e562ebde5fd2512a995c24f8ce1140988a57` |
| 14 | `def` | [noContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/nocontext--5a33120255c6b1e92703941f.md) | 94 | `declaration-track:5a33120255c6b1e92703941f8134dfa508282b26879ad4254ff6d7d775f6f2e2` |
| 15 | `def` | [withoutContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/withoutcontext--d46e8e672beebe2b6d4e1fbd.md) | 106 | `declaration-track:d46e8e672beebe2b6d4e1fbd751511ca43a3c07010a5b54f48e08c92c3a20924` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/builtin-initialize--5578e1caaf8cbefb3048b835.md) | 111 | `declaration-track:5578e1caaf8cbefb3048b8357be29b9cbd266693c8210ecaa2abe7d523641848` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/builtin-initialize--0b2813755dc59658b5f96b46.md) | 120 | `declaration-track:0b2813755dc59658b5f96b4668f293ebc5b0d64231797415a46e0b16e6551690` |
| 18 | `def` | [registerParserCompilers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/registerparsercompilers--dccf65ce2487e6ad14cffbc8.md) | 124 | `declaration-track:dccf65ce2487e6ad14cffbc88264ecee72a49e62c60032ecd8717fb7f5e63043` |
| 19 | `def` | [ofFormatWithInfosM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/offormatwithinfosm--10e323df04f888b179804c84.md) | 137 | `declaration-track:10e323df04f888b179804c84bc77b52f5c6d58bdd17408445d3beadc664d7b02` |
| 20 | `def` | [ofConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/ofconst--2cc205f4bbd802a2d8422491.md) | 149 | `declaration-track:2cc205f4bbd802a2d8422491a92014045c4aa0fc83ebeb18192ea4732dff41a3` |
| 21 | `def` | [signature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant20a31313889e4a3a244727d81b7faccde619dc1d934db707c378c331ab9117b9.lean/declarations/signature--5a1dd1b02b122bafd4d4d3a3.md) | 159 | `declaration-track:5a1dd1b02b122bafd4d4d3a344a25230878e4aef76bffed4ded4e204b94fd421` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
