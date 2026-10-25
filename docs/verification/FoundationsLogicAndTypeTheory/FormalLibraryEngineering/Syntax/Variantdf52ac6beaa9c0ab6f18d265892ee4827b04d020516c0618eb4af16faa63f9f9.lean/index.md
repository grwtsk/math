# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ba9576232a398d9deb7cfbf6accb85ac97720b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ba9576232a398d9deb7cfbf6accb85ac97720b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Modify` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandOptPrecedence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/expandoptprecedence--a9df6d203ff652aad87d0005.md) | 21 | `declaration-track:a9df6d203ff652aad87d00057df5f826eee5efe0ac65ad0952a5e602df4bf382` |
| 2 | `def` | [mkParserSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/mkparserseq--6ee46d63ae5998bcccc3cd80.md) | 27 | `declaration-track:6ee46d63ae5998bcccc3cd80b76d3e49e55ed937406ba9f4dae5914dccb3300d` |
| 3 | `structure` | [ToParserDescrContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/toparserdescrcontext--db66d1d9ac277f3feca70072.md) | 39 | `declaration-track:db66d1d9ac277f3feca70072679577fae5e9593b78e3403c07d684268390bd44` |
| 4 | `abbrev` | [ToParserDescrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/toparserdescrm--7c3c1d578453ea11f9d258fb.md) | 46 | `declaration-track:7c3c1d578453ea11f9d258fbb650a6cc7bce1c2b0104e45b8bd1491a6bfc4f19` |
| 5 | `abbrev` | [ToParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/toparserdescr--7ff2ac7f850904fb065343a3.md) | 47 | `declaration-track:7ff2ac7f850904fb065343a34739404b746faa358fb5544e80bac4934d88b8e5` |
| 6 | `def` | [markAsTrailingParser](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/markastrailingparser--a340af8e3af38ff4073d40c4.md) | 48 | `declaration-track:a340af8e3af38ff4073d40c4ed06d17912c4f1ab212eab69b341369b3edf41fb` |
| 7 | `def` | [withNotFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/withnotfirst--dc1f9aad25f9f26d065ab277.md) | 50 | `declaration-track:dc1f9aad25f9f26d065ab2778f11ea1d93e24eb1163ecb5240070d93ea4b871a` |
| 8 | `def` | [ensureUnaryOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/ensureunaryoutput--36cad4f18133f3a9125ad9d0.md) | 53 | `declaration-track:36cad4f18133f3a9125ad9d0965e3235e846ca6d42dacb6616736cfb9e9bfdb5` |
| 9 | `def` | [withNestedParser](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/withnestedparser--52dc99c9ef034ad36298bc28.md) | 60 | `declaration-track:52dc99c9ef034ad36298bc282bb8065682ad236b061b013bcc1f817021156f3d` |
| 10 | `def` | [addCategoryInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/addcategoryinfo--139792ea2fda2e825df16346.md) | 64 | `declaration-track:139792ea2fda2e825df1634673958fa0c591924b6380b52795efddc114febb0a` |
| 11 | `def` | [addAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/addaliasinfo--f06941c094b9384cc263a80d.md) | 70 | `declaration-track:f06941c094b9384cc263a80d36f4f66f6824d4505e29fde525d6ef10b0860535` |
| 12 | `def` | [checkLeftRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/checkleftrec--cb69b8f233beb76e8d00b5cd.md) | 75 | `declaration-track:cb69b8f233beb76e8d00b5cdaa01c8ae9ebe325662b0121978d99b2199b7a6b9` |
| 13 | `def` | [elabParserName?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/elabparsername--ced9973963c339bb22b9e3b4.md) | 89 | `declaration-track:ced9973963c339bb22b9e3b4a58a16cb8f7e02d2b4704c9e1b73474ce1525b48` |
| 14 | `def` | [elabParserName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/elabparsername--0ca6f04e330868556d3a5024.md) | 109 | `declaration-track:0ca6f04e330868556d3a5024aad9d18609377729b522f4e27182871eea98bc9f` |
| 15 | `def` | [toParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/toparserdescr--f19df5968780d4576a102bcf.md) | 119 | `declaration-track:f19df5968780d4576a102bcfd3aa08ba48fbafad68c749c6761d2c009e24f197` |
| 16 | `def` | [declareSyntaxCatQuotParser](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/declaresyntaxcatquotparser--c0f24bf44c0e3fd3606d295f.md) | 293 | `declaration-track:c0f24bf44c0e3fd3606d295f438d20ac6dea50943b7eb01ca9eed01ad4a6fc8c` |
| 17 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/anonymous--052c30aa1521530a008585ba.md) | 298 | `declaration-track:052c30aa1521530a008585ba752255643966a6258790a4036f333b4a2b6a18e7` |
| 18 | `def` | [elabDeclareSyntaxCat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/elabdeclaresyntaxcat--b19c76bac667e0c51bfd66a1.md) | 307 | `declaration-track:b19c76bac667e0c51bfd66a1cebaaf11a68ec6beb518b02f5b08dba44c479ac6` |
| 19 | `def` | [mkNameFromParserSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/mknamefromparsersyntax--7c38d9bfdffcbe698f193215.md) | 334 | `declaration-track:7c38d9bfdffcbe698f193215f1abb204ef4d943af2a3d4a87c3ad4c57f8c10e0` |
| 20 | `def` | [isAtomLikeSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/isatomlikesyntax--f20d4d2d332c7bd9cfdbaff6.md) | 367 | `declaration-track:f20d4d2d332c7bd9cfdbaff662213312b2671003bda1354662365d99c8c51848` |
| 21 | `def` | [resolveSyntaxKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/resolvesyntaxkind--99c1781adddd3bd91cd016a9.md) | 378 | `declaration-track:99c1781adddd3bd91cd016a953d3d39bf61478a2cb518d61b3e80b698276864e` |
| 22 | `def` | [isLocalAttrKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/islocalattrkind--462e7269b545cc4167900269.md) | 383 | `declaration-track:462e7269b545cc4167900269d2971cefa9ecbf897fc85f742b0f7c7a4a6903fc` |
| 23 | `def` | [addMacroScopeIfLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/addmacroscopeiflocal--7be9aef01ede0c634c73b03d.md) | 391 | `declaration-track:7be9aef01ede0c634c73b03d7c5a44af3b3a309ae8b7074c1edbdcd83b617f27` |
| 24 | `def` | [elabSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/elabsyntax--26f399e7a9dd84a5d56464fd.md) | 398 | `declaration-track:26f399e7a9dd84a5d56464fd2633cb0138b2b06eefbe84990c05401c992ad669` |
| 25 | `def` | [elabSyntaxAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/elabsyntaxaux--733476d9c6bf8bd6ed5987c7.md) | 454 | `declaration-track:733476d9c6bf8bd6ed5987c7963c8f4008b1ec183e65fbf3afa216d9021f6bfe` |
| 26 | `def` | [elabSyntaxAbbrev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/elabsyntaxabbrev--f0a4d5f6dc1afdff74a35f47.md) | 457 | `declaration-track:f0a4d5f6dc1afdff74a35f473174ad87e2501c47dae42ddbfc031b2d2c79f51c` |
| 27 | `def` | [checkRuleKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/checkrulekind--e0bacaf742fbfb04eecf971f.md) | 469 | `declaration-track:e0bacaf742fbfb04eecf971fc648d157c758aacb1b9cf65df1cdfdefcf43b534` |
| 28 | `def` | [inferMacroRulesAltKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/infermacrorulesaltkind--1058236eea07e2f69c5501e4.md) | 472 | `declaration-track:1058236eea07e2f69c5501e419439a60a968dfd82ad9c07f4d511eb8e12197fd` |
| 29 | `def` | [expandNoKindMacroRulesAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/expandnokindmacrorulesaux--3d9227ba42cf7b2c1782ce9a.md) | 483 | `declaration-track:3d9227ba42cf7b2c1782ce9aabe2db1f53d30d8fa613afdd5e9b777aec5c5848` |
| 30 | `def` | [strLitToPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/strlittopattern--279ad6c1ea1a34df5c50d063.md) | 498 | `declaration-track:279ad6c1ea1a34df5c50d063f19f43efbda250ebe2b039e2d7741d1970d2267d` |
| 31 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/declarations/builtin-initialize--9caec79341a65c8ec416c7e5.md) | 503 | `declaration-track:9caec79341a65c8ec416c7e5837e4bb314232ff65f364960f989e5bbdaeca4a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
