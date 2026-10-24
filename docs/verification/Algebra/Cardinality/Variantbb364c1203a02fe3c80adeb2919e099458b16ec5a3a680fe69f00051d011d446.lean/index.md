# Verification target: GRWTSK.Algebra.Cardinality.Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82d821dbaedcb5727fb61ca7a2ed9a0a5e0b87ad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82d821dbaedcb5727fb61ca7a2ed9a0a5e0b87ad`.

Source path: `GRWTSK/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_max_lift](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-eq-max-lift--3b01b0e917e8c8dc1bf4fc3c.md) | 32 | `result-track:3b01b0e917e8c8dc1bf4fc3cd9f7fadc208570811840e9306beaf975b9c4672c` |
| 2 | `theorem` | [cardinalMk_eq_lift](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-eq-lift--f1911f7fbb7fe883ca6cda6c.md) | 39 | `result-track:f1911f7fbb7fe883ca6cda6c20fbe0199d35e554c9e93165217a4ba26eeabc3e` |
| 3 | `theorem` | [cardinalMk_eq_one](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-eq-one--9a48ef7738e71473055c404c.md) | 44 | `result-track:9a48ef7738e71473055c404cb9e3c40c2ebe913ad64a77b550e713ce5e8c1e3b` |
| 4 | `theorem` | [cardinalMk_le_max_lift](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-le-max-lift--579ec4a31a819884d2e77455.md) | 47 | `result-track:579ec4a31a819884d2e77455903340fee3edfbec693551fc7e99ed5ef38621a0` |
| 5 | `theorem` | [cardinalMk_eq_max](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-eq-max--ff2674c8f82d5c665c6097c5.md) | 57 | `result-track:ff2674c8f82d5c665c6097c55116347ad9efa55d1bd2286a6362dfe85c3c91f7` |
| 6 | `theorem` | [cardinalMk_eq](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-eq--e04a1bd76932b5d2bca4fd02.md) | 60 | `result-track:e04a1bd76932b5d2bca4fd02392968b8933e97686bea435c124b5e1718acde77` |
| 7 | `theorem` | [cardinalMk_le_max](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-le-max--957a14f70accf80ee473f3cc.md) | 63 | `result-track:957a14f70accf80ee473f3ccb71d9e9e7ae21507fcaa0e35a334c3dc330901e2` |
| 8 | `theorem` | [lift_cardinalMk_adjoin_le](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/lift-cardinalmk-adjoin-le--c66939cb44fcd4062ff080e0.md) | 70 | `result-track:c66939cb44fcd4062ff080e08c8c21407e4eca8367295023da948400d1c3cce8` |
| 9 | `theorem` | [cardinalMk_adjoin_le](../../../../mathematics/Algebra/Cardinality/Variantbb364c1203a02fe3c80adeb2919e099458b16ec5a3a680fe69f00051d011d446.lean/declarations/cardinalmk-adjoin-le--a9cf3587b836f0c97494e7be.md) | 77 | `result-track:a9cf3587b836f0c97494e7beb0c94388fd9d979b029a39d899ff3afeec5668a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
