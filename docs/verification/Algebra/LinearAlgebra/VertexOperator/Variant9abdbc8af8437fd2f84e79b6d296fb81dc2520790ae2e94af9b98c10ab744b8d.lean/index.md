# Verification target: GRWTSK.Algebra.LinearAlgebra.VertexOperator.Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07878afcc87b4751fea5e254e26bec5b2a2b37bd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07878afcc87b4751fea5e254e26bec5b2a2b37bd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Vertex.HVertexOperator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [VertexOperator](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/vertexoperator--e84f801e3379ee4eaf985998.md) | 43 | `declaration-track:e84f801e3379ee4eaf985998c096da8ccd93a4e09ef217e76466de0d9b69c4b2` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/ext--e7b69587c4c783da8efc9d8e.md) | 51 | `result-track:e7b69587c4c783da8efc9d8e2f06ed68f98038d0de21f78414df17d81ae5817c` |
| 3 | `def` | [ncoeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/ncoeff--a568a2cf914af9d206bd673e.md) | 55 | `declaration-track:a568a2cf914af9d206bd673e5761af12339bee0c47d2a2fd6dede71abf792c0b` |
| 4 | `theorem` | [coeff_eq_ncoeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/coeff-eq-ncoeff--39fc1bb5443c705eabe597be.md) | 63 | `result-track:39fc1bb5443c705eabe597be4076014aba985fb6baa11d35847218445968c405` |
| 5 | `theorem` | [ncoeff_add](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/ncoeff-add--b9b5f2d1faa956b48a46d642.md) | 68 | `result-track:b9b5f2d1faa956b48a46d642de26af0d4dbcd5ad48b13c600fc9a423f1503b75` |
| 6 | `theorem` | [ncoeff_smul](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/ncoeff-smul--188498cb54f8fccfa204d66e.md) | 72 | `result-track:188498cb54f8fccfa204d66e136ec8468bfbbb030fd73ddf3dffca05fe3b30f0` |
| 7 | `theorem` | [ncoeff_eq_zero_of_lt_order](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/ncoeff-eq-zero-of-lt-order--067ca472070c30a88e72c3f5.md) | 75 | `result-track:067ca472070c30a88e72c3f545f8653f2c174070ef5f5b8d7bd4a0f07b8bfed4` |
| 8 | `theorem` | [coeff_eq_zero_of_lt_order](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/coeff-eq-zero-of-lt-order--4c9cc036291c175fbd3dd6c8.md) | 80 | `result-track:4c9cc036291c175fbd3dd6c8d4a96993ac1662a622e6238c25ba85001f24f294` |
| 9 | `def` | [of_coeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/of-coeff--7b4eeca99e92bc51f5770349.md) | 87 | `declaration-track:7b4eeca99e92bc51f577034943a142401f3189608dab91dbcc2b35bf0ca23878` |
| 10 | `theorem` | [of_coeff_apply_coeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/of-coeff-apply-coeff--8b4ec8c03568a0c7b58726bf.md) | 95 | `result-track:8b4ec8c03568a0c7b58726bf292b16df6023beb2616e714c8139fc7792326a88` |
| 11 | `theorem` | [ncoeff_of_coeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant9abdbc8af8437fd2f84e79b6d296fb81dc2520790ae2e94af9b98c10ab744b8d.lean/declarations/ncoeff-of-coeff--db934085104ca05350b7868f.md) | 101 | `result-track:db934085104ca05350b7868fa35e2236b8df5f1489f3a05d5d0c4219e92fec2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
