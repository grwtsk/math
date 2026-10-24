# GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81eb5a1c7eecc9337021cdbad7cd96d297c90035`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinor](declarations/isminor--49c80a9b721cf2456ef70299.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [contract_delete_isMinor](declarations/contract-delete-isminor--f8cc2a415799ecba1af8937a.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsMinor.exists_eq_contract_delete_disjoint](declarations/isminor-exists-eq-contract-delete-disjoint--b379713c87bb37924e2df527.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [IsStrictMinor](declarations/isstrictminor--ba2d359554bceeaea84e6837.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsMinor.subset](declarations/isminor-subset--b008388750e40c2d416c351c.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsMinor.refl](declarations/isminor-refl--eabb5ff6511344014203a1ed.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsMinor.trans](declarations/isminor-trans--eddbd88e18b457b0d541f261.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsMinor.eq_of_ground_subset](declarations/isminor-eq-of-ground-subset--d77a57b7a8e8bec845a4ae9e.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsMinor.antisymm](declarations/isminor-antisymm--74a38e4c6d2115b77f7f3590.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--f8b1d4459eb79196a4d9bb5b.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsMinor.le](declarations/isminor-le--87ce087d2e4915d7f19d1dfe.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsStrictMinor.lt](declarations/isstrictminor-lt--945208ebfe558268902b36b9.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_eq_isMinor](declarations/le-eq-isminor--a998543cec4c761adfdbac3a.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [lt_eq_isStrictMinor](declarations/lt-eq-isstrictminor--a38c1529b4dc5b9f63c12808.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isStrictMinor_iff_isMinor_ne](declarations/isstrictminor-iff-isminor-ne--0456bdd62d9c54db7489ba9e.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsStrictMinor.ne](declarations/isstrictminor-ne--4b7f090570405c85d3a35115.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [isStrictMinor_irrefl](declarations/isstrictminor-irrefl--89f41e8a15385733dfc779c5.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsStrictMinor.isMinor](declarations/isstrictminor-isminor--94dcfbd0da87180b0aa95bf1.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsStrictMinor.not_isMinor](declarations/isstrictminor-not-isminor--345f8381051642669e8e17c5.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsStrictMinor.ssubset](declarations/isstrictminor-ssubset--c539f3bdf49fda61b7e05a27.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isStrictMinor_iff_isMinor_ssubset](declarations/isstrictminor-iff-isminor-ssubset--5aa21186ac0fda1af8000096.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsStrictMinor.trans_isMinor](declarations/isstrictminor-trans-isminor--87340a7ae31e603637bc67fd.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsMinor.trans_isStrictMinor](declarations/isminor-trans-isstrictminor--91c6840489fbdb69e2752785.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsStrictMinor.trans](declarations/isstrictminor-trans--9a0a8d9b10940272be6dc971.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Indep.of_isMinor](declarations/indep-of-isminor--a96b29f29fb162f34df7d1e5.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsNonloop.of_isMinor](declarations/isnonloop-of-isminor--a4a66f377e07ed0c474874fa.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Dep.of_isMinor](declarations/dep-of-isminor--00c3700c1bb4ac60996ca806.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsLoop.of_isMinor](declarations/isloop-of-isminor--027db51f967a4288e4174999.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
