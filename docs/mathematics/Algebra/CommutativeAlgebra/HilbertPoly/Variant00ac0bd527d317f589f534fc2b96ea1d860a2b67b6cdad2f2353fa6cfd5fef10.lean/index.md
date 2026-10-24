# GRWTSK.Algebra.CommutativeAlgebra.HilbertPoly.Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bc3eb6bf4c4060ed3363a8d79b6ad86ba3daeea`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [preHilbertPoly](declarations/prehilbertpoly--007671ccd4890501fb43cd7c.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [natDegree_preHilbertPoly](declarations/natdegree-prehilbertpoly--d0227cd72307845cc46efb91.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [coeff_preHilbertPoly_self](declarations/coeff-prehilbertpoly-self--8f3caae11176d98cf7dfe06d.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [leadingCoeff_preHilbertPoly](declarations/leadingcoeff-prehilbertpoly--0b43134a5c3bd3324016397d.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [preHilbertPoly_eq_choose_sub_add](declarations/prehilbertpoly-eq-choose-sub-add--0143fe276b2d1b1259753aa7.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [hilbertPoly](declarations/hilbertpoly--4fb15e94351de62bf63ced3e.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hilbertPoly_zero_left](declarations/hilbertpoly-zero-left--51c5adf27c3cd127770f1f97.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [hilbertPoly_zero_right](declarations/hilbertpoly-zero-right--cf6589c353ba53879ef126dc.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hilbertPoly_succ](declarations/hilbertpoly-succ--06271e838a7f7943534d2dfa.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [hilbertPoly_X_pow_succ](declarations/hilbertpoly-x-pow-succ--e2fc67c523d3581c0d5fc957.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [hilbertPoly_add_left](declarations/hilbertpoly-add-left--98e0a0ce6ab96ee7efe017ff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hilbertPoly_smul](declarations/hilbertpoly-smul--386024993ac0a1e8bb48cf53.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [hilbertPoly_linearMap](declarations/hilbertpoly-linearmap--ab5a9e76781805349561a925.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_mul_invOneSubPow_eq_hilbertPoly_eval](declarations/coeff-mul-invonesubpow-eq-hilbertpoly-eval--51f6044abfdf38e17a2d5fcc.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [existsUnique_hilbertPoly](declarations/existsunique-hilbertpoly--b718b8707d6f8e3a9a746df8.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eq_hilbertPoly_of_forall_coeff_eq_eval](declarations/eq-hilbertpoly-of-forall-coeff-eq-eval--4841e0b5c597f6bff2e9c561.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [hilbertPoly_mul_one_sub_succ](declarations/hilbertpoly-mul-one-sub-succ--09107918b3c74e939d618402.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [hilbertPoly_mul_one_sub_pow_add](declarations/hilbertpoly-mul-one-sub-pow-add--2de1e972fa16c7f70cbe6d31.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [hilbertPoly_eq_zero_of_le_rootMultiplicity_one](declarations/hilbertpoly-eq-zero-of-le-rootmultiplicity-one--124e9a627a0c0ab46a8cdea0.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt](declarations/natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt--76fd9393e696626046914908.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [natDegree_hilbertPoly_of_ne_zero](declarations/natdegree-hilbertpoly-of-ne-zero--f95956a3e4ef947fd2240caa.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
