# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightSymmetricCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "306e543adc2f0854b4bf1bcb8eed83664d829b0d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `306e543adc2f0854b4bf1bcb8eed83664d829b0d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCoarseCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/negativeheighthead--88b5a6ac305e83aab52e8c3c.md) | 47 | `declaration-track:88b5a6ac305e83aab52e8c3c8d6a695f84bd5db46560828fe16b6b6baf1bc36e` |
| 2 | `def` | [negativeHeightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/negativeheightcount--bb62e1b23a95c719466d1eda.md) | 52 | `declaration-track:bb62e1b23a95c719466d1eda2d3880cdc869e88dde5dd452410cf91e2096192b` |
| 3 | `theorem` | [mem_negativeHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/mem-negativeheighthead--bc7688e03cf7dadf351d73f6.md) | 55 | `result-track:bc7688e03cf7dadf351d73f6b7005716ec5faedd5a98c5ebb9f8ded82568ae9b` |
| 4 | `theorem` | [multiplicity_conjugated](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/multiplicity-conjugated--6122af24b187a4c6c6823116.md) | 70 | `result-track:6122af24b187a4c6c68231168c9b1715444b0bfb7f1616aba902895057a4d37d` |
| 5 | `theorem` | [conjugated_mem_negativeHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/conjugated-mem-negativeheighthead--a8f80b1aeb060f140ea47b1c.md) | 77 | `result-track:a8f80b1aeb060f140ea47b1c17ae4139ccb36dfcd405a5f73d687e745de6df43` |
| 6 | `theorem` | [conjugated_mem_positiveHeightHead_of_negative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/conjugated-mem-positiveheighthead-of-negative--f3b66efa96a5353eaefbbd2d.md) | 87 | `result-track:f3b66efa96a5353eaefbbd2d6e1fd106103729bb6c8b3696d908d9bc427bcd63` |
| 7 | `theorem` | [image_positiveHeightHead_eq_negativeHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/image-positiveheighthead-eq-negativeheighthead--2e25820135dbf6731d21ae40.md) | 97 | `result-track:2e25820135dbf6731d21ae40a5303845d6bd0bebe2731016f6e44e4c905e8452` |
| 8 | `theorem` | [negativeHeightCount_eq_positiveHeightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/negativeheightcount-eq-positiveheightcount--a946209d3d3544fc7b0bbfe4.md) | 110 | `result-track:a946209d3d3544fc7b0bbfe4c8824c1a49ef1d48e60bdaebc41c4446bee64da5` |
| 9 | `theorem` | [positive_negative_disjoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/positive-negative-disjoint--f9ee99fd4920049c2a1f2c9a.md) | 120 | `result-track:f9ee99fd4920049c2a1f2c9a5364ee8002c818a9765c2e8b72c59711af30c9cf` |
| 10 | `theorem` | [positive_union_negative_eq_heightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/positive-union-negative-eq-heighthead--cb2d989094e2b5ce829ff5b9.md) | 129 | `result-track:cb2d989094e2b5ce829ff5b9edff9e5c1a47410a1b1ffb7a325e5708cb5454d6` |
| 11 | `theorem` | [heightCount_eq_two_mul_positiveHeightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/heightcount-eq-two-mul-positiveheightcount--3d1adb6931934823516da704.md) | 160 | `result-track:3d1adb6931934823516da7044905a62001787922a6e06dd863734c40c0922119` |
| 12 | `theorem` | [heightCount_even](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/heightcount-even--efe096345a520a009a2c0364.md) | 173 | `result-track:efe096345a520a009a2c03646afbfa9b1817eda8ea9584a398fd081a12bf072e` |
| 13 | `def` | [symmetricCoarsePositiveUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/symmetriccoarsepositiveupper--6aa77913433589a94da812ae.md) | 178 | `declaration-track:6aa77913433589a94da812aeb2f5cbb7c89281c74454cf5d9d31cb3193826f91` |
| 14 | `theorem` | [halfCoarseTerm_le_symmetricUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/halfcoarseterm-le-symmetricupper--e2fbae9fc9ae11c3801d5726.md) | 183 | `result-track:e2fbae9fc9ae11c3801d5726420252d383c4458be6886e169dfda5f7cb50d908` |
| 15 | `theorem` | [positiveHeightCount_le_symmetricCoarseUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/positiveheightcount-le-symmetriccoarseupper--0fcf80bc4363f77db05fecfa.md) | 192 | `result-track:0fcf80bc4363f77db05fecfa1686360cfbbdb5da906f740b3bdaf71e0d8aa210` |
| 16 | `theorem` | [rhThrough_of_symmetric_coarse_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/rhthrough-of-symmetric-coarse-credit--bd57cb1ae2179e06006027bd.md) | 210 | `result-track:bd57cb1ae2179e06006027bd93d502c0dfe57f6ff599727284be694592df6311` |
| 17 | `theorem` | [rhThrough_of_symmetric_coarse_weighted_inventory](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/rhthrough-of-symmetric-coarse-weighted-inventory--eecc263921a0fa591ad3dc76.md) | 221 | `result-track:eecc263921a0fa591ad3dc76dc37f0043d789decdcafde2e2cd7d4b156bf8ab1` |
| 18 | `theorem` | [rhThrough_of_symmetric_coarse_local_contours](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/rhthrough-of-symmetric-coarse-local-contours--b3139e177b2dd8391e6cd8f9.md) | 233 | `result-track:b3139e177b2dd8391e6cd8f93b353bf05456a699e39dff0d1e3cae110010077c` |
| 19 | `theorem` | [riemannHypothesis_of_symmetric_coarse_credits](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/riemannhypothesis-of-symmetric-coarse-credits--6b7213aa621c9e370be2a82e.md) | 259 | `result-track:6b7213aa621c9e370be2a82ecf02d82ea329b119cb100f79b2edbd966755aa56` |
| 20 | `theorem` | [symmetric_nonstrict_margin_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/declarations/symmetric-nonstrict-margin-fixture--69a2ade26495612300f47f57.md) | 277 | `result-track:69a2ade26495612300f47f572ff7c7e528a842bc06ab684da1b7473a04ec34f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
