# GRWTSK.Algebra.CommutativeAlgebra.HilbertPoly.Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `823364e34e55eca198d997052479da6843bb038d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [preHilbertPoly](declarations/prehilbertpoly--4336ad100e34486c2b259bca.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [natDegree_preHilbertPoly](declarations/natdegree-prehilbertpoly--f198a8de0ba7ec10a15c0813.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [coeff_preHilbertPoly_self](declarations/coeff-prehilbertpoly-self--811754be1ba94ffd08a6895d.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [leadingCoeff_preHilbertPoly](declarations/leadingcoeff-prehilbertpoly--df92da9ec1ec9148461bda4f.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [preHilbertPoly_eq_choose_add_sub](declarations/prehilbertpoly-eq-choose-add-sub--c538beb1d0c393220e62e10a.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [hilbertPoly](declarations/hilbertpoly--1aabf2192a43ba5cf4bd056a.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hilbertPoly_zero_left](declarations/hilbertpoly-zero-left--949635f98ac3bf29197bfebb.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [hilbertPoly_zero_right](declarations/hilbertpoly-zero-right--97c6ce6014102103e2518bc4.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hilbertPoly_succ](declarations/hilbertpoly-succ--6d407f3b9ebf5b99ce42e9a3.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [hilbertPoly_X_pow_succ](declarations/hilbertpoly-x-pow-succ--7b9820e8302222730377e0bd.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [hilbertPoly_add_left](declarations/hilbertpoly-add-left--b170572abde48d0b324d7322.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hilbertPoly_smul](declarations/hilbertpoly-smul--5a5bdedc80cd076f2dfdb231.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [hilbertPoly_linearMap](declarations/hilbertpoly-linearmap--360d9f652ac33c5e1b59d25c.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_mul_invOneSubPow_eq_hilbertPoly_eval](declarations/coeff-mul-invonesubpow-eq-hilbertpoly-eval--af01d61b3159ee3b1423d56f.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [existsUnique_hilbertPoly](declarations/existsunique-hilbertpoly--d48e486c3912b4b396ba0b9c.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eq_hilbertPoly_of_forall_coeff_eq_eval](declarations/eq-hilbertpoly-of-forall-coeff-eq-eval--aee6e36f0b2fabd5bf31adbd.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [hilbertPoly_mul_one_sub_succ](declarations/hilbertpoly-mul-one-sub-succ--fa444e37291770138e6505d8.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [hilbertPoly_mul_one_sub_pow_add](declarations/hilbertpoly-mul-one-sub-pow-add--5548968a4de3d35c72a18f07.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [hilbertPoly_eq_zero_of_le_rootMultiplicity_one](declarations/hilbertpoly-eq-zero-of-le-rootmultiplicity-one--9daeccfb4745a735fdb352cb.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt](declarations/natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt--d53464471aa5cc984bc25fe0.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [natDegree_hilbertPoly_of_ne_zero](declarations/natdegree-hilbertpoly-of-ne-zero--bd7aa8b66314468a063918c8.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
