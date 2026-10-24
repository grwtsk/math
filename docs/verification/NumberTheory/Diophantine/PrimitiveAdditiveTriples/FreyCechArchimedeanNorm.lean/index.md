# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechArchimedeanNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99ec8a17a9b685ad45c4fa175263b5da0e2983ce",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99ec8a17a9b685ad45c4fa175263b5da0e2983ce`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm`](../../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPadicNorm`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [slotsNonempty](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/slotsnonempty--59474531d70dabb099a0c9e2.md) | 25 | `declaration-track:59474531d70dabb099a0c9e2f5d409ea8c32a5ff768510153b3e78f1dad011ec` |
| 2 | `def` | [targetMax](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/targetmax--21569188ab7ac34f817ae333.md) | 29 | `declaration-track:21569188ab7ac34f817ae33345771c3db5a2f8f6d406e6930515d9aff94d3bd6` |
| 3 | `def` | [sourceScale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/sourcescale--09ed975f0c27f537c07e8586.md) | 31 | `declaration-track:09ed975f0c27f537c07e858682be81d5db6eef21fa29a0cdba02c10faff64417` |
| 4 | `def` | [forwardFactor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/forwardfactor--f1a04d563a1975a1b351782d.md) | 33 | `declaration-track:f1a04d563a1975a1b351782d651167a5bc8e49b3c0cc45c5046fd210dc3d2a05` |
| 5 | `theorem` | [sourceScale_natAbs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/sourcescale-natabs--3779e9198fdbba76d70176eb.md) | 35 | `result-track:3779e9198fdbba76d70176eb02c1e08c63ac69c2b6637cb89f9f45ebc994a58a` |
| 6 | `theorem` | [forward_block](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/forward-block--72409b64dff82a0cf0006906.md) | 42 | `result-track:72409b64dff82a0cf0006906555aedc886aa1fdccff68e7fa5467641bedbf217` |
| 7 | `theorem` | [inverse_block](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/inverse-block--42ac2c911b8fd4d37dd4be67.md) | 51 | `result-track:42ac2c911b8fd4d37dd4be67ef98797ba28e772e9e462558159f61c834870be6` |
| 8 | `theorem` | [weight_abs_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/weight-abs-le--fcac025741223cff68e0a0a4.md) | 62 | `result-track:fcac025741223cff68e0a0a47306c837cb6fbe6115becf79769ed26539ab681f` |
| 9 | `theorem` | [forward_estimate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/forward-estimate--2700875648f1cfc4b5d7c09a.md) | 70 | `result-track:2700875648f1cfc4b5d7c09a3f9797fa4109ef9e3e1c1542e8a549fa5b027d0c` |
| 10 | `theorem` | [inverse_estimate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/inverse-estimate--9c004117f15208d80dd4e308.md) | 82 | `result-track:9c004117f15208d80dd4e308c7e7620fbcdc555a11a8a8d57fabc5fb7fe1d0e4` |
| 11 | `theorem` | [forward_ones](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/forward-ones--dda20993f40ebeaec0edaaab.md) | 93 | `result-track:dda20993f40ebeaec0edaaab389203abcb0a2538285859f7fed4d9c4f2e7a2f4` |
| 12 | `def` | [unitEdge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/unitedge--5a193c3bdf3b32ca332882ee.md) | 105 | `declaration-track:5a193c3bdf3b32ca332882eec220d6fa56f5eb9485cdf7538ea7959615e82303` |
| 13 | `theorem` | [unitEdge_norm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/unitedge-norm--c6cd141d5c7cd99f1eeeaf15.md) | 107 | `result-track:c6cd141d5c7cd99f1eeeaf152efa104532a6791ed1d29c6eab9b5cf6788f2a1c` |
| 14 | `theorem` | [inverse_unitEdge_norm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/inverse-unitedge-norm--5164cdcf88035088f2e638a8.md) | 116 | `result-track:5164cdcf88035088f2e638a82b4ad1fc60c4ec1aded34c86e8e956074c9175f0` |
| 15 | `theorem` | [forward_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/forward-bound-iff--5e11095f1163b51d04fffe38.md) | 126 | `result-track:5e11095f1163b51d04fffe388747e4a91d723ac8c06364867b01770b55499a22` |
| 16 | `theorem` | [inverse_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/inverse-bound-iff--da698f0e5b06f770bfcfa461.md) | 136 | `result-track:da698f0e5b06f770bfcfa461aa79ecc3c61be78b2c1140ade7e848815f598676` |
| 17 | `theorem` | [source_target_comparison](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/source-target-comparison--56381b8bcd744b6ce7b481ca.md) | 147 | `result-track:56381b8bcd744b6ce7b481ca23e46b8a54921c600133d6f678aa1354b04a5548` |
| 18 | `theorem` | [log_forwardFactor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/log-forwardfactor--b892d0bd448763ea0f75b768.md) | 155 | `result-track:b892d0bd448763ea0f75b768a8370d096c3268b323ccea1baedc4041a4c39164` |
| 19 | `theorem` | [log_forwardFactor_nonneg](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/log-forwardfactor-nonneg--5626c9be448fe0045768e3c6.md) | 164 | `result-track:5626c9be448fe0045768e3c60f0b12e5ae11e70a372ee818c0e1cdfe1ba4d312` |
| 20 | `theorem` | [all_place_inverse_cost](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/all-place-inverse-cost--68deb7b359dd65d5a478b040.md) | 172 | `result-track:68deb7b359dd65d5a478b040b9589b5af9ea0aff7f284039adedfb08a10cb3b4` |
| 21 | `theorem` | [native_grade_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/declarations/native-grade-two--17b65f88a891240de2a2f570.md) | 178 | `result-track:17b65f88a891240de2a2f570e23054ff531b0f3600608f0172dc8c3b604c6028` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
