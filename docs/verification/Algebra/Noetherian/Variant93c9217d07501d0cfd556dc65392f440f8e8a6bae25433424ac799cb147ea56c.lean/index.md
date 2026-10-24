# Verification target: GRWTSK.Algebra.Noetherian.Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf779adabbaf3ee0e360338f745e02865bcf0f67",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf779adabbaf3ee0e360338f745e02865bcf0f67`.

Source path: `GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean.json)

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
| 1 | `def` | [ordMonoidHom](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordmonoidhom--c5f768f9010bf0867fdd5c5d.md) | 48 | `declaration-track:c5f768f9010bf0867fdd5c5d10f678602d3613f9673a1abaca3374fdcf289e93` |
| 2 | `lemma` | [ordMonoidHom_eq_ord](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordmonoidhom-eq-ord--a25356100758c5a3031bab35.md) | 54 | `result-track:a25356100758c5a3031bab359b87394192d1d5696d107397056d64c303fed4d2` |
| 3 | `lemma` | [ordMonoidWithZeroHom_eq_ordMonoidHom](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordmonoidwithzerohom-eq-ordmonoidhom--793484a65108ba28b3edefdd.md) | 58 | `result-track:793484a65108ba28b3edefddd664363382185dc0363a26e74718b5f2f5df4977` |
| 4 | `lemma` | [ordMonoidWithZeroHom_ne_zero](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordmonoidwithzerohom-ne-zero--6ee5d455fea437726264bf08.md) | 68 | `result-track:6ee5d455fea437726264bf08ad521e057817b6c5d7dd0672bbc195649111fa02` |
| 5 | `lemma` | [ord_le_iff](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ord-le-iff--4f3ab5a5523d39ddda084a30.md) | 80 | `result-track:4f3ab5a5523d39ddda084a302073dde930ce581eda0419a1f8a8504706bdd12e` |
| 6 | `lemma` | [ord_eq_addVal](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ord-eq-addval--36d47ed0273314e92a9775bd.md) | 97 | `result-track:36d47ed0273314e92a9775bd71f26177f370390bf5b442f0b96eaf7c166a4863` |
| 7 | `lemma` | [ord_eq_iff_associated](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ord-eq-iff-associated--2b31bdb37db9df8b2b5655f2.md) | 116 | `result-track:2b31bdb37db9df8b2b5655f203bca268b7f927d6a6a7080ef5e988faebfe7239` |
| 8 | `theorem` | [ord_add](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ord-add--ac2878ef0594071bcb47c8e9.md) | 126 | `result-track:ac2878ef0594071bcb47c8e9bdeb9fccb2b544b3a5dc060fc6147561b89f9355` |
| 9 | `lemma` | [ordFrac_ge_one_of_ne_zero](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-ge-one-of-ne-zero--3fa739040798c7f877da59a9.md) | 144 | `result-track:3fa739040798c7f877da59a94019bfc1f2a1ac2e48913a8815097a4366dcd42b` |
| 10 | `lemma` | [ordFrac_le_smul](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-le-smul--765f7f8f808b4113fdd6d3ac.md) | 150 | `result-track:765f7f8f808b4113fdd6d3ac3f8e41a6508c3819b7b6830daf5eaa3d9c6c2138` |
| 11 | `lemma` | [ordFrac_of_isUnit](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-of-isunit--e2d1ddfc8c92c129416061d5.md) | 162 | `result-track:e2d1ddfc8c92c129416061d5dcb2c058f5889ee800a7534c0d793ff82bb8d106` |
| 12 | `lemma` | [ordMonoidWithZeroHom_eq_intValuation](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordmonoidwithzerohom-eq-intvaluation--a2169230c7812bc9227eda9f.md) | 172 | `result-track:a2169230c7812bc9227eda9f904a29205de1bddbd5df49cabec3ac861cda2a37` |
| 13 | `lemma` | [ordFrac_eq_intValuation](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-eq-intvaluation--424442b44ab5dc714b4c3698.md) | 176 | `result-track:424442b44ab5dc714b4c3698faceb18d2176ab4282deaa81a12cbb8b4c0cd942` |
| 14 | `theorem` | [ordFrac_eq_inverse_comp_valuation](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-eq-inverse-comp-valuation--10e7f7d4f11e7f631b6f2747.md) | 181 | `result-track:10e7f7d4f11e7f631b6f2747b383a17b5a227215c8638fc4bc84af8e92067fd7` |
| 15 | `theorem` | [ordFrac_eq_valuation_inv](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-eq-valuation-inv--602265c9d8b4f7159d04d596.md) | 191 | `result-track:602265c9d8b4f7159d04d596d7ee69d0ce194e7d7924903633c25b1f8b0ccb57` |
| 16 | `lemma` | [ordFrac_irreducible](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-irreducible--d20a08ad0eb0cc49650ea193.md) | 195 | `result-track:d20a08ad0eb0cc49650ea193e78a535560780ac19665bda9eb46430717ec7152` |
| 17 | `lemma` | [isUnit_iff_ordFrac_one_of_isDiscreteValuationRing](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/isunit-iff-ordfrac-one-of-isdiscretevaluationring--74af157f11b707c6cf4cfa3a.md) | 203 | `result-track:74af157f11b707c6cf4cfa3a5f4acdb71f474ff4005c9a7524be021112b70dde` |
| 18 | `lemma` | [mker_ordFrac_eq_isUnitSubmonoid](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/mker-ordfrac-eq-isunitsubmonoid--8ff1557c17a14e3da25520e7.md) | 207 | `result-track:8ff1557c17a14e3da25520e7bc4cde8bb8faf4f45badd011749269ab0fa25339` |
| 19 | `theorem` | [ordFrac_add](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/ordfrac-add--c15b82a2ff5d166dfb2722d3.md) | 219 | `result-track:c15b82a2ff5d166dfb2722d30921f8d74196690f4ed0a77c9c750163f28bd2fb` |
| 20 | `theorem` | [associated_of_ordFrac_eq](../../../../mathematics/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/declarations/associated-of-ordfrac-eq--d77ef632a6d7ed2714144a9d.md) | 225 | `result-track:d77ef632a6d7ed2714144a9d5f6d38cf7a0118208c2241f1f6a458ec7a007639` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
