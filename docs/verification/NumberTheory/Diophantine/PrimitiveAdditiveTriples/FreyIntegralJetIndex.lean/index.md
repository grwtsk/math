# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d44669e5396fd5a80fc295e2997908467b903ef0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d44669e5396fd5a80fc295e2997908467b903ef0`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageIndex`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetImage`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetImage.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Target](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/target--08dc535d7c72deaf671c8028.md) | 23 | `declaration-track:08dc535d7c72deaf671c80287e19a34322b9587898de82d13562f4a81dbcb17d` |
| 2 | `theorem` | [imageLattice_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/imagelattice-eq--28e06b4b379909a929a4169d.md) | 26 | `result-track:28e06b4b379909a929a4169d0acfe38cd28a502054a90193e8f7a27eed33ec96` |
| 3 | `theorem` | [image_quotient_cardinality](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/image-quotient-cardinality--f6490ef9493977ed9688f189.md) | 42 | `result-track:f6490ef9493977ed9688f189a27c72036c43e51cf4575a6e55507cba4f3023b0` |
| 4 | `theorem` | [image_quotient_cardinality_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/image-quotient-cardinality-formula--121c243528a9627108f45a6a.md) | 56 | `result-track:121c243528a9627108f45a6a2dd5088c0e95ca536f3244cfebe20b22be22cebb` |
| 5 | `theorem` | [image_index_prime_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/image-index-prime-depth--a9c2ed5176cd89b478b3c694.md) | 66 | `result-track:a9c2ed5176cd89b478b3c694261135482ae7f0c2f1b8a783f41f477cf7baba44` |
| 6 | `theorem` | [fixed_source_index](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/fixed-source-index--c72a2be946d7475f67714277.md) | 77 | `result-track:c72a2be946d7475f67714277b2795b83473786ed17f059f7c764282020013f20` |
| 7 | `theorem` | [fixed_source_order_four_index_vs_clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/fixed-source-order-four-index-vs-clearing--bf264ba2a0e36b22e9567a75.md) | 93 | `result-track:bf264ba2a0e36b22e9567a75ef47df1858eea517486c79344bb8408c182af7d7` |
| 8 | `theorem` | [fixed_source_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/declarations/fixed-source-height--6a4223f3e462e3e48b94712d.md) | 110 | `result-track:6a4223f3e462e3e48b94712ddebe2fadd2b351c382ee5f232ef28bf41562e615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
