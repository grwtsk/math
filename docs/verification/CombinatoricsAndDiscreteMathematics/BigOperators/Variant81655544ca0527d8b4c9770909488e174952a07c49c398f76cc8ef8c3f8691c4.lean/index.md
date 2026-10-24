# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2293cbcd11758f4924d3f3f932dd371b18eb961",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2293cbcd11758f4924d3f3f932dd371b18eb961`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Monic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-list-sum-le--49faa6291505966f5776b9dd.md) | 53 | `result-track:49faa6291505966f5776b9ddbf984de1909daa159e8694ae3a42268ceb21dfa8` |
| 2 | `theorem` | [natDegree_multiset_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-multiset-sum-le--ce95574a38a3f5b2d37e89d9.md) | 59 | `result-track:ce95574a38a3f5b2d37e89d9c475d0ab7bfa4d68e75e70db30d21dc46238c021` |
| 3 | `theorem` | [natDegree_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-sum-le--5844f3e721c6de48f95615f0.md) | 63 | `result-track:5844f3e721c6de48f95615f094f08ad7ee9175ddcf980fc89f43f325c1bc5e09` |
| 4 | `lemma` | [natDegree_sum_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-sum-le-of-forall-le--cad8458b34252dd9d9506ce3.md) | 67 | `result-track:cad8458b34252dd9d9506ce351696917874d1cb1ed5a4a217fe82198c7ac4ec8` |
| 5 | `theorem` | [degree_list_sum_le_of_forall_degree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-list-sum-le-of-forall-degree-le--b1cf4c45860714e15dade065.md) | 71 | `result-track:b1cf4c45860714e15dade065d3f4b0a0df1d618248151d80d9b0519a9667d469` |
| 6 | `theorem` | [degree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-list-sum-le--3349c1603d0c3f59543aab48.md) | 82 | `result-track:3349c1603d0c3f59543aab48f41396ffdbd3883d493fd326d5112c6131de434d` |
| 7 | `theorem` | [natDegree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-list-prod-le--826104679adf1fc4553ac9a7.md) | 94 | `result-track:826104679adf1fc4553ac9a7726f9a5103be07458a5fb455bff657e4fdf5b6e2` |
| 8 | `theorem` | [degree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-list-prod-le--dad603e8f51b777ae7bb8564.md) | 99 | `result-track:dad603e8f51b777ae7bb856479d1ffe61f523945eec384104a6b4665f9407c65` |
| 9 | `theorem` | [coeff_list_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/coeff-list-prod-of-natdegree-le--b0c3e9e3b97362ac53b5d7b7.md) | 104 | `result-track:b0c3e9e3b97362ac53b5d7b7917cb53a2ff11ecea3d06b668a9335bbb36070f3` |
| 10 | `theorem` | [natDegree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-multiset-prod-le--ba27f6e81d3c4135f22c5991.md) | 124 | `result-track:ba27f6e81d3c4135f22c5991d637d2846c786fe1d043ca54dc4eef6ded2915f8` |
| 11 | `theorem` | [natDegree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-prod-le--27fb8e4a21d97b4f350a2396.md) | 127 | `result-track:27fb8e4a21d97b4f350a23965c219b47f671a0837256c9a36541422ffacdb123` |
| 12 | `theorem` | [degree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-multiset-prod-le--6bb1ab5df26baf3e7640e700.md) | 133 | `result-track:6bb1ab5df26baf3e7640e70050b719b3d14acb3253fbede609c5e4cb07de01fe` |
| 13 | `theorem` | [degree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-prod-le--6247cef0c013b22821764c16.md) | 136 | `result-track:6247cef0c013b22821764c1650529ff75aafb5461c54aeec603516fab441ed5b` |
| 14 | `theorem` | [leadingCoeff_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/leadingcoeff-multiset-prod--1646a044a244a73aa61fb149.md) | 145 | `result-track:1646a044a244a73aa61fb149de7a8b0ccb01c81dc43ee335993cff07cedba610` |
| 15 | `theorem` | [leadingCoeff_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/leadingcoeff-prod--19a5537cc0b08172e3808e13.md) | 164 | `result-track:19a5537cc0b08172e3808e13daa8efe2a4e61d3b616734117df8829b0b3c10f0` |
| 16 | `theorem` | [natDegree_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-multiset-prod--38e316583c8e84fd3e74d5df.md) | 174 | `result-track:38e316583c8e84fd3e74d5df531f4bdd92117480bcd8c1782730ee8b6a869049` |
| 17 | `theorem` | [natDegree_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-prod--200fc881c361a3797c581dd0.md) | 190 | `result-track:200fc881c361a3797c581dd053ed15bb9e7eaae77d239d12e2bc53499b7a9c97` |
| 18 | `theorem` | [natDegree_multiset_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-multiset-prod-of-monic--a8c6fa51ec54c01227bc91b0.md) | 194 | `result-track:a8c6fa51ec54c01227bc91b091070fdedc54491a80f2f42861d66bb858786387` |
| 19 | `theorem` | [degree_multiset_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-multiset-prod-of-monic--a4d6341f569186c875bc50a9.md) | 209 | `result-track:a4d6341f569186c875bc50a90727996cd3b1ac438c314c91e3182c0d471e6e07` |
| 20 | `theorem` | [natDegree_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-prod-of-monic--9e4aee7f887ebb19a95a4195.md) | 216 | `result-track:9e4aee7f887ebb19a95a41954e46fc6b96293c5c18ab64b691a9dfed62cebce4` |
| 21 | `theorem` | [degree_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-prod-of-monic--504a4fd254b3d7b0e671f480.md) | 220 | `result-track:504a4fd254b3d7b0e671f480278b8a455da5744c96f64a5a75ec2e4d095a2d02` |
| 22 | `theorem` | [coeff_multiset_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/coeff-multiset-prod-of-natdegree-le--36d14da9d07209ffc3fa001f.md) | 224 | `result-track:36d14da9d07209ffc3fa001f09f6d27e5d6e49b64147bb26f58a02e03cf489fe` |
| 23 | `theorem` | [coeff_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/coeff-prod-of-natdegree-le--09933ca008f1f915ebe9da12.md) | 229 | `result-track:09933ca008f1f915ebe9da12c97fde1987e42cc29206e079d7df98999cec2737` |
| 24 | `theorem` | [coeff_zero_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/coeff-zero-multiset-prod--08c010bb9ccf70eaef425c35.md) | 237 | `result-track:08c010bb9ccf70eaef425c35487634dc9d05d854d5e317f630e1a28d4aae806d` |
| 25 | `theorem` | [coeff_zero_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/coeff-zero-prod--fae17e8d3052a6e60e6aa8a3.md) | 241 | `result-track:fae17e8d3052a6e60e6aa8a317fb768d00d7624876bb87787961874192b50780` |
| 26 | `theorem` | [multiset_prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/multiset-prod-x-sub-c-nextcoeff--3768b25143a5d18fab923dbf.md) | 254 | `result-track:3768b25143a5d18fab923dbfac34ff61142523db79c223665fd7cbe54aaf5e1a` |
| 27 | `theorem` | [prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/prod-x-sub-c-nextcoeff--55c609a1052be18a8bb59270.md) | 262 | `result-track:55c609a1052be18a8bb59270ecfea703f5c474068f4277c07b8aeb4746ea7380` |
| 28 | `theorem` | [multiset_prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/multiset-prod-x-sub-c-coeff-card-pred--6a1395bdfb6f8c73afe84957.md) | 266 | `result-track:6a1395bdfb6f8c73afe84957d0453fe86d6c5a19600ff24441afb34b651f7815` |
| 29 | `theorem` | [prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/prod-x-sub-c-coeff-card-pred--87204d69e4c79844ced9a36a.md) | 282 | `result-track:87204d69e4c79844ced9a36aa40e14f307a95edb9e369c2f3ba5044b018c1126` |
| 30 | `lemma` | [natDegree_multiset_prod_X_sub_C_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-multiset-prod-x-sub-c-eq-card--f32f8117c780d2138bad6a14.md) | 289 | `result-track:f32f8117c780d2138bad6a14c52b4cc09d80b0f656c2d289297d8e150fab7d59` |
| 31 | `lemma` | [natDegree_finset_prod_X_sub_C_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-finset-prod-x-sub-c-eq-card--d84df46437dcdb46d1539a0a.md) | 296 | `result-track:d84df46437dcdb46d1539a0a31b05bd0a49654b59afb1290bbcf6001d69c1463` |
| 32 | `theorem` | [degree_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-list-prod--10137741066345fd42498483.md) | 313 | `result-track:10137741066345fd4249848303ca5246e5f653f666c5d81e16275ee3129b9f6a` |
| 33 | `theorem` | [natDegree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-prod--69a294edc12aa6904ae5095b.md) | 328 | `result-track:69a294edc12aa6904ae5095b3d1399ecb1bb1597b48afa21bb3c5f11192700e7` |
| 34 | `theorem` | [natDegree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/natdegree-multiset-prod--2046ddeea9f1873202de21d2.md) | 335 | `result-track:2046ddeea9f1873202de21d223c8f939359092c0d1e9a53d8e1547bc7ce84e45` |
| 35 | `theorem` | [degree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-multiset-prod--dc999c41563eb6cf3cb5d439.md) | 346 | `result-track:dc999c41563eb6cf3cb5d439cd7eb07d9ecae5ba49b2a07d2b43a786089b0f8d` |
| 36 | `theorem` | [degree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/degree-prod--d7a6262e22f6e10bea9d3952.md) | 352 | `result-track:d7a6262e22f6e10bea9d39526a05d2436d804308c2bdd3ffc61659d5c7d272c1` |
| 37 | `theorem` | [leadingCoeff_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/leadingcoeff-multiset-prod--f2719458d8af6baf7506053d.md) | 361 | `result-track:f2719458d8af6baf7506053d5cbcc2562a823b4145e8d10421dcf80710ab9620` |
| 38 | `theorem` | [leadingCoeff_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/declarations/leadingcoeff-prod--354f0a0251d713049a414db1.md) | 372 | `result-track:354f0a0251d713049a414db1b2690c31383f518f6c70e60ce8ac82295c6753cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
