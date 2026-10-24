# Verification target: GRWTSK.Algebra.LocalSubring.Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "372e66acf36f1ebde5cd151babbecba8788be4f5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `372e66acf36f1ebde5cd151babbecba8788be4f5`.

Source path: `GRWTSK/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingUp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.LocalSubring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Ideal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ValuationSubring.toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/valuationsubring-tolocalsubring--f736ab700a9acafb3cb5a5b9.md) | 33 | `declaration-track:f736ab700a9acafb3cb5a5b9ed6986daa75ba757c625a30f05290463b7a791b1` |
| 2 | `lemma` | [ValuationSubring.toLocalSubring_injective](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/valuationsubring-tolocalsubring-injective--b1d19bd2ac2a16ea5d565ee5.md) | 37 | `result-track:b1d19bd2ac2a16ea5d565ee507d700eca5d366173d6b8c0135e343f3996a9977` |
| 3 | `lemma` | [LocalSubring.map_maximalIdeal_eq_top_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/localsubring-map-maximalideal-eq-top-of-ismax--cc53bf70143af6ac3b7ecb62.md) | 41 | `result-track:cc53bf70143af6ac3b7ecb623ddbc74ceca186e30e1b39f085d5350267e1c769` |
| 4 | `lemma` | [LocalSubring.mem_of_isMax_of_isIntegral](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/localsubring-mem-of-ismax-of-isintegral--dd283af42ccaaaf18a3ddd2b.md) | 61 | `result-track:dd283af42ccaaaf18a3ddd2b787a5dab297e290d60037b9bf192b278920dfae3` |
| 5 | `lemma` | [ValuationSubring.isMax_toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/valuationsubring-ismax-tolocalsubring--160f951278e3adb0ceb2cc4f.md) | 80 | `result-track:160f951278e3adb0ceb2cc4f4694c0e0f2742ae15bd70784594aceef06d30555` |
| 6 | `lemma` | [LocalSubring.exists_valuationRing_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/localsubring-exists-valuationring-of-ismax--75bedd282bae1ab221616b01.md) | 96 | `result-track:75bedd282bae1ab221616b011cc2f236153dba5299f27834621520d47294efb9` |
| 7 | `lemma` | [LocalSubring.isMax_iff](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/localsubring-ismax-iff--f44766a4978f8b8e5a98c2e0.md) | 131 | `result-track:f44766a4978f8b8e5a98c2e05f5de1b24d6480b49d341903f7acbf304236ea0a` |
| 8 | `lemma` | [LocalSubring.exists_le_valuationSubring](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/localsubring-exists-le-valuationsubring--0978c9fba0f224a00ce2f96a.md) | 136 | `result-track:0978c9fba0f224a00ce2f96a4e113c9b05c1b3c09e646bcea2bc4ad0a3716123` |
| 9 | `lemma` | [bijective_rangeRestrict_comp_of_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/bijective-rangerestrict-comp-of-valuationring--5680d78a2a0416822823ae91.md) | 163 | `result-track:5680d78a2a0416822823ae91bcfac99429b220e35b7d24b62888a8224844a698` |
| 10 | `lemma` | [IsLocalRing.exists_factor_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/declarations/islocalring-exists-factor-valuationring--06b9502b61891ee6c0e713c8.md) | 185 | `result-track:06b9502b61891ee6c0e713c8fe58fdc088cb318e43b811dcbe78370666b62396` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
