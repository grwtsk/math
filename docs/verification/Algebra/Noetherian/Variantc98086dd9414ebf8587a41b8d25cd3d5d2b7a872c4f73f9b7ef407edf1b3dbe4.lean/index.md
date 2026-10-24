# Verification target: GRWTSK.Algebra.Noetherian.Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "341293419432f405d04f536a9af472c7b7cbbe47",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `341293419432f405d04f536a9af472c7b7cbbe47`.

Source path: `GRWTSK/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean.json)

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
| 1 | `def` | [ordMonoidHom](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordmonoidhom--5e6d89494f509d6b62f70173.md) | 40 | `declaration-track:5e6d89494f509d6b62f701736875e8f8920b6fc8955014c557aa2f24a25240b6` |
| 2 | `lemma` | [ordMonoidHom_eq_ord](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordmonoidhom-eq-ord--9b0db13f70f861095de133d1.md) | 46 | `result-track:9b0db13f70f861095de133d15cf2c45e627c9e4030a96879ba81ad63ffc22eba` |
| 3 | `lemma` | [ordMonoidWithZeroHom_eq_ordMonoidHom](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordmonoidwithzerohom-eq-ordmonoidhom--6c87f7721c4b2483142acc3a.md) | 50 | `result-track:6c87f7721c4b2483142acc3aeffb875a1f9e65d0caedd60a08483daa730fa029` |
| 4 | `lemma` | [ordMonoidWithZeroHom_ne_zero](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordmonoidwithzerohom-ne-zero--6d80d0b2ad2e4a6859f9517c.md) | 60 | `result-track:6d80d0b2ad2e4a6859f9517c0d464e681fcfda815e58f1f0875fe53d51ebc95d` |
| 5 | `lemma` | [ord_le_iff](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ord-le-iff--341299fb754af31fe9053716.md) | 72 | `result-track:341299fb754af31fe9053716401377fb594d965b0b359c33fbb5cd70a638047e` |
| 6 | `lemma` | [ord_eq_addVal](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ord-eq-addval--de8416a744a0896dbda4777d.md) | 89 | `result-track:de8416a744a0896dbda4777d51ded2f23ad5b28ef7f5059ded82a3dcd5e35395` |
| 7 | `lemma` | [ord_eq_iff_associated](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ord-eq-iff-associated--e048e76b5fcd33a60ee03682.md) | 108 | `result-track:e048e76b5fcd33a60ee03682b462b95d80557fca29a0c2925c4256ee18e8952f` |
| 8 | `theorem` | [ord_add](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ord-add--72cb05d0157ff7f7c9e426d0.md) | 118 | `result-track:72cb05d0157ff7f7c9e426d06373a4e5936a4bf015b036fc5cd8a11e21839ed8` |
| 9 | `lemma` | [ordFrac_ge_one_of_ne_zero](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-ge-one-of-ne-zero--5c1048f44e06991618ea804b.md) | 136 | `result-track:5c1048f44e06991618ea804bb6ce01f6463d5325ca704dd6190463e7d7919b7a` |
| 10 | `lemma` | [ordFrac_le_smul](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-le-smul--79a2f1422fa3d8df11662675.md) | 142 | `result-track:79a2f1422fa3d8df1166267503cda81a0d7acc5459efe28a64673b778970c388` |
| 11 | `lemma` | [ordFrac_of_isUnit](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-of-isunit--5f5fabdba05a5edeef273739.md) | 154 | `result-track:5f5fabdba05a5edeef273739f4f8aa96eac89535f1bdfe598473d8df4929df4f` |
| 12 | `lemma` | [ordMonoidWithZeroHom_eq_intValuation](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordmonoidwithzerohom-eq-intvaluation--9d968d12ec644fee775e2da7.md) | 164 | `result-track:9d968d12ec644fee775e2da7e3bf328e6bbcc747c5c3176c8bad7497ab264cc8` |
| 13 | `lemma` | [ordFrac_eq_intValuation](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-eq-intvaluation--8790de8e4a917be7aa299cdc.md) | 168 | `result-track:8790de8e4a917be7aa299cdc815222a46534dc3d4615c66ff5a53bcd8e1504c8` |
| 14 | `theorem` | [ordFrac_eq_inverse_comp_valuation](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-eq-inverse-comp-valuation--9ed40ac9465c7187b99d59ee.md) | 173 | `result-track:9ed40ac9465c7187b99d59ee6681ff0ee9c61d9dfeb96b82db6f98de9c902858` |
| 15 | `theorem` | [ordFrac_eq_valuation_inv](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-eq-valuation-inv--699e8a7a0102a2ad23a67b4d.md) | 183 | `result-track:699e8a7a0102a2ad23a67b4d86c566c447661e48a604960372176df7b710a2b0` |
| 16 | `lemma` | [ordFrac_irreducible](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-irreducible--038186baad1c6969c07f5538.md) | 187 | `result-track:038186baad1c6969c07f5538b99d9609cd1c612eb4e99ab43d17619c9df9eb7b` |
| 17 | `lemma` | [isUnit_iff_ordFrac_one_of_isDiscreteValuationRing](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/isunit-iff-ordfrac-one-of-isdiscretevaluationring--5066711ef144f6dbc167fe48.md) | 195 | `result-track:5066711ef144f6dbc167fe482a690080c2dca4e37344684dee172007babd3e75` |
| 18 | `lemma` | [mker_ordFrac_eq_isUnitSubmonoid](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/mker-ordfrac-eq-isunitsubmonoid--265e5ac31d98ad56ffde5d23.md) | 199 | `result-track:265e5ac31d98ad56ffde5d2331f9c1a6394ed2789aab82f9de135a7267bed317` |
| 19 | `theorem` | [ordFrac_add](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/ordfrac-add--3cb871a989a67bd070f8122e.md) | 211 | `result-track:3cb871a989a67bd070f8122e1ef1f7836980f161faa8f3c152d31c68d8cd70e5` |
| 20 | `theorem` | [associated_of_ordFrac_eq](../../../../mathematics/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/declarations/associated-of-ordfrac-eq--82a73ab35ca0751ef3814676.md) | 217 | `result-track:82a73ab35ca0751ef38146768eeff42447dc58be3420e1389e54967ef1cbe925` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
