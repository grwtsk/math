# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5e19efd3ac41e337d851b9690c2255f925dae6a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5e19efd3ac41e337d851b9690c2255f925dae6a`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundedTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/boundedtriples--e437e52070e1a372a51862e3.md) | 16 | `declaration-track:e437e52070e1a372a51862e332344473dba19b08ac31dadcf77233a09a02e633` |
| 2 | `theorem` | [mem_boundedTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/mem-boundedtriples--9d6ecdf7c8e7651ed98bcef6.md) | 19 | `result-track:9d6ecdf7c8e7651ed98bcef6d80f3c5991c0b5bd7f9a1ae25e04302631338cbd` |
| 3 | `def` | [typedPrimitiveWeightedMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/typedprimitiveweightedmoment--b9881a98727f8a6996138bc9.md) | 27 | `declaration-track:b9881a98727f8a6996138bc96e1d4a63c28cd0f52f12a90edbf81167381322a5` |
| 4 | `def` | [typedPrimitiveMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/typedprimitivemoment--830047300caf3040a3a6de3e.md) | 32 | `declaration-track:830047300caf3040a3a6de3eac3e77a7040b742f011b1e14fa6d3cb2e42a7819` |
| 5 | `theorem` | [typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/typedprimitiveweightedmoment-eq-primitiveweightedmoment--7615f85eb4ffc43bb8d5ba0e.md) | 38 | `result-track:7615f85eb4ffc43bb8d5ba0eb563929161e608e87e69ef3739ece74f4e915874` |
| 6 | `theorem` | [typedPrimitiveMoment_eq_primitiveMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/typedprimitivemoment-eq-primitivemoment--db0f4e9a73b0f1fd00a95669.md) | 64 | `result-track:db0f4e9a73b0f1fd00a95669a41bb989cd1b6c7a138960d860e5e7fab4f06140` |
| 7 | `theorem` | [typedPrimitiveWeightedMoment_eq_moebius_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/typedprimitiveweightedmoment-eq-moebius-sum--da53f5d0f165d098201a8692.md) | 72 | `result-track:da53f5d0f165d098201a86921e226ecea4f6ef787e320639579c07de36ba4c10` |
| 8 | `theorem` | [typedPrimitiveMoment_eq_moebius_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/declarations/typedprimitivemoment-eq-moebius-sum--69c27e03e274563ce7a623f8.md) | 82 | `result-track:69c27e03e274563ce7a623f840c87569595c78b75a6bdb71041b9ba240f6b5c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
