# Verification target: GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c8a93db12ec865d297703ba36ef37743e1ef4f1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c8a93db12ec865d297703ba36ef37743e1ef4f1`.

Source path: `GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/IntegerSampleGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EnergyAbscissa`](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm`](../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrence4ddf3c1526e7b64c3ef823c8.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NatSubexponentialUpper](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/natsubexponentialupper--4b59481f9a5880dddd709b86.md) | 19 | `declaration-track:4b59481f9a5880dddd709b861670432cfb6d2f191c1cfb48c2cdb5b9b9cbb7a0` |
| 2 | `def` | [PickupCrossNatSubexp](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupcrossnatsubexp--0dc904d8bf4c19a74010d14a.md) | 23 | `declaration-track:0dc904d8bf4c19a74010d14a1cb59855d87b1e168d56f1e1c562ea08f4f68fd2` |
| 3 | `def` | [PickupCrossNatPoly](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupcrossnatpoly--18fb43672627e0eee6d0ce11.md) | 25 | `declaration-track:18fb43672627e0eee6d0ce1123e8aec01dee7e754fea9b9dc00613a70943964b` |
| 4 | `theorem` | [pickupEnergy_le_of_nat_exponential](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupenergy-le-of-nat-exponential--df58fc0f4293cf07dad4771a.md) | 30 | `result-track:df58fc0f4293cf07dad4771aeda474359dd2fc4a98967ffb9ff91ed73c32be99` |
| 5 | `theorem` | [pickupEnergySubexp_iff_nat](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupenergysubexp-iff-nat--08fdee29931cea921b18d2c9.md) | 43 | `result-track:08fdee29931cea921b18d2c9b59bc04289109c32144931658761499bfe8dbf2d` |
| 6 | `theorem` | [pickupCross_le_next_sample](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupcross-le-next-sample--27c7218127cb518f6449314d.md) | 55 | `result-track:27c7218127cb518f6449314d195abea27e2b0ec27481bf1142b45d1052333ede` |
| 7 | `theorem` | [pickupCross_poly_of_nat_bound](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupcross-poly-of-nat-bound--9a454b49c33f5563fa632da0.md) | 67 | `result-track:9a454b49c33f5563fa632da03c4b97ab8af7b49a1ec6e643bc2555c452fbb7de` |
| 8 | `theorem` | [pickupCrossNatPoly_iff_crossPoly](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupcrossnatpoly-iff-crosspoly--92d05c71c01d1017e0349bc1.md) | 94 | `result-track:92d05c71c01d1017e0349bc18f6f0e8d1cd3cce118706386abc474d5f4229093` |
| 9 | `theorem` | [pickupCrossNatSubexp_iff_crossSubexp](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupcrossnatsubexp-iff-crosssubexp--811787a55652a075971efee2.md) | 103 | `result-track:811787a55652a075971efee2fe3309a31c026a2c58f85d04659a7fc8f5b6756e` |
| 10 | `theorem` | [riemannHypothesis_of_pickupCrossNatPoly](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/riemannhypothesis-of-pickupcrossnatpoly--64d3476b4834ec6bef716776.md) | 126 | `result-track:64d3476b4834ec6bef716776016bf0910ede4b9ec9af11e18dcc9be15e13f9ff` |
| 11 | `theorem` | [riemannHypothesis_of_pickupCrossNatSubexp](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/riemannhypothesis-of-pickupcrossnatsubexp--c700bd5aa5566d46a81ea967.md) | 130 | `result-track:c700bd5aa5566d46a81ea967df14dab81a18bd74e956a8192b80a125fff95155` |
| 12 | `theorem` | [pickupDeterminant_subexp_iff](../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/declarations/pickupdeterminant-subexp-iff--78d71ffbea590e2a0a8ada8e.md) | 135 | `result-track:78d71ffbea590e2a0a8ada8e6a585a3ceaf775c7b86abc7fbedd245cd35d3f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
