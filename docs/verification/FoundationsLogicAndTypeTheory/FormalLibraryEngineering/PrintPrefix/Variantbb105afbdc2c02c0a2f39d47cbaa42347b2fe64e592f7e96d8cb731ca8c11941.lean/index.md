# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintPrefix.Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8619f511191ad816179c9943a6f8219f41e68bb2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8619f511191ad816179c9943a6f8219f41e68bb2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.PrintPrefix` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardMsgs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean/declarations/foo--da14d8ebc0abe61e386dfdcf.md) | 40 | `declaration-track:da14d8ebc0abe61e386dfdcf00be805781621a31df639a2a6afb73a751a75dd2` |
| 2 | `structure` | [TestStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean/declarations/teststruct--bd463d61b98487cf994a5fe7.md) | 51 | `declaration-track:bd463d61b98487cf994a5fe7b6d890af4521207a0fc9f6384d6567dfa3b23932` |
| 3 | `def` | [testMatchProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean/declarations/testmatchproof--12031e5f69456596d716830a.md) | 123 | `declaration-track:12031e5f69456596d716830ac290143bb20a2ca44c6bfc8f9569b26de9ad9aaa` |
| 4 | `inductive` | [TestInd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantbb105afbdc2c02c0a2f39d47cbaa42347b2fe64e592f7e96d8cb731ca8c11941.lean/declarations/testind--42043546845bb1ba5e12773e.md) | 157 | `declaration-track:42043546845bb1ba5e12773e156f92db6f2aa89bba61a7722b5a65fae42fb0da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
