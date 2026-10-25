# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29fc50d4df1af65773e28e25066b0f15fe8dd246",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29fc50d4df1af65773e28e25066b0f15fe8dd246`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Match.Value` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.NamedPatterns` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/pattern--a3e392faaffa553b22c23e77.md) | 27 | `declaration-track:a3e392faaffa553b22c23e77d72c12749625a29cd2e4930cfca2d7513f4ee324` |
| 2 | `def` | [toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/tomessagedata--35bc4edb5afb940b3254c55c.md) | 38 | `declaration-track:35bc4edb5afb940b3254c55cb4d6bd7f2d621ed182cb233482a6471b022ba517` |
| 3 | `def` | [toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/toexpr--28f7f45c0fb987ccf344e361.md) | 47 | `declaration-track:28f7f45c0fb987ccf344e361e211677b3949890a11a582cd9a094d19aebe96bc` |
| 4 | `def` | [applyFVarSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/applyfvarsubst--7a7a302f1f29944774a42e20.md) | 73 | `declaration-track:7a7a302f1f29944774a42e20f6d06de8e6d619784fd18a999ca14e42d83918a5` |
| 5 | `def` | [replaceFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/replacefvarid--7ea6eb5c94c786a3e038d160.md) | 85 | `declaration-track:7ea6eb5c94c786a3e038d160d46d39d770dc29fecc2db6720ec19a6b4f4955bc` |
| 6 | `def` | [hasExprMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/hasexprmvar--449c8ff3dcc43c2d13e0007b.md) | 89 | `declaration-track:449c8ff3dcc43c2d13e0007bfe05f5daafbafdfee07b9371ba0a74730284d99a` |
| 7 | `def` | [collectFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/collectfvars--c7d84092124c7fa266e57a74.md) | 98 | `declaration-track:c7d84092124c7fa266e57a74bd5696b5abae4e82a8c86e440261e2d384665589` |
| 8 | `def` | [instantiatePatternMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/instantiatepatternmvars--781a0c3155365e092857f781.md) | 111 | `declaration-track:781a0c3155365e092857f781c5bab1d1c023cc650532ea8283292dc0c22f52bb` |
| 9 | `structure` | [AltLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/altlhs--81aecde141bd12854d2e5f3e.md) | 119 | `declaration-track:81aecde141bd12854d2e5f3e919d7cb1afe8778f88ed134527a827d0c0e1ff3b` |
| 10 | `def` | [AltLHS.collectFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/altlhs-collectfvars--0eaccc8038c3fdd408ce84b4.md) | 125 | `declaration-track:0eaccc8038c3fdd408ce84b4ddcc421fb10ddcf61ec9a4a83e26ea7437dcc6ed` |
| 11 | `def` | [instantiateAltLHSMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/instantiatealtlhsmvars--d0e564425ef3b4f542d06fcd.md) | 129 | `declaration-track:d0e564425ef3b4f542d06fcdec5820fdc0a211ffa0cc557e06efb77ca3170456` |
| 12 | `structure` | [Alt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/alt--ce31b428325968406a6de176.md) | 136 | `declaration-track:ce31b428325968406a6de176028422a4b5f079d5c6e24f9af31d1078ee6ab6ff` |
| 13 | `def` | [toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/tomessagedata--6d2d5cb8fce887eedb67f3da.md) | 172 | `declaration-track:6d2d5cb8fce887eedb67f3da68a54bc6461bf4e019193efd1275d3cc0353c85d` |
| 14 | `def` | [applyFVarSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/applyfvarsubst--88f12b27ad8b831d864e8a19.md) | 181 | `declaration-track:88f12b27ad8b831d864e8a191b249df13bc4911bfacb7fd48296b49235940f43` |
| 15 | `def` | [replaceFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/replacefvarid--b8be7165c2864ef42cc7f842.md) | 188 | `declaration-track:b8be7165c2864ef42cc7f842fdcf7ce5fc7cc38123a4e088ba090bf48b7b353d` |
| 16 | `def` | [isLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/islocaldecl--550616b33f82ddb2c33e71fe.md) | 198 | `declaration-track:550616b33f82ddb2c33e71fe7fe66403acd29fd09136639b3147c288443ff8d8` |
| 17 | `inductive` | [Example](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/example--df923bed9b92eae02f74447b.md) | 203 | `declaration-track:df923bed9b92eae02f74447b482fde623f1c1dded16cbb470939f08bbecc5661` |
| 18 | `def` | [replaceFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/replacefvarid--fb474f073ae0d7d88db65da1.md) | 212 | `declaration-track:fb474f073ae0d7d88db65da156fa1b1e2b847e09c476e4ded7acc7241d95744f` |
| 19 | `def` | [applyFVarSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/applyfvarsubst--b67bdf066cbe897d9ae5ed6f.md) | 218 | `declaration-track:b67bdf066cbe897d9ae5ed6f6ef7dbbb30320e0b41d76f332fdfa3a4b6fa9697` |
| 20 | `def` | [varsToUnderscore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/varstounderscore--d6568fa0281dfb03da4069e9.md) | 227 | `declaration-track:d6568fa0281dfb03da4069e9079f45d8d10f100d9de5e365a7c88f31bc73c89a` |
| 21 | `def` | [toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/tomessagedata--99d743dfb34df9ca6b1f7abb.md) | 233 | `declaration-track:99d743dfb34df9ca6b1f7abbb0521c1c9421f3d0173ee368c269cc7cad0551ff` |
| 22 | `def` | [examplesToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/examplestomessagedata--fc83c7bb2c2b7ae09de1e0a4.md) | 243 | `declaration-track:fc83c7bb2c2b7ae09de1e0a4b35e8cb88f381636fb9271b2184ae54cb0449e92` |
| 23 | `structure` | [Problem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/problem--b92bc4c61553af7f8cb5f667.md) | 246 | `declaration-track:b92bc4c61553af7f8cb5f6676c0d11f612da1f4b3b9417e2c4a435f12085450c` |
| 24 | `def` | [withGoalOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/withgoalof--6219458f0f566d9770ef8e8e.md) | 253 | `declaration-track:6219458f0f566d9770ef8e8ec2cd6432a7f2b4bcb01305948e411fc0e47ace3e` |
| 25 | `def` | [Problem.toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/problem-tomessagedata--7a6a3bfb425e6bcff7c11174.md) | 256 | `declaration-track:7a6a3bfb425e6bcff7c111743ec2777355e4a242e3f74a333c784d46656418a4` |
| 26 | `abbrev` | [CounterExample](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/counterexample--885478ade03312264ec1aa03.md) | 262 | `declaration-track:885478ade03312264ec1aa0301a72545f5589a16b53a98c20c2a8535df4c1303` |
| 27 | `def` | [counterExampleToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/counterexampletomessagedata--36b34ebb7a38a28698387765.md) | 264 | `declaration-track:36b34ebb7a38a28698387765643b4534f3291f47eedaa738702d076d99d16d8a` |
| 28 | `def` | [counterExamplesToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/counterexamplestomessagedata--6251c6ce8b9165db08ce651b.md) | 267 | `declaration-track:6251c6ce8b9165db08ce651b104e5923894623ac6770222556b6b09001a970f2` |
| 29 | `structure` | [MatcherResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/matcherresult--182ab86d201e4002f8577cb0.md) | 270 | `declaration-track:182ab86d201e4002f8577cb049d076e6e7cb0216e19d28c9d59356b103b90b10` |
| 30 | `def` | [toPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/topattern--8cc503e9135e5f376a0983c5.md) | 286 | `declaration-track:8cc503e9135e5f376a0983c5642b35fc0fb4f2e3cfa37c5cc3aa9c909a3cac17` |
| 31 | `def` | [congrEqnThmSuffixBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/congreqnthmsuffixbase--19f6be202cc493c0e0edf8ac.md) | 318 | `declaration-track:19f6be202cc493c0e0edf8acf3636e5e85dca0924cc61ab29d57d96bd3862032` |
| 32 | `def` | [congrEqnThmSuffixBasePrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/congreqnthmsuffixbaseprefix--af3a3ce4a3627d4018d669ce.md) | 319 | `declaration-track:af3a3ce4a3627d4018d669ce0268b6f3abdefb9d66d2ffdf79f09602fa647bd9` |
| 33 | `def` | [congrEqn1ThmSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/congreqn1thmsuffix--587d1d5a94924581fff4b01e.md) | 320 | `declaration-track:587d1d5a94924581fff4b01e226cf0a3ec655f434839d75b92f4fe0719a18d53` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/example--a03b7c2618f270968b91f183.md) | 321 | `declaration-track:a03b7c2618f270968b91f1837fa5c94bfe98aa2200ed11d699af6a2816170f3c` |
| 35 | `def` | [isCongrEqnReservedNameSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/declarations/iscongreqnreservednamesuffix--4f8ccceb1d5bf6fac195017d.md) | 324 | `declaration-track:4f8ccceb1d5bf6fac195017ddc686bc3b75237217ec5c6d2b9415bee58ad6d69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
