# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b68aa6375a36088d8e12ebb2025a00b5ae9448e8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b68aa6375a36088d8e12ebb2025a00b5ae9448e8`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/centralizer--bfa00e6cabb37de1869b20b5.md) | 34 | `declaration-track:bfa00e6cabb37de1869b20b5e63133c7fca90e8d79c8fc5c17a525b4659ea0c3` |
| 2 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/coe-centralizer--f075db73041b1da8bfcf31f7.md) | 39 | `result-track:f075db73041b1da8bfcf31f783f945b3025ef37c31ec86b11adac812be7f5925` |
| 3 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/mem-centralizer-iff--a8201b9490da828bc64d55ef.md) | 45 | `result-track:a8201b9490da828bc64d55efb8d892017e8a74d82a1f9eb4c538ac4b4e51bf45` |
| 4 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/decidablememcentralizer--e40e1cdf07769295f5b359f0.md) | 49 | `declaration-track:e40e1cdf07769295f5b359f0454cde72d796c36d344d23da317ab4afd6d9dec3` |
| 5 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/center-le-centralizer--7f6c40cd29cc1ba73f68690b.md) | 54 | `result-track:7f6c40cd29cc1ba73f68690bab1c8ec6d55975b808c055460c444c1a4cfa4c43` |
| 6 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/centralizer-le--0cf8430160eb028a4afd8a7c.md) | 58 | `result-track:0cf8430160eb028a4afd8a7cd5211bef08f5a488086743ae42d4ee9b52726689` |
| 7 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/centralizer-eq-top-iff-subset--e2dac6a41d79a5e460e69c8c.md) | 62 | `result-track:e2dac6a41d79a5e460e69c8c80004c89c5482a819447dfe4bd58d144993ed4d1` |
| 8 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/centralizer-univ--db6dd981a616f333a18ba273.md) | 67 | `result-track:db6dd981a616f333a18ba2738f4c11364490f602f525464c396835e56ae1d1f0` |
| 9 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/closure-le-centralizer-centralizer--dd38b7248ce8d2eb1690b984.md) | 72 | `result-track:dd38b7248ce8d2eb1690b984a9d8af609b8db7059b785d74ce0314fcff2d4550` |
| 10 | `abbrev` | [closureCommSemigroupOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantda5a9d1efb44ea2bdb51214f26bd44ee37c7c837bb3cca509c6228d8ca3ad7d3.lean/declarations/closurecommsemigroupofcomm--dd6085d01643721371bb5b2b.md) | 80 | `declaration-track:dd6085d01643721371bb5b2b3482aa9a2eaa806811f829e20d3ea68b73ead6c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
