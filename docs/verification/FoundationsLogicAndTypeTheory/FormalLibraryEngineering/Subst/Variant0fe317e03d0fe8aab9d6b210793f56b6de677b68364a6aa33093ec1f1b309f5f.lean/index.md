# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Subst.Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb1bd574770be48d16b06b0e3048e9c0d3a6f48",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb1bd574770be48d16b06b0e3048e9c0d3a6f48`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [substCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/substcore--90ecdacaf14a18ca01fb2a33.md) | 17 | `declaration-track:90ecdacaf14a18ca01fb2a3341563c75a0423e866cf0238ac9e2dcafe5b89f02` |
| 2 | `def` | [heqToEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/heqtoeq--57272b49a36aa6ec0297aaed.md) | 122 | `declaration-track:57272b49a36aa6ec0297aaede92f90fa8842be03043d0edd3e69eed979e67912` |
| 3 | `def` | [substVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/substvar--c58a78427dc97ace950b46c9.md) | 144 | `declaration-track:c58a78427dc97ace950b46c9890ed829dff68bdd434f721d96d90280e0c6a208` |
| 4 | `def` | [substEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/substeq--177497347bdc69ef99b8390e.md) | 173 | `declaration-track:177497347bdc69ef99b8390e15af1acc68ff02b66a341f252094307f55cd9072` |
| 5 | `def` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/subst--fe27989d4a8045d8da7bb23f.md) | 201 | `declaration-track:fe27989d4a8045d8da7bb23fbe984b4340e3f3d60589be9f77b7464ec788582d` |
| 6 | `def` | [introSubstEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/introsubsteq--52d294ce77448ce98a623f67.md) | 226 | `declaration-track:52d294ce77448ce98a623f67e1ce43152c16f152406d1e71e9ea5a58a542775b` |
| 7 | `def` | [substVar?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/substvar--3f93969b60ee877895b6224b.md) | 267 | `declaration-track:3f93969b60ee877895b6224b07dc0a448009a3a118bac942f951af82b1d32796` |
| 8 | `def` | [subst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/subst--6468398aaf1c4b7e0f9c0c7e.md) | 270 | `declaration-track:6468398aaf1c4b7e0f9c0c7e2f58f5ad0920b76ae72fc3c302f6e7c0a2a847da` |
| 9 | `def` | [substCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/substcore--aad215dd26d9d9e47fabbbae.md) | 273 | `declaration-track:aad215dd26d9d9e47fabbbae5f0aecbabe26f839d0d08707e898b92666c8d87c` |
| 10 | `def` | [trySubstVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/trysubstvar--c795a5dddd8cdf43b3bf3a7e.md) | 276 | `declaration-track:c795a5dddd8cdf43b3bf3a7e7ba83e0e7f103138bafbaede873c344128342079` |
| 11 | `def` | [trySubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/trysubst--2ff6d4eaafeeb008154a8499.md) | 279 | `declaration-track:2ff6d4eaafeeb008154a8499b27a900716a02297dd6608a834519b1d2bdd01b1` |
| 12 | `def` | [substSomeVar?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/substsomevar--ab074e404460f18f3ceed377.md) | 282 | `declaration-track:ab074e404460f18f3ceed377254418ed3ab26b8ecf2129d2890223a26698cec6` |
| 13 | `def` | [substVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/substvars--c60f0573e0b49f49b9583280.md) | 288 | `declaration-track:c60f0573e0b49f49b95832800c6ab90735f256d06d6ef820955dea70dfd614b6` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/declarations/builtin-initialize--e41ea6fed98181a79fd341ea.md) | 294 | `declaration-track:e41ea6fed98181a79fd341eaa31319bcce99a51deda5e7ce8e60956ee2e0e421` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
