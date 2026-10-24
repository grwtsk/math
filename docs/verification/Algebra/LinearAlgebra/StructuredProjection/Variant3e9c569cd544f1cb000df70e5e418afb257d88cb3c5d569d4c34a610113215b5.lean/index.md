# Verification target: GRWTSK.Algebra.LinearAlgebra.StructuredProjection.Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cc110482121213198d3e1ce672ef65887bbe277",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cc110482121213198d3e1ce672ef65887bbe277`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TypeIILocalStructure](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure--4d0cd6c940e52a2918fb6e6b.md) | 37 | `declaration-track:4d0cd6c940e52a2918fb6e6b236c87438980002dca67f02f39710078a74736f7` |
| 2 | `def` | [TypeIILocalStructure.leftStructured](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure-leftstructured--e8af357c6757f15cd398ebac.md) | 80 | `declaration-track:e8af357c6757f15cd398ebacbbe97b7974588d6bbc5e01ca32c4a31043b77719` |
| 3 | `def` | [TypeIILocalStructure.leftDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure-leftdiffuse--a84713f200c838bf23854101.md) | 88 | `declaration-track:a84713f200c838bf23854101e4d8e94c2869dd0394436d751eeed017929c3570` |
| 4 | `def` | [TypeIILocalStructure.rightStructured](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure-rightstructured--8cc4b0ff2e5d44ea61c06324.md) | 96 | `declaration-track:8cc4b0ff2e5d44ea61c063241845bbc47e856d4c03dc02311adbf758a00bd643` |
| 5 | `def` | [TypeIILocalStructure.rightDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure-rightdiffuse--7f234114a953d04a659ab67c.md) | 104 | `declaration-track:7f234114a953d04a659ab67c54620055e3f5b4ec5677aae2dc539717d4b16ab0` |
| 6 | `theorem` | [TypeIILocalStructure.leftStructured_add_leftDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure-leftstructured-add-leftdiffuse--5494785d93e4609ea87bd97b.md) | 111 | `result-track:5494785d93e4609ea87bd97b66332a0b8254d21a1eeb889ba9003d0ce37bee11` |
| 7 | `theorem` | [TypeIILocalStructure.rightStructured_add_rightDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure-rightstructured-add-rightdiffuse--403da5c4587b19ad34089d35.md) | 119 | `result-track:403da5c4587b19ad34089d35968528c89dcdb3eb829402cb670702768fc0e13b` |
| 8 | `theorem` | [TypeIILocalStructure.bilinearPairing_four_terms](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/declarations/typeiilocalstructure-bilinearpairing-four-terms--95a067165178871363a9b106.md) | 132 | `result-track:95a067165178871363a9b106aec68a2694afaf625e42f47cdf9b8988323f0a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
