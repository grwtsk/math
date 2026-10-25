# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19f1a2ebff1dd55f115df1effa919e30ec3e5c9c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19f1a2ebff1dd55f115df1effa919e30ec3e5c9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Match.Value` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.NamedPatterns` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/pattern--dfa430aa349aa22026fd3028.md) | 19 | `declaration-track:dfa430aa349aa22026fd3028e683d521d089c7f868803ce4fd5ad1601e33e08f` |
| 2 | `def` | [toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/tomessagedata--a34312dc9c69e53eff622b33.md) | 30 | `declaration-track:a34312dc9c69e53eff622b331b2fe05cac67bc3d4c56b71ada256ed94048f75a` |
| 3 | `def` | [toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/toexpr--d078d8e0c499f80535ebbcb9.md) | 39 | `declaration-track:d078d8e0c499f80535ebbcb96d028773e8c6066f3b5fb3dc5c81204f34c6383c` |
| 4 | `def` | [applyFVarSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/applyfvarsubst--292ecf02011f3012864e0ebd.md) | 65 | `declaration-track:292ecf02011f3012864e0ebdb10f72ef1028e03736c0caf38d1436ffad10e662` |
| 5 | `def` | [replaceFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/replacefvarid--b451316517b7a35e34a55160.md) | 77 | `declaration-track:b451316517b7a35e34a551600876d66ecdadc47648b05b21244bdb3dedbbbc35` |
| 6 | `def` | [hasExprMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/hasexprmvar--9c3d17749d9ed9d2ef437fbb.md) | 81 | `declaration-track:9c3d17749d9ed9d2ef437fbb6b0bf699d4e6aee8f4cd7c90f923df7a25ca0071` |
| 7 | `def` | [collectFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/collectfvars--59fe90515ea546b5cc0d46e5.md) | 90 | `declaration-track:59fe90515ea546b5cc0d46e5894debe0b1792c2aa447b890d3ef2ce423fc6c7d` |
| 8 | `def` | [instantiatePatternMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/instantiatepatternmvars--28662c377a8ea1ffc4d15e13.md) | 103 | `declaration-track:28662c377a8ea1ffc4d15e130f1b07e30bee7f4e644b2016b5033ab05000b76b` |
| 9 | `structure` | [AltLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/altlhs--8a6e28dd48d3a1490728e2e3.md) | 111 | `declaration-track:8a6e28dd48d3a1490728e2e3fd5cbadad6fafe98a636272ee112e9c03763ba6b` |
| 10 | `def` | [AltLHS.collectFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/altlhs-collectfvars--6a6f6e240db7191dca8186ba.md) | 117 | `declaration-track:6a6f6e240db7191dca8186ba80e70ead09a4c53850495dca7b55f4ed41c1c426` |
| 11 | `def` | [instantiateAltLHSMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/instantiatealtlhsmvars--45fb28f5c4f54f9570ef5b32.md) | 121 | `declaration-track:45fb28f5c4f54f9570ef5b32fbf158fd601ad30b2f5028ce6ddbcf2007000ef4` |
| 12 | `structure` | [Alt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/alt--fd20d1b290fb96bbcf457d74.md) | 128 | `declaration-track:fd20d1b290fb96bbcf457d744894bc4799b2daf48cb09ff800f32ac7e04c3730` |
| 13 | `def` | [toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/tomessagedata--80edd4c3f7396a1e64f5f7ba.md) | 164 | `declaration-track:80edd4c3f7396a1e64f5f7bafea33b6f92c3ae749a2c5efc1bf5f3368d43fccf` |
| 14 | `def` | [applyFVarSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/applyfvarsubst--479e5f5013cd6d0f5de46427.md) | 173 | `declaration-track:479e5f5013cd6d0f5de4642786cc2be8c3fa52a9da80b787f37328a35ea87556` |
| 15 | `def` | [replaceFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/replacefvarid--22c2b29de81663b0b93566f9.md) | 180 | `declaration-track:22c2b29de81663b0b93566f941460419ef4397f749a51bb9d36349f5fb0c9107` |
| 16 | `def` | [isLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/islocaldecl--035595deadb3ff54ba6bc7e4.md) | 190 | `declaration-track:035595deadb3ff54ba6bc7e4b07701bed2683f56b76b5f9e7798a81d55fea681` |
| 17 | `inductive` | [Example](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/example--00b86727a748028be23f00f8.md) | 195 | `declaration-track:00b86727a748028be23f00f84ac3812b0d30d4310837a03d4781ab78b8ca5f30` |
| 18 | `def` | [replaceFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/replacefvarid--ca6cd126874654aceb31a3a8.md) | 204 | `declaration-track:ca6cd126874654aceb31a3a8034fa8251e4381ddc6e6bea59c0e21edf29fb662` |
| 19 | `def` | [applyFVarSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/applyfvarsubst--4823df79de2d620b53b94ab7.md) | 210 | `declaration-track:4823df79de2d620b53b94ab70e0e1f77889880e30acaffc1b80887152eb97fc8` |
| 20 | `def` | [varsToUnderscore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/varstounderscore--f805b187ffa3ee15c94588bf.md) | 219 | `declaration-track:f805b187ffa3ee15c94588bf2a7db786decffd7f5d8be3bd251e480ecb6a17c1` |
| 21 | `def` | [toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/tomessagedata--55a2564579495832180ad940.md) | 225 | `declaration-track:55a2564579495832180ad9403574287e69a85d234fd8f219620186a1e58351a5` |
| 22 | `def` | [examplesToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/examplestomessagedata--ae7cbcd3ba27f5288effd7e5.md) | 235 | `declaration-track:ae7cbcd3ba27f5288effd7e5cc29c4a448b6d3c7d9b35b80ba90eb93b0f16558` |
| 23 | `structure` | [Problem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/problem--befb4916a64d12a831301e57.md) | 238 | `declaration-track:befb4916a64d12a831301e5707c2374365aecb1a690547dd18745a17e93192b5` |
| 24 | `def` | [withGoalOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/withgoalof--332ad8b40763c06474fe77bc.md) | 245 | `declaration-track:332ad8b40763c06474fe77bc1c6fe23c5d6e8088fa1ffe315d55f37746113f39` |
| 25 | `def` | [Problem.toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/problem-tomessagedata--9a162f831e64c72cf74d334e.md) | 248 | `declaration-track:9a162f831e64c72cf74d334eb470a4c5c56e392029c45df34890158c2654f06d` |
| 26 | `abbrev` | [CounterExample](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/counterexample--e96a94ec8a05f875dcb46637.md) | 254 | `declaration-track:e96a94ec8a05f875dcb466377da87a50ed1aaad1590b452fa3e834ec4b29e926` |
| 27 | `def` | [counterExampleToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/counterexampletomessagedata--14bf001c75ba0887473f6678.md) | 256 | `declaration-track:14bf001c75ba0887473f6678da009a0dc73c8b79f461ec0fb3585ff84d45a95e` |
| 28 | `def` | [counterExamplesToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/counterexamplestomessagedata--0af77489d9d178e77db3c72b.md) | 259 | `declaration-track:0af77489d9d178e77db3c72bb6072ca891eb00d29ac27dccc9ba25c9bd8e0506` |
| 29 | `structure` | [MatcherResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/matcherresult--9ad39b7035bcfbc20edd1b19.md) | 262 | `declaration-track:9ad39b7035bcfbc20edd1b19e0304e95f75fcaf9dbf8a03ae56eef10d6c06453` |
| 30 | `def` | [toPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/topattern--ffd3548e92fcf892c056670e.md) | 278 | `declaration-track:ffd3548e92fcf892c056670ebbafd1a6d00afe2aafd14329a20c0ad5a152049c` |
| 31 | `def` | [congrEqnThmSuffixBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/congreqnthmsuffixbase--a3e8ee3c770b3dfa9bb3f8e8.md) | 310 | `declaration-track:a3e8ee3c770b3dfa9bb3f8e8e719da7c0d20cbe320170b2fc3bc7307ab19e3ea` |
| 32 | `def` | [congrEqnThmSuffixBasePrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/congreqnthmsuffixbaseprefix--db21ce37fb927b1d41a667c3.md) | 311 | `declaration-track:db21ce37fb927b1d41a667c3c7db76e5b53f5a57b9b29ace9edc782edb556770` |
| 33 | `def` | [congrEqn1ThmSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/congreqn1thmsuffix--1104970dd22ea4e1394e2d30.md) | 312 | `declaration-track:1104970dd22ea4e1394e2d30a795dc8ae57b637cb20091deb2e0e167e8282fb9` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/example--47e619d7747a47717e90df60.md) | 313 | `declaration-track:47e619d7747a47717e90df60cda830fd31a3e40f0c283890d55c42f9f6f319b8` |
| 35 | `def` | [isCongrEqnReservedNameSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/declarations/iscongreqnreservednamesuffix--490e32fe749ff8a86be5eb00.md) | 316 | `declaration-track:490e32fe749ff8a86be5eb006d0f505d23cd97e607ee0238d5e7bd63e899e4e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
