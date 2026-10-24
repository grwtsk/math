# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "051cf419cac354374e24aa60bdcb9a591c912620",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `051cf419cac354374e24aa60bdcb9a591c912620`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.StdBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Module.Free.ChooseBasisIndex.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean/declarations/module-free-choosebasisindex-fintype--77bc1fb9cbd11ab645dfc2ee.md) | 32 | `declaration-track:77bc1fb9cbd11ab645dfc2eea0360487c12c051c8cc0c2c9464d482320fd2877` |
| 2 | `theorem` | [Module.Finite.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean/declarations/module-finite-of-basis--a52b5cf11a6592a3ef8bd3ed.md) | 43 | `result-track:a52b5cf11a6592a3ef8bd3ed87d5a2f3af00bfe5d13689f2e7581f18ef762e04` |
| 3 | `instance` | [Module.Finite.matrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean/declarations/module-finite-matrix--973c7d8654d29c776a8371a7.md) | 50 | `declaration-track:973c7d8654d29c776a8371a74dc170158220f584434e62d9d34de8422fd2f3b5` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5.lean/declarations/example--23dc05081d74f0fcc43aacc4.md) | 58 | `declaration-track:23dc05081d74f0fcc43aacc4ff3f5d762567cf0b6043376145f50214a7f6100d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
