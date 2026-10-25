# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b63b5ddb1b930dda8098f751c01a26cfb2e5e641",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b63b5ddb1b930dda8098f751c01a26cfb2e5e641`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RArray.ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean/declarations/rarray-offn--eb3ca9c06be8fa9f180e02cb.md) | 24 | `declaration-track:eb3ca9c06be8fa9f180e02cb19a869193539dca5280f552c9b12dca475ad8f92` |
| 2 | `def` | [RArray.ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean/declarations/rarray-ofarray--7ef777c13b6333fad26d9c52.md) | 34 | `declaration-track:7ef777c13b6333fad26d9c526f8b696bc00ad2d78931b27f428372ca63cdae43` |
| 3 | `theorem` | [RArray.get_ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean/declarations/rarray-get-offn--98913735049c032591245b2b.md) | 38 | `result-track:98913735049c032591245b2b3a5b3a6ed3e0221824ff803c56425a948ba0ef4f` |
| 4 | `theorem` | [RArray.size_ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean/declarations/rarray-size-offn--3e139388b9365be3493c6e1d.md) | 55 | `result-track:3e139388b9365be3493c6e1d5eceb3e5c5101151761ea60f0d1227098b66dbef` |
| 5 | `def` | [RArray.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe.lean/declarations/rarray-toexpr--b7140cf74488d0b98576be6a.md) | 65 | `declaration-track:b7140cf74488d0b98576be6afd0e1df4579d02f5def50e2fa6dd52f9a52234ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
