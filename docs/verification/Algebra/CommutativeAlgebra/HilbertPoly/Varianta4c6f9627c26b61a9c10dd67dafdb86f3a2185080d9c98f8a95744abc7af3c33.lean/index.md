# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HilbertPoly.Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Infinite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/prehilbertpoly--3afe344b39f2c0e6654ea1f2.md) | 58 | `declaration-track:3afe344b39f2c0e6654ea1f2ec9c9330ff79efff5bce5d03f5a5f816b44c8874` |
| 2 | `lemma` | [natDegree_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/natdegree-prehilbertpoly--dc0c9f9a6fa0253837708adf.md) | 61 | `result-track:dc0c9f9a6fa0253837708adfeab0df4020673752c7ec54c711a038eb7f476232` |
| 3 | `lemma` | [coeff_preHilbertPoly_self](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/coeff-prehilbertpoly-self--0e67fc848517ef0ca8865b78.md) | 67 | `result-track:0e67fc848517ef0ca8865b78bbadf25c26af7d2835371f97341b845969163efe` |
| 4 | `lemma` | [leadingCoeff_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/leadingcoeff-prehilbertpoly--f310da8d9b7b53629b22000e.md) | 81 | `result-track:f310da8d9b7b53629b22000ebb1290262ffd50e328d8a4529971cd3b9304dec5` |
| 5 | `lemma` | [preHilbertPoly_eq_choose_sub_add](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/prehilbertpoly-eq-choose-sub-add--b2cb52ad5dedece680d2945b.md) | 85 | `result-track:b2cb52ad5dedece680d2945bc25be6f6c4e96edd01c7e391d7db37ad9bff5d60` |
| 6 | `def` | [hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly--6e44a97959ca875e5bbdeb66.md) | 105 | `declaration-track:6e44a97959ca875e5bbdeb66feb66fdfef916002eb58e8ec055c7da51c3c74c0` |
| 7 | `lemma` | [hilbertPoly_zero_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-zero-left--fcc6d103f9528de9ab779d3a.md) | 109 | `result-track:fcc6d103f9528de9ab779d3ab627ffcc70998e90d70024db635b50e17852dc63` |
| 8 | `lemma` | [hilbertPoly_zero_right](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-zero-right--bf9c32bcbde15cb80a977d0f.md) | 114 | `result-track:bf9c32bcbde15cb80a977d0f76bdc25edefbb2b12f17e996fc9ce6a3390e7d0a` |
| 9 | `lemma` | [hilbertPoly_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-succ--baa3dd64484dd224b424215c.md) | 116 | `result-track:baa3dd64484dd224b424215cc634b23e2a69ab07b7410d6587900f897d4845ed` |
| 10 | `lemma` | [hilbertPoly_X_pow_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-x-pow-succ--000a71b1ab6a253be338fa78.md) | 119 | `result-track:000a71b1ab6a253be338fa78accec32b9b2b25fca71f9f9c866058eca46e9232` |
| 11 | `lemma` | [hilbertPoly_add_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-add-left--73e632a3f96db17bfd1f7468.md) | 123 | `result-track:73e632a3f96db17bfd1f7468377b33ec7085ad963d11234dfaaf3e82abab92d2` |
| 12 | `lemma` | [hilbertPoly_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-smul--52b964dec12c7e9c43e1ecb0.md) | 133 | `result-track:52b964dec12c7e9c43e1ecb0601c640a149f3fb4f3c1ff3d5a417b687a8cb036` |
| 13 | `def` | [hilbertPoly_linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-linearmap--fa29a81e2396e256b4747388.md) | 149 | `declaration-track:fa29a81e2396e256b47473882e00aeb514f713748cb4501083b9719452551a3f` |
| 14 | `theorem` | [coeff_mul_invOneSubPow_eq_hilbertPoly_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/coeff-mul-invonesubpow-eq-hilbertpoly-eval--12574ecb2bdd6d88edb7bcd6.md) | 161 | `result-track:12574ecb2bdd6d88edb7bcd650ae550aa7128ebc721ac7a62c2c7b911b8a9653` |
| 15 | `theorem` | [existsUnique_hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/existsunique-hilbertpoly--121f2bc0fac980fe9e464418.md) | 190 | `result-track:121f2bc0fac980fe9e4644180635f222dc6bb90cc9be4f547fb93f8c516e6fa9` |
| 16 | `theorem` | [eq_hilbertPoly_of_forall_coeff_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/eq-hilbertpoly-of-forall-coeff-eq-eval--0c4982d0cedf271e00e29b40.md) | 210 | `result-track:0c4982d0cedf271e00e29b407847355545acade96eb64cfecdf1f5b02d88fcd6` |
| 17 | `lemma` | [hilbertPoly_mul_one_sub_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-mul-one-sub-succ--b57088b4dd6b436acb8b6f71.md) | 217 | `result-track:b57088b4dd6b436acb8b6f71eefe0466548b13ea9084cc4385187f79b194f284` |
| 18 | `lemma` | [hilbertPoly_mul_one_sub_pow_add](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-mul-one-sub-pow-add--d7fdceca7469c6da62a9b88e.md) | 225 | `result-track:d7fdceca7469c6da62a9b88e1e080e311f2347a02738a254e998adc13abcaca8` |
| 19 | `lemma` | [hilbertPoly_eq_zero_of_le_rootMultiplicity_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/hilbertpoly-eq-zero-of-le-rootmultiplicity-one--96d0bee834b6d332b9ea0be0.md) | 231 | `result-track:96d0bee834b6d332b9ea0be0d0488632879e806add0fb7fee2da1cc6b2d9a319` |
| 20 | `theorem` | [natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt--84b5a0b42879364e20d98eb4.md) | 243 | `result-track:84b5a0b42879364e20d98eb4da232de009c61bfeb5abc03471da7a20b659eea7` |
| 21 | `theorem` | [natDegree_hilbertPoly_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/declarations/natdegree-hilbertpoly-of-ne-zero--17f426da628f7838286c2b82.md) | 264 | `result-track:17f426da628f7838286c2b82bb458ce25d1cb133cbe3b9de05bb4d6f5339331a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
