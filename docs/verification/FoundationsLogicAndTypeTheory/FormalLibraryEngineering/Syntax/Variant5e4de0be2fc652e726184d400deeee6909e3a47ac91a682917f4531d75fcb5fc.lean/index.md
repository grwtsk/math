# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00a4f2ef990d0c7970d8ea779a42957fb89d7234",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00a4f2ef990d0c7970d8ea779a42957fb89d7234`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Modify` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandOptPrecedence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/expandoptprecedence--af58cbbf5e7c71dddb239e46.md) | 29 | `declaration-track:af58cbbf5e7c71dddb239e46e98b699f06da33385bb9373f5026b6c8fbc1f987` |
| 2 | `def` | [mkParserSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/mkparserseq--e3a5bab6f0a9199ca2d44c6a.md) | 35 | `declaration-track:e3a5bab6f0a9199ca2d44c6a6a8e90f7af08b90fa494402d570c1fd4e75c0f58` |
| 3 | `structure` | [ToParserDescrContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/toparserdescrcontext--f2ae1b6426486699e2dc9dc2.md) | 47 | `declaration-track:f2ae1b6426486699e2dc9dc2dfd1228d37814294f9e8c5e76b5e474f587ac259` |
| 4 | `abbrev` | [ToParserDescrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/toparserdescrm--f4241be3b3670159994a6ab7.md) | 54 | `declaration-track:f4241be3b3670159994a6ab71bbf36a8472ecabe8ca5aef4d4cbec4396ce6f6a` |
| 5 | `abbrev` | [ToParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/toparserdescr--baca5104e9b8a11b7a6ed7d1.md) | 55 | `declaration-track:baca5104e9b8a11b7a6ed7d1e3c49b4ada8a05ba30c07e5293626b2f03ecd364` |
| 6 | `def` | [markAsTrailingParser](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/markastrailingparser--fd042256eeda3ef918f7d15f.md) | 56 | `declaration-track:fd042256eeda3ef918f7d15f0bc2f92acc51aba42acf3dd1c7b2dd9edfe6fab1` |
| 7 | `def` | [withNotFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/withnotfirst--9f0be51866806128e3847920.md) | 58 | `declaration-track:9f0be51866806128e3847920392ba61a90412296d17e2ec6cf6bc974fb37746b` |
| 8 | `def` | [ensureUnaryOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/ensureunaryoutput--6a5795f2b7df8c329d216f59.md) | 61 | `declaration-track:6a5795f2b7df8c329d216f59050bc93672a90e4a1c9903b8b1702573bac2b862` |
| 9 | `def` | [withNestedParser](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/withnestedparser--880c15d99e0cdef3a9e1f040.md) | 68 | `declaration-track:880c15d99e0cdef3a9e1f040e618973f488c2ea45e2300c7d0874ffb9e924444` |
| 10 | `def` | [addCategoryInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/addcategoryinfo--5bf82d03d86dccb5f8a6d12c.md) | 72 | `declaration-track:5bf82d03d86dccb5f8a6d12ccc18c048d1b4944c104715804391e2bbb7fe9ad6` |
| 11 | `def` | [addAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/addaliasinfo--04c618f97b48fa8b3d17ebeb.md) | 78 | `declaration-track:04c618f97b48fa8b3d17ebeb7c94ec8cb14a2ee19cb9d76afec46b8bc864842f` |
| 12 | `def` | [checkLeftRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/checkleftrec--a9406b818de4dc3afed4f0a9.md) | 83 | `declaration-track:a9406b818de4dc3afed4f0a98cd204e4c50e594ba7e88c764284b546edea3688` |
| 13 | `def` | [elabParserName?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/elabparsername--09e51ec50edb6e6d0079692c.md) | 97 | `declaration-track:09e51ec50edb6e6d0079692c0fd580f524fc6d9f3183406575d7b55457411ff3` |
| 14 | `def` | [elabParserName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/elabparsername--eef1df0912304e778f9a2a36.md) | 117 | `declaration-track:eef1df0912304e778f9a2a36e5e16f4e028d43da502575e6509d46e20d767c00` |
| 15 | `def` | [toParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/toparserdescr--0121994987e7966d0b3104cc.md) | 127 | `declaration-track:0121994987e7966d0b3104cca67deba2e0d97c1e3f1e6e3851c3cab4d7db82f2` |
| 16 | `def` | [declareSyntaxCatQuotParser](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/declaresyntaxcatquotparser--7e7c0edf6077402664a2f879.md) | 301 | `declaration-track:7e7c0edf6077402664a2f87905753f6443fc175b94a865b54633c24fcd4335c6` |
| 17 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/anonymous--56f3e1390323352146d1bbb0.md) | 306 | `declaration-track:56f3e1390323352146d1bbb05282b9fad4ec772c3cad23d9fe09d31c44230a72` |
| 18 | `def` | [elabDeclareSyntaxCat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/elabdeclaresyntaxcat--6c4939b266b09ac0afe4fb0a.md) | 315 | `declaration-track:6c4939b266b09ac0afe4fb0ad588833132698355f6839e63153b90f54ffbfed0` |
| 19 | `def` | [mkNameFromParserSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/mknamefromparsersyntax--9cbfd464284d0ceead954096.md) | 342 | `declaration-track:9cbfd464284d0ceead9540961724ed5590e42940e0eb40ed319d3195bc11aff4` |
| 20 | `def` | [isAtomLikeSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/isatomlikesyntax--916166c04c573999c25a90cd.md) | 375 | `declaration-track:916166c04c573999c25a90cd7cb8f34988ef02e807ea876cdf495d563b30723e` |
| 21 | `def` | [resolveSyntaxKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/resolvesyntaxkind--74d33f1758d87b53bee98916.md) | 386 | `declaration-track:74d33f1758d87b53bee989166333b6426f4fb391129fa24294a406860ec44fb9` |
| 22 | `def` | [isLocalAttrKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/islocalattrkind--03866e245b723cca549366f2.md) | 391 | `declaration-track:03866e245b723cca549366f29f51da9900b199fa95ac9b98d15a526f071a9502` |
| 23 | `def` | [addMacroScopeIfLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/addmacroscopeiflocal--54fa3e5df93fc6d66d971081.md) | 399 | `declaration-track:54fa3e5df93fc6d66d9710819a3b183feda24b0a48cacebc474ad42054ea1d97` |
| 24 | `def` | [elabSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/elabsyntax--d9d79a6181190740c17af6f7.md) | 406 | `declaration-track:d9d79a6181190740c17af6f7e5e5b53cf520e02fb9e81896dd829cd4fbe15772` |
| 25 | `def` | [elabSyntaxAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/elabsyntaxaux--f699fd0f5d6308d1cbd3a281.md) | 462 | `declaration-track:f699fd0f5d6308d1cbd3a28183d9ec92ae751b760b706e1c78c2de03355f3367` |
| 26 | `def` | [elabSyntaxAbbrev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/elabsyntaxabbrev--27d0f9d6a03143006cf84615.md) | 465 | `declaration-track:27d0f9d6a03143006cf84615adbbdaadb4e72a2fa9a24d45220337f8efe50524` |
| 27 | `def` | [checkRuleKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/checkrulekind--70332a3228349b915bc1c059.md) | 477 | `declaration-track:70332a3228349b915bc1c059cef86bc1b03836b5ffe1adf76dfcfad7333d8892` |
| 28 | `def` | [inferMacroRulesAltKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/infermacrorulesaltkind--22a56859ad31b7890d3a8a03.md) | 480 | `declaration-track:22a56859ad31b7890d3a8a03c28c89dffa2f8ab6749ea50183fa54b9d25cc336` |
| 29 | `def` | [expandNoKindMacroRulesAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/expandnokindmacrorulesaux--2ccc7bfa0f5cafda287924f9.md) | 491 | `declaration-track:2ccc7bfa0f5cafda287924f923d62e4981eb42743e49087675aedb5c835e09b8` |
| 30 | `def` | [strLitToPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/strlittopattern--2583cee26d650d7c3e32e5eb.md) | 506 | `declaration-track:2583cee26d650d7c3e32e5eb664c45f1cdfed6525be97a1fb1aa3d53cb0870ac` |
| 31 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean/declarations/builtin-initialize--b7235c127461e711fe4a96ff.md) | 511 | `declaration-track:b7235c127461e711fe4a96ffbc078b4dccc1b81466d248d05356189190ee9edd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
