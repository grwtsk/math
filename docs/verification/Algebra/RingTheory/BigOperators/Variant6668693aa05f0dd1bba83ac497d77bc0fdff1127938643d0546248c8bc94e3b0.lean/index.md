# Verification target: GRWTSK.Algebra.RingTheory.BigOperators.Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e18eadfb78d987d0f57e970b56adc35975cbb56",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e18eadfb78d987d0f57e970b56adc35975cbb56`.

Source path: `GRWTSK/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Congruence.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [listSum_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/declarations/listsum-mem--ed72cf4fda5039e6810f112b.md) | 29 | `result-track:ed72cf4fda5039e6810f112b19cacf531b956cd25ab39fe221fb98cb6e2e8c72` |
| 2 | `lemma` | [multisetSum_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/declarations/multisetsum-mem--b6b90b81356783f1dbf0dec7.md) | 34 | `result-track:b6b90b81356783f1dbf0dec7d9b66158565c9bc413df5f891cc233b9a0953d24` |
| 3 | `lemma` | [finsetSum_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/declarations/finsetsum-mem--b9255bfd3ea59abd3fbb03eb.md) | 39 | `result-track:b9255bfd3ea59abd3fbb03eb7420f2037df6427daab99b52df635a8585fe5a06` |
| 4 | `lemma` | [listProd_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/declarations/listprod-mem--524c06db5fc33f7446f237fc.md) | 52 | `result-track:524c06db5fc33f7446f237fcb3300257e322f1ba87dac0226c411121474802c1` |
| 5 | `lemma` | [multiSetProd_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/declarations/multisetprod-mem--24b9c7df0df023970e622d78.md) | 68 | `result-track:24b9c7df0df023970e622d78a2df1d7fbc1bd3d840362f6a4a6e2b7937834a86` |
| 6 | `lemma` | [finsetProd_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant6668693aa05f0dd1bba83ac497d77bc0fdff1127938643d0546248c8bc94e3b0.lean/declarations/finsetprod-mem--7367d8923a644360881cfe83.md) | 73 | `result-track:7367d8923a644360881cfe8313c2fe935ae9e0268e47aefb4c04d5046d058891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
