# Verification target: GRWTSK.NumberTheory.ConductorThreeCritical.Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f8ee1980d1dc64b45fc45b454199ba6683879e2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f8ee1980d1dc64b45fc45b454199ba6683879e2`.

Source path: `GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsResidueOnePrime](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/isresidueoneprime--df03032bd82613293b7d3829.md) | 43 | `declaration-track:df03032bd82613293b7d3829e0157ed07fbebf09be22708fefa5b58e7f67fa2d` |
| 2 | `def` | [IsResidueFivePrime](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/isresiduefiveprime--0f87eca202658ac5ac711d99.md) | 48 | `declaration-track:0f87eca202658ac5ac711d99ed5db0049b2ed9e325ad888efcae620ddbaf6dfd` |
| 3 | `def` | [IsEligibleResidueSixPrime](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/iseligibleresiduesixprime--46769323bb9b031024c6fe0c.md) | 53 | `declaration-track:46769323bb9b031024c6fe0c0efecf1b24ed060a3f2aad0202f490eba4f99b34` |
| 4 | `instance` | [isResidueOnePrimeDecidable](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/isresidueoneprimedecidable--844444ccb4a07724ac61283f.md) | 56 | `declaration-track:844444ccb4a07724ac61283f24bdf6151c3cd226157f436e48d17d35a74ba99e` |
| 5 | `instance` | [isResidueFivePrimeDecidable](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/isresiduefiveprimedecidable--52b978a447f1ef201c69084b.md) | 60 | `declaration-track:52b978a447f1ef201c69084bb2246f29b1de2e139e90aa9be8a735f844ee74ae` |
| 6 | `instance` | [isEligibleResidueSixPrimeDecidable](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/iseligibleresiduesixprimedecidable--ef00fe589a1c08ea2784b8b3.md) | 64 | `declaration-track:ef00fe589a1c08ea2784b8b30c64e0749aa349f291b5b379eb897d36ededb50c` |
| 7 | `def` | [actualResidueOneCount](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualresidueonecount--a7b61f8f6fdd11c7b88e116f.md) | 70 | `declaration-track:a7b61f8f6fdd11c7b88e116feaf4102050c5f3449d7a2c53b38dcd0083364dae` |
| 8 | `def` | [actualResidueFiveCount](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualresiduefivecount--14adf45981b45d300fe0efd5.md) | 75 | `declaration-track:14adf45981b45d300fe0efd586bfe099ff4f4355625de6711ddba31eeb730d26` |
| 9 | `def` | [actualResidueSixCounts](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualresiduesixcounts--f2a0342f1c487fd70f3f3cf1.md) | 80 | `declaration-track:f2a0342f1c487fd70f3f3cf1edb0d581675514ab408c7ef329ece28309d138ca` |
| 10 | `theorem` | [residuePrime_disjoint](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/residueprime-disjoint--3015f52a22549d43a438b2e8.md) | 86 | `result-track:3015f52a22549d43a438b2e874f304d0500b41384fd5f7dc9eea5723103a56c8` |
| 11 | `theorem` | [count_eligible_eq_residue_sum](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/count-eligible-eq-residue-sum--9530b6b445ae17f2bd9a31a5.md) | 95 | `result-track:9530b6b445ae17f2bd9a31a519551f4379ff393e3cabe113b89bd94e7dea306d` |
| 12 | `theorem` | [infinite_eligibleResidueSixPrimes](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/infinite-eligibleresiduesixprimes--efa294820c7ab4806ac2c8a2.md) | 116 | `result-track:efa294820c7ab4806ac2c8a29b61edf09cadd58bf2952da50ab5daaeed45fb00` |
| 13 | `def` | [actualEligiblePrimeCutoff](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualeligibleprimecutoff--5144d89afed91e48686a6491.md) | 128 | `declaration-track:5144d89afed91e48686a649101ebf2a1be19ea16584a8ef8ee516b9a33b816f2` |
| 14 | `theorem` | [actualEligiblePrimeCutoff_indexes](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualeligibleprimecutoff-indexes--1dab036b63e0bba516658feb.md) | 133 | `result-track:1dab036b63e0bba516658feb7485c4eb83df91a834836507f93b1a2e4db8a000` |
| 15 | `def` | [indexedArithmeticBias](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/indexedarithmeticbias--6aeb9a6deed0b7f78291dd66.md) | 170 | `declaration-track:6aeb9a6deed0b7f78291dd66cddb8cfdfa9770a8814ccdd1826067963b30533d` |
| 16 | `def` | [indexedDiscrepancyOperator](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/indexeddiscrepancyoperator--61ac531d4be4ef5c899dbe5f.md) | 178 | `declaration-track:61ac531d4be4ef5c899dbe5ff69aa85accefab813b0bdce82c67cc44f12be90c` |
| 17 | `theorem` | [indexedDiscrepancyOperator_norm](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/indexeddiscrepancyoperator-norm--d3a946cd8fddb8cd376e4a37.md) | 186 | `result-track:d3a946cd8fddb8cd376e4a37f224b3857e11b1c25cbf2a863abaedfec509328e` |
| 18 | `theorem` | [actualIndexedErrorOperator_norm](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualindexederroroperator-norm--59bc83cd8b9381389309931d.md) | 194 | `result-track:59bc83cd8b9381389309931d468a941593f25f9c6a2dbb647806a4452f03d57c` |
| 19 | `theorem` | [actualIndexedArithmeticBias_eq](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualindexedarithmeticbias-eq--17d7737d01c0a044b592e8e7.md) | 202 | `result-track:17d7737d01c0a044b592e8e7587234724bf7200f5dc4a4c0e83783a888ab4f21` |
| 20 | `theorem` | [actualIndexedErrorOperator_norm_eq_countDifference](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/actualindexederroroperator-norm-eq-countdifference--9596371d6976f5c64c7af158.md) | 220 | `result-track:9596371d6976f5c64c7af158254ca4ea53adcb29457c949e342a7ce53597946d` |
| 21 | `def` | [conductorThreeCriticalRate](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/conductorthreecriticalrate--f5fdf273d46b029b6df2c1e9.md) | 234 | `declaration-track:f5fdf273d46b029b6df2c1e9655dbe56756ca7d8664eb65935399df0d1dea131` |
| 22 | `theorem` | [conductorThreeCriticalRate_nonneg](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/conductorthreecriticalrate-nonneg--ee5cb9a2534188a3640cc448.md) | 240 | `result-track:ee5cb9a2534188a3640cc44860cf5141aecc864959a088d5d9c0d23303bc3540` |
| 23 | `theorem` | [conductorThreeCriticalRate_pos](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/conductorthreecriticalrate-pos--ff95200757625797cd5d504b.md) | 246 | `result-track:ff95200757625797cd5d504b3a41b39dad71a55c136a7a353d164bbb6550f255` |
| 24 | `def` | [MatrixCriticalDecay](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/matrixcriticaldecay--161265138b21a27545a47aa8.md) | 261 | `declaration-track:161265138b21a27545a47aa887b6d80c2183d77dcf1026d47dd3ee2f14958d70` |
| 25 | `def` | [ArithmeticBiasCriticalDecay](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/arithmeticbiascriticaldecay--e51145bf0c4c55d049ba00f1.md) | 269 | `declaration-track:e51145bf0c4c55d049ba00f12c1e331d7acb7fbec65bdd8e07545f70f1f07e9a` |
| 26 | `theorem` | [one_le_sqrtThree](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/one-le-sqrtthree--19a455e1e62ae751d1b94788.md) | 276 | `result-track:19a455e1e62ae751d1b947886ce50eeeec6a7eedd6d26ac3198deca01e511126` |
| 27 | `theorem` | [matrixCriticalDecay_iff_arithmeticBiasCriticalDecay](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/declarations/matrixcriticaldecay-iff-arithmeticbiascriticaldecay--0dbb0f0810b5fa763a3a73b2.md) | 283 | `result-track:0dbb0f0810b5fa763a3a73b29253c66ea55054c3fd4f5ad8c64111411f4eeb71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
