# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Induction.Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Injective` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.PreDefinition.PartialFixpoint.Eqns` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Internal.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.PProdN` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkAdmAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/mkadmand--54db754f588f7ffb6a7733be.md) | 21 | `declaration-track:54db754f588f7ffb6a7733bed23e0de10379eaf146039952fe63565a421208ca` |
| 2 | `def` | [mkAdmProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/mkadmproj--63c83ecfc35204d51c41f62b.md) | 24 | `declaration-track:63c83ecfc35204d51c41f62bb472ee2a15e3f6852c3af92c3f1df32074b06e8b` |
| 3 | `def` | [CCPOProdProjs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/ccpoprodprojs--2c766f4f646d2713e5fd3325.md) | 36 | `declaration-track:2c766f4f646d2713e5fd3325b190c277c48368e212879ba117be2116b51bd5b6` |
| 4 | `def` | [unfoldPredRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/unfoldpredrel--7b35b98090a79d726f00714c.md) | 54 | `declaration-track:7b35b98090a79d726f00714c370d57ab02086c0f102001d71b56773ed44dcc37` |
| 5 | `def` | [unfoldPredRelMutual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/unfoldpredrelmutual--73e94ec319031dbd63501618.md) | 80 | `declaration-track:73e94ec319031dbd63501618aeac5ed761ad86cf9e440bd8edc210b3a9bd110e` |
| 6 | `def` | [maskArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/maskarray--f03ddff92532d94ae323a897.md) | 94 | `declaration-track:f03ddff92532d94ae323a897f91295850117146323a6d028742653e25290069a` |
| 7 | `def` | [numberNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/numbernames--3c5bc9ba4450fb63014c40df.md) | 101 | `declaration-track:3c5bc9ba4450fb63014c40df938a3aef7554d1e6d74c0527ef458385d1e54ad4` |
| 8 | `def` | [getInductionPrinciplePostfix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/getinductionprinciplepostfix--8e72d669d99b3a30e9fff4f5.md) | 105 | `declaration-track:8e72d669d99b3a30e9fff4f57d6d8faeef144cd68413d917f5816e4b0c80b767` |
| 9 | `def` | [deriveInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/deriveinduction--8a0506979df9815c56fe53e3.md) | 116 | `declaration-track:8a0506979df9815c56fe53e3914e92e541648282aafe541131ab6cb0c22f9684` |
| 10 | `def` | [isInductName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/isinductname--79fc2269807ed0ac01469504.md) | 278 | `declaration-track:79fc2269807ed0ac014695042dc163cb0ea90bac256d10dcec40a992db1ef134` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/builtin-initialize--ef230ffadc6fbf4638b0a54b.md) | 305 | `declaration-track:ef230ffadc6fbf4638b0a54b93b4a20de9850fac5c2167a4fa3233fef3e3d091` |
| 12 | `def` | [isOptionFixpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/isoptionfixpoint--bf3f784c6cd93359ec4d3571.md) | 320 | `declaration-track:bf3f784c6cd93359ec4d3571e25e936df1fad3501fce57239fa6cf32da75fd64` |
| 13 | `def` | [isPartialCorrectnessName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/ispartialcorrectnessname--fe0baba505cb309b17b3ec27.md) | 336 | `declaration-track:fe0baba505cb309b17b3ec27cdfef7c5efe32c794481bafe7dcdd0e8ea8ca0a5` |
| 14 | `def` | [mkOptionAdm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/mkoptionadm--67e75689fccb211e2f2089d9.md) | 350 | `declaration-track:67e75689fccb211e2f2089d94a59e65c050ea97b3fe7d2b0ca64c8da63b4cad8` |
| 15 | `def` | [derivePartialCorrectness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/derivepartialcorrectness--14b1ebaf505756f90778ae94.md) | 364 | `declaration-track:14b1ebaf505756f90778ae94425b47f426791d3c99218c024d6eb963032260df` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/builtin-initialize--3d2537759c6ce8c448b2fcd6.md) | 425 | `declaration-track:3d2537759c6ce8c448b2fcd6bc7c7f8b9e25dd6996006348820048acd257226e` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/declarations/builtin-initialize--f60ddd44384382660a98aeb2.md) | 437 | `declaration-track:f60ddd44384382660a98aeb25ac1d20f37605edb49eb3aba6e52810ce7073933` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
