# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3652f6c6faba437b246f1e3972df64bb9e51e284",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3652f6c6faba437b246f1e3972df64bb9e51e284`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finset.Nonempty.csSup_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-nonempty-cssup-eq-max--25e5c9f29f94d6847bf9589a.md) | 24 | `result-track:25e5c9f29f94d6847bf9589aa248e6b606df5778549040fb7942215590f2ce3b` |
| 2 | `theorem` | [Finset.Nonempty.csInf_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-nonempty-csinf-eq-min--0e7356a2a84fbe2c10197b8a.md) | 27 | `result-track:0e7356a2a84fbe2c10197b8a58143a3adc10b7f03ad9d0da1a907d612474cc97` |
| 3 | `theorem` | [Finset.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-nonempty-cssup-mem--1a5e00ea60e2413372b5d608.md) | 30 | `result-track:1a5e00ea60e2413372b5d608d3d20cd78daa9392ad4537ce52d55d25c364980f` |
| 4 | `theorem` | [Finset.Nonempty.csInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-nonempty-csinf-mem--1d81f3bf03f7514df72eaf57.md) | 34 | `result-track:1d81f3bf03f7514df72eaf5723cf4f133622015f06278b3467847654d1e8ab5d` |
| 5 | `theorem` | [Set.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-nonempty-cssup-mem--9ec32da17ed7e3b2f942a87b.md) | 37 | `result-track:9ec32da17ed7e3b2f942a87b6894d4c0e4d524ee861b9ad896c08c1e9ff9aaf6` |
| 6 | `theorem` | [Set.Nonempty.csInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-nonempty-csinf-mem--2105dc31f651dcca5b7b1e01.md) | 41 | `result-track:2105dc31f651dcca5b7b1e01174d69571f882a1b2447dadaf16bbfc0b18e71a1` |
| 7 | `theorem` | [Set.Finite.csSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-finite-cssup-lt-iff--3448b379f62656d3d231de51.md) | 44 | `result-track:3448b379f62656d3d231de51248d8bb3f678e40635ec7f0ed2f3779200c8b6b4` |
| 8 | `theorem` | [Set.Finite.lt_csInf_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-finite-lt-csinf-iff--2ec6b82420c10495fc904aba.md) | 47 | `result-track:2ec6b82420c10495fc904aba56e7c04f4857dbc09dd5d27fdd91409a44fb2ac7` |
| 9 | `theorem` | [Finset.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-cisup-eq-max-image--978a606779ed6ada769ccdba.md) | 52 | `result-track:978a606779ed6ada769ccdbabffbc3bc771801c4fa3bd9deea49a2db5b1fecdd` |
| 10 | `theorem` | [Finset.ciInf_eq_min'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-ciinf-eq-min-image--98802672d814220cfbede9de.md) | 71 | `result-track:98802672d814220cfbede9de7aa7bed6db4699056b202c51a1a62ab780721885` |
| 11 | `theorem` | [Finset.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-cisup-mem-image--ae676bbdece0745b8dbb4dfc.md) | 81 | `result-track:ae676bbdece0745b8dbb4dfc8315ec1b9d295febd397010c24d1f0e6a731258c` |
| 12 | `theorem` | [Finset.ciInf_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-ciinf-mem-image--a3873401c78cdb7c7aef7ce5.md) | 86 | `result-track:a3873401c78cdb7c7aef7ce5725d6504833015f59b896ed2325d2735132a9219` |
| 13 | `theorem` | [Set.Finite.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-finite-cisup-mem-image--2bfc643bf10b4f6921ec0f13.md) | 91 | `result-track:2bfc643bf10b4f6921ec0f13d1941845cea56a27a690ecf5dd6dae20964bef3f` |
| 14 | `theorem` | [Set.Finite.ciInf_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-finite-ciinf-mem-image--8964ecaedfeab39d4e59e216.md) | 97 | `result-track:8964ecaedfeab39d4e59e2162ae18f5a5ee51939a2424365f8229c5d1a4bed97` |
| 15 | `theorem` | [Set.Finite.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-finite-cisup-lt-iff--6d026286bd64216c4a2f9130.md) | 103 | `result-track:6d026286bd64216c4a2f91307b466021860ef7c3f05ea296af5ebd46a6f92c55` |
| 16 | `theorem` | [Set.Finite.lt_ciInf_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-finite-lt-ciinf-iff--c657f3782ff53dc0db44433f.md) | 128 | `result-track:c657f3782ff53dc0db44433ffe98a04d9dc819e9e2809c64f2a8ddf2a3f4e7b2` |
| 17 | `lemma` | [List.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/list-isup-mem-map-of-exists-ssup-empty-le--9aea8e35594bd37634b6a0cb.md) | 155 | `result-track:9aea8e35594bd37634b6a0cbf70b73a9ee22417c85d02571f606a1b2379b6195` |
| 18 | `lemma` | [List.iInf_mem_map_of_exists_le_sInf_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/list-iinf-mem-map-of-exists-le-sinf-empty--12fb9fb2cf081ca994e01931.md) | 161 | `result-track:12fb9fb2cf081ca994e01931acfbc49618a5b578a3a98062d781446af30ff5f3` |
| 19 | `lemma` | [Multiset.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/multiset-isup-mem-map-of-exists-ssup-empty-le--2dc8c56ce560cd314d8b8bf8.md) | 167 | `result-track:2dc8c56ce560cd314d8b8bf8b5815ae2dee55388926668880ee2a80496795a2e` |
| 20 | `lemma` | [Multiset.iInf_mem_map_of_exists_le_sInf_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/multiset-iinf-mem-map-of-exists-le-sinf-empty--b76545ed9b1b18abba19a330.md) | 173 | `result-track:b76545ed9b1b18abba19a330b2ece2840e564adae9a139fc450f981d55044bc5` |
| 21 | `theorem` | [exists_eq_ciSup_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/exists-eq-cisup-of-finite--e2e873753dbf32df26175738.md) | 179 | `result-track:e2e873753dbf32df26175738004e9704c74feee2ac8ca10ff3faa58a7bccc904` |
| 22 | `theorem` | [exists_eq_ciInf_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/exists-eq-ciinf-of-finite--989fd3c1ef437af0572d7bf0.md) | 182 | `result-track:989fd3c1ef437af0572d7bf0c6eae403f70aea2256615436a11d8ba260a31cf3` |
| 23 | `theorem` | [sup'_eq_csSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/sup-eq-cssup-image--e5701bca78475d719a59fa6a.md) | 201 | `result-track:e5701bca78475d719a59fa6ab5158e074af83fc1695c0054a99d42b5f7af0271` |
| 24 | `theorem` | [inf'_eq_csInf_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/inf-eq-csinf-image--8062460f0473b3d74dab96b8.md) | 206 | `result-track:8062460f0473b3d74dab96b8fbb857919a0047462ca99b12d14e372206fc7801` |
| 25 | `theorem` | [sup'_id_eq_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/sup-id-eq-cssup--732bd594a808d0343d275e41.md) | 210 | `result-track:732bd594a808d0343d275e4120035dc5a741fb1ba3b7b7b5b8fce30535955411` |
| 26 | `theorem` | [inf'_id_eq_csInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/inf-id-eq-csinf--cb79825860286fe0f317a739.md) | 213 | `result-track:cb79825860286fe0f317a7392112647727bb6fad3a7d5d781316379e72308faf` |
| 27 | `lemma` | [sup'_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/sup-univ-eq-cisup--66bb3f7d703588c97094bf80.md) | 218 | `result-track:66bb3f7d703588c97094bf8058de1d2f1bd19ebc37799962a3b609ec0bcc6b3f` |
| 28 | `lemma` | [inf'_univ_eq_ciInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/inf-univ-eq-ciinf--46978add4c369f77294a5b0c.md) | 221 | `result-track:46978add4c369f77294a5b0c604d1decb7c9e70865e30b0d2627f623f6a98cc6` |
| 29 | `lemma` | [sup_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/sup-univ-eq-cisup--882eca8c18407dec3b3b6a03.md) | 229 | `result-track:882eca8c18407dec3b3b6a0348732529844f571eea329b94b61f8ba6125ddc23` |
| 30 | `theorem` | [Finset.Nonempty.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-nonempty-cisup-eq-max-image--d6c85af01b756d058cbb08fb.md) | 242 | `result-track:d6c85af01b756d058cbb08fb018b312b0807f65262e9a26fd4a10addfe9d05f2` |
| 31 | `theorem` | [Finset.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/finset-nonempty-cisup-mem-image--1e8e29229a699456f7b88226.md) | 247 | `result-track:1e8e29229a699456f7b88226024875fc618fbdb4aed699033f66f71dc0db7f56` |
| 32 | `theorem` | [Set.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-nonempty-cisup-mem-image--d3e416f1f34f638189c907dc.md) | 251 | `result-track:d3e416f1f34f638189c907dccf98f2c37ad15a17ada1cc456b9d5124f20a1a89` |
| 33 | `theorem` | [Set.Nonempty.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/set-nonempty-cisup-lt-iff--e05c7b8c071107adc23366b4.md) | 255 | `result-track:e05c7b8c071107adc23366b4281d421465627e00e7da612a5222a56a7b5e1ccb` |
| 34 | `lemma` | [List.iSup_mem_map_of_ne_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/list-isup-mem-map-of-ne-nil--9e870982361fff9005f3f31f.md) | 261 | `result-track:9e870982361fff9005f3f31f68c9a698922c476c71d7acfbbf13d5a6d12e2407` |
| 35 | `lemma` | [Multiset.iSup_mem_map_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantc1ae2b571b3ae71a053c7bbfab26c2a6ce841221f21baa76bc2389d814eccc26.lean/declarations/multiset-isup-mem-map-of-ne-zero--355359412281ffde60aa1792.md) | 265 | `result-track:355359412281ffde60aa179205bd39ce07a487518f2844032dbb3e2c49f06593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
