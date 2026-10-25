# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVCheck.Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3265af7248e6c6435bb1efa48d0e8c9cfa799d2d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3265af7248e6c6435bb1efa48d0e8c9cfa799d2d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.BVDecide.TacticContext` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.BVDecide.Normalize` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSrcDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/declarations/getsrcdir--8b3cd76f1174e79f12b03e68.md) | 38 | `declaration-track:8b3cd76f1174e79f12b03e68414e09fdfd6d61ef3b41b6c46c1ebfd43032da8e` |
| 2 | `def` | [mkContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/declarations/mkcontext--eaf0646dfa783873118d4f07.md) | 45 | `declaration-track:eaf0646dfa783873118d4f07e6bcefe26b5df1c8ac893d4bb7d3d7d5bd815c4c` |
| 3 | `def` | [bvCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/declarations/bvcheck--d06677b118835e2351db081b.md) | 50 | `declaration-track:d06677b118835e2351db081b9512a480b73dc2cfe6b374a2649af83da0aad5d1` |
| 4 | `def` | [evalBvCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/declarations/evalbvcheck--1d252a93fc0c4fb000331c2e.md) | 56 | `declaration-track:1d252a93fc0c4fb000331c2e4f16ee551e03ed24142437d1581db107a1942a57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
