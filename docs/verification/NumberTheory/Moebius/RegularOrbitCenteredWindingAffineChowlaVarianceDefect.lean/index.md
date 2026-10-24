# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingAffineChowlaVarianceDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64aa81881782a45a2f89752c1621455fd9cf3f9c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64aa81881782a45a2f89752c1621455fd9cf3f9c`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredPairMassChowlaBridge`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredPairMassChowlaBridge.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityAffineChowlaFamilyAggregate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityaffinechowlafamilyaggregate--1d0851f19cce9fc959572bd9.md) | 17 | `declaration-track:1d0851f19cce9fc959572bd9f30f67c650550c22aff35dc2f48dcc770ac57634` |
| 2 | `def` | [parityAffineChowlaFamilySpectralEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityaffinechowlafamilyspectralenergy--6224aa987fcad04a2c5f3365.md) | 24 | `declaration-track:6224aa987fcad04a2c5f33657d3e6f5efaa9c07d194f28c8795f1caff5dfebe9` |
| 3 | `theorem` | [parityEvenAffineChowlaFamilyAggregate_eq_signedResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityevenaffinechowlafamilyaggregate-eq-signedresiduefourier--2560660fcc1b6ee341cbadd1.md) | 31 | `result-track:2560660fcc1b6ee341cbadd1335aebb0d930189913f134f6abf92ab05876a061` |
| 4 | `theorem` | [parityOddAffineChowlaFamilyAggregate_eq_signedResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityoddaffinechowlafamilyaggregate-eq-signedresiduefourier--6e2637846d6aaceb68b48149.md) | 41 | `result-track:6e2637846d6aaceb68b481498dfa82246487e8022769979baef4895b76806b3f` |
| 5 | `theorem` | [parityEvenAffineChowlaSpectralEnergy_eq_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityevenaffinechowlaspectralenergy-eq-fullfrequency--f0301809d9b8ff72033fa302.md) | 51 | `result-track:f0301809d9b8ff72033fa30237e0d8d56b9fb520ea1687dccf8b2a7cbf3ab47e` |
| 6 | `theorem` | [parityOddAffineChowlaSpectralEnergy_eq_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityoddaffinechowlaspectralenergy-eq-fullfrequency--eaf2b9e0c0922de63150e8b6.md) | 64 | `result-track:eaf2b9e0c0922de63150e8b677c642433e04c91d9f09a13d741ce0d3f702f258` |
| 7 | `def` | [parityAffineChowlaVarianceDefect](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityaffinechowlavariancedefect--cfe27ef12c9938454091d5e3.md) | 78 | `declaration-track:cfe27ef12c9938454091d5e335f17c6b70a9201424c69cac9621077ed3a8bc18` |
| 8 | `theorem` | [parityAffineChowlaVarianceDefect_even_eq_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityaffinechowlavariancedefect-even-eq-wrap--1e96c386b65ad355f39d4252.md) | 85 | `result-track:1e96c386b65ad355f39d425205f4c15ab6a8b519665999ec4081a36a965392e9` |
| 9 | `theorem` | [parityAffineChowlaVarianceDefect_odd_eq_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityaffinechowlavariancedefect-odd-eq-wrap--93dd9dcea9a668720fc31b57.md) | 98 | `result-track:93dd9dcea9a668720fc31b574099bb0ff245e8516858b3922137fd6f7bdd4ea0` |
| 10 | `theorem` | [parityAffineChowlaVarianceDefect_eq_nonzero_add_meanInflation_sub_variance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/parityaffinechowlavariancedefect-eq-nonzero-add-meaninflation-sub-varian--04e5f91b874553e55e1ad20e.md) | 112 | `result-track:04e5f91b874553e55e1ad20e0e4d366b766e16de1e4fa9507cc619fceefe4ccf` |
| 11 | `def` | [regularCenteredWindingAffineChowlaVarianceDefectAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectatmodulus--4e8514e4e0aa71cb6720850c.md) | 129 | `declaration-track:4e8514e4e0aa71cb6720850ce64056175e0c08af18a03bd711242da4f78554b2` |
| 12 | `theorem` | [regularCenteredWindingAffineChowlaVarianceDefectAtModulus_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectatmodulus-eq-residue--fb73176f97481fc9c78e766a.md) | 136 | `result-track:fb73176f97481fc9c78e766aae3145289d3e4f3341bf52eb545ba8216b50edfb` |
| 13 | `def` | [regularCenteredWindingAffineChowlaVarianceDefectEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectendpoint--c664a17f93d6950e2f76cca5.md) | 152 | `declaration-track:c664a17f93d6950e2f76cca56b4fae786803afb7c526f6e717494f5cc6e9cb8a` |
| 14 | `theorem` | [regularCenteredWindingAffineChowlaVarianceDefectEndpoint_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectendpoint-eq-residue--371b45f8079891aa70916720.md) | 160 | `result-track:371b45f8079891aa70916720e796df48c062c481a2d8c1d31b48d950f781d22c` |
| 15 | `def` | [RegularCenteredWindingAffineChowlaVarianceDefectEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectenvelope--a26880d644a700ec7a749c79.md) | 175 | `declaration-track:a26880d644a700ec7a749c79f734533852d00f162e1355af072dea620c42ad32` |
| 16 | `theorem` | [regularCenteredWindingAffineChowlaVarianceDefectEnvelope_iff_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectenvelope-iff-residue--e73a0701fc986b34cbead556.md) | 180 | `result-track:e73a0701fc986b34cbead556f0452c9a358eddcffcb0dcbd91680bb0902fb90f` |
| 17 | `structure` | [RegularCenteredWindingAffineChowlaVarianceDefectSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectsourcedata--97303ed7d8bb0fc401d5047d.md) | 192 | `declaration-track:97303ed7d8bb0fc401d5047d5c9a5f135a71d82e24d6aa6621324db6dcbe8dc9` |
| 18 | `def` | [RegularCenteredWindingAffineChowlaVarianceDefectSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/declarations/regularcenteredwindingaffinechowlavariancedefectsource--0b214b6743ac7cf025864c5e.md) | 205 | `declaration-track:0b214b6743ac7cf025864c5e82a1b56586c5486e602938185757eae5545419f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
