# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.NumberField.Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f31734cef92e81cc9730af18839c0b50fcfc9003",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f31734cef92e81cc9730af18839c0b50fcfc9003`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FiniteSupport.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Lattice` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Height.MvPolynomial` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multisetInfinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/multisetinfiniteplace--c30e3eb4c90d639d64e4e3e9.md) | 60 | `declaration-track:c30e3eb4c90d639d64e4e3e945eca57961540cdf8f91e2dc119f035d3209659f` |
| 2 | `lemma` | [mem_multisetInfinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/mem-multisetinfiniteplace--cd84a8b2cb66a7e958445c14.md) | 64 | `result-track:cd84a8b2cb66a7e958445c14448dd8bb8e0e06510e80b1f506b9cc829a482fbd` |
| 3 | `lemma` | [count_multisetInfinitePlace_eq_mult](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/count-multisetinfiniteplace-eq-mult--ef30076a6d3625c6ab4f8a83.md) | 69 | `result-track:ef30076a6d3625c6ab4f8a830cd6066209d0e4b66a88112f8a216dfc69d11600` |
| 4 | `lemma` | [prod_multisetInfinitePlace_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/prod-multisetinfiniteplace-eq--cdf87be33060789133600d5c.md) | 77 | `result-track:cdf87be33060789133600d5c3ae701bf2c5076cd198a5934efa5983659bc2ab4` |
| 5 | `instance` | [instAdmissibleAbsValues](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/instadmissibleabsvalues--c4994222f23bfa869094b94f.md) | 86 | `declaration-track:c4994222f23bfa869094b94f0e07b4cc86b2345f0064e2a8fd30a02107f102d1` |
| 6 | `lemma` | [prod_archAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/prod-archabsval-eq--3ea9529ae2c6f396d024b3bc.md) | 95 | `result-track:3ea9529ae2c6f396d024b3bc3320fc0a4f3675588a5255d4e4e3c55c8be3c493` |
| 7 | `lemma` | [prod_nonarchAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/prod-nonarchabsval-eq--48cc8f2ee3c3f5f96a61c60b.md) | 99 | `result-track:48cc8f2ee3c3f5f96a61c60bfab63b4e2539bc9606e300ae2ab54dad32205365` |
| 8 | `lemma` | [sum_archAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/sum-archabsval-eq--476136b5496ba28838f21f8b.md) | 105 | `result-track:476136b5496ba28838f21f8bc3dabef156d01f4a3fb983457d7e6772158ca529` |
| 9 | `lemma` | [sum_nonarchAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/sum-nonarchabsval-eq--773f4de4ec18a401e10fbf4e.md) | 115 | `result-track:773f4de4ec18a401e10fbf4e0384aaf3201eedf2f48749cf991b1c6f744003db` |
| 10 | `lemma` | [mulHeight₁_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/mulheight-eq--c17ae6055d33764fbacdd12a.md) | 120 | `result-track:c17ae6055d33764fbacdd12aa55f0e4bb7c3d240ba081e9e7cfe1ae8dcdf019e` |
| 11 | `lemma` | [logHeight₁_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/logheight-eq--92b8cb96aecb63e4a16066eb.md) | 128 | `result-track:92b8cb96aecb63e4a16066ebec1188ef8b2df6672c5aba5bec998096bf69abe3` |
| 12 | `lemma` | [mulHeight_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/mulheight-eq--ff10fc19a6ab085e63505c65.md) | 136 | `result-track:ff10fc19a6ab085e63505c659d6e0a193a490839da543ea43618478f9ff7f5f0` |
| 13 | `def` | [absMulHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/absmulheight--8f555b534edac513105b069d.md) | 145 | `declaration-track:8f555b534edac513105b069d036a5c2ac0fb96d9e1aebc6ec32e681f8488f471` |
| 14 | `def` | [absLogHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/abslogheight--6db3af9bdb2422507e50677d.md) | 154 | `declaration-track:6db3af9bdb2422507e50677d914ff15d4ab0ee7d416a35b715aabff27cdd0846` |
| 15 | `lemma` | [totalWeight_eq_sum_mult](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/totalweight-eq-sum-mult--ca905b6304f9f4425cdd5425.md) | 158 | `result-track:ca905b6304f9f4425cdd542563382298ce88b2438ab7e63c2939eddb04eb3c34` |
| 16 | `lemma` | [totalWeight_eq_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/totalweight-eq-finrank--2f5f000dc6f20dfca1809a06.md) | 166 | `result-track:2f5f000dc6f20dfca1809a0642e56752fe66b0df550578f4978e433c445cb4df` |
| 17 | `lemma` | [totalWeight_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/totalweight-pos--def4f94cd11080ed72128283.md) | 171 | `result-track:def4f94cd11080ed721282838242be7956b6df8e7cbb7ac581fc1938ba63c814` |
| 18 | `lemma` | [absNorm_mul_finprod_finitePlace_eq_one_aux](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/absnorm-mul-finprod-finiteplace-eq-one-aux--571f13ba7c9c36307677e45f.md) | 181 | `result-track:571f13ba7c9c36307677e45fae24ddbc204fa79c907282d93c67a957ad36dcfd` |
| 19 | `lemma` | [absNorm_mul_finprod_finitePlace_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/absnorm-mul-finprod-finiteplace-eq-one--e2f50552c322d42da50a45af.md) | 208 | `result-track:e2f50552c322d42da50a45afeb2da0812823252fc83efd5adbbcf26793af8a5f` |
| 20 | `lemma` | [relIndex_span_span_nat_mul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/relindex-span-span-nat-mul--01c6268cba6ac39115790e33.md) | 248 | `result-track:01c6268cba6ac39115790e337e5e50103cb29e2eb643e50e66ec08d107fdea09` |
| 21 | `lemma` | [relIndex_span_span_eq_relIndex_span_span](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/relindex-span-span-eq-relindex-span-span--06d0178bf569acb5719e0905.md) | 261 | `result-track:06d0178bf569acb5719e0905732a45222d11e3378438342537a364c65c80dcd4` |
| 22 | `lemma` | [exists_nat_ne_zero_exists_integer_mul_eq_and_absNorm_span_eq_pow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/exists-nat-ne-zero-exists-integer-mul-eq-and-absnorm-span-eq-pow--a00946501ecf0a3e515f0653.md) | 270 | `result-track:a00946501ecf0a3e515f0653945ef925c4b73ee53e8b3861abf225fb15428584` |
| 23 | `lemma` | [one_le_pow_totalWeight_mul_finprod](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/one-le-pow-totalweight-mul-finprod--486d367206ca48f83e0e2c54.md) | 293 | `result-track:486d367206ca48f83e0e2c54b4eb0d576e2bf9c62b728153c36ff31d3116d345` |
| 24 | `lemma` | [exists_nat_le_mulHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/exists-nat-le-mulheight--3df8edc0f23c4ba88dea89cf.md) | 314 | `result-track:3df8edc0f23c4ba88dea89cf04bf7ab5f3ab5aff2c5e5ae8b2c450d66f0bb05a` |
| 25 | `lemma` | [natDenominator_le_mulHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/natdenominator-le-mulheight--47d5de2c9e48bb758f549fb3.md) | 332 | `result-track:47d5de2c9e48bb758f549fb3a1fe080f1c459e9f3a7366c97993983498478cfc` |
| 26 | `lemma` | [pow_totalWeight_sub_one_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/pow-totalweight-sub-one-eq--0cf2d908221f8b77ac27dab7.md) | 337 | `result-track:0cf2d908221f8b77ac27dab7ec6bbc50f1e6378582b77e28193887001262b64d` |
| 27 | `lemma` | [infinitePlace_apply_le_of_prod_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/infiniteplace-apply-le-of-prod-le--063db603da9994bdaa0ddc11.md) | 344 | `result-track:063db603da9994bdaa0ddc117155c4eb62a07aa1525737c91ccecd6b73568527` |
| 28 | `lemma` | [finite_setOfPred_prod_infinitePlace_iSup_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/finite-setofpred-prod-infiniteplace-isup-le--a0d24872e864242c8f113448.md) | 364 | `result-track:a0d24872e864242c8f11344884b8f29024847955f19ac71f93035d516ddd835d` |
| 29 | `lemma` | [finite_setOfPred_mulHeight_nat_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/finite-setofpred-mulheight-nat-le--5979305bd917dfd893ba6766.md) | 382 | `result-track:5979305bd917dfd893ba67660e0487d2d25b83cefb55845904e63f590c00cb36` |
| 30 | `lemma` | [finite_setOfPred_isIntegral_nat_mul_and_mulHeight₁_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/finite-setofpred-isintegral-nat-mul-and-mulheight-le--5359819429565bb9e08cef69.md) | 400 | `result-track:5359819429565bb9e08cef695be732dd77d39d9704e2816bf639a9feafb8cf2d` |
| 31 | `theorem` | [finite_setOfPred_mulHeight₁_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/finite-setofpred-mulheight-le--0312dcf0a92d1cc46c904317.md) | 419 | `result-track:0312dcf0a92d1cc46c90431752340524210680d720cd73f96d7003646790f1ae` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/instance--cd5467c1cc90840d001e9206.md) | 434 | `declaration-track:cd5467c1cc90840d001e92068172bcf4acb2b1dc2321afdd672cf60a39691c41` |
| 33 | `theorem` | [finite_setOfPred_logHeight₁_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/finite-setofpred-logheight-le--f307aa30ccafa0ff2d8b89dd.md) | 440 | `result-track:f307aa30ccafa0ff2d8b89dd1e6e955608fd43b44b03b4c6818db6ac7adaea7a` |
| 34 | `def` | [evalHeightTotalWeight](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/evalheighttotalweight--4e155b40a5dec3fcbac3166c.md) | 461 | `declaration-track:4e155b40a5dec3fcbac3166c1e0f3fc7ee08da02662d2d83bc4ea4d2de35a74e` |
| 35 | `lemma` | [iSup_finitePlace_apply_eq_one_of_gcd_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/isup-finiteplace-apply-eq-one-of-gcd-eq-one--bb08836504979d3e6eed1c0c.md) | 494 | `result-track:bb08836504979d3e6eed1c0c52204adcb4b7924fb566fdb3ec062e7650f1f491` |
| 36 | `lemma` | [mulHeight_eq_max_abs_of_gcd_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/mulheight-eq-max-abs-of-gcd-eq-one--9f823e6c2750ca0beb0dbb55.md) | 511 | `result-track:9f823e6c2750ca0beb0dbb55cf7ef349efa359766fdb5e89fb1f8f5275c1a532` |
| 37 | `lemma` | [logHeight_eq_max_abs_of_gcd_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/logheight-eq-max-abs-of-gcd-eq-one--853de3c66997b7398ed0b8f4.md) | 525 | `result-track:853de3c66997b7398ed0b8f4efc5a6c736d52aa073edc4f5880664e81941ec57` |
| 38 | `lemma` | [mulHeight_self_one_eq_mulHeight_num_den](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/mulheight-self-one-eq-mulheight-num-den--c5561dfb23a6c527f77cebcf.md) | 533 | `result-track:c5561dfb23a6c527f77cebcfbdf7d2d46ae1d95f4dd23438566247495a4d2803` |
| 39 | `lemma` | [mulHeight₁_eq_max](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/mulheight-eq-max--39a8a2b3e17851ae2fc2741d.md) | 541 | `result-track:39a8a2b3e17851ae2fc2741dd26cca926fe5eb354e5018051588610f4363b65a` |
| 40 | `lemma` | [logHeight₁_eq_log_max](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/logheight-eq-log-max--5da0e2800f9e812925c32d3f.md) | 558 | `result-track:5da0e2800f9e812925c32d3f91682783b32287ed24032830c8083bd734dd365c` |
| 41 | `theorem` | [mulHeight₁_natCast](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/mulheight-natcast--0f30cec43d034fd14c599910.md) | 562 | `result-track:0f30cec43d034fd14c599910360550d7ec9846e8a273db400375f607d19d7461` |
| 42 | `theorem` | [logHeight₁_natCast](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/declarations/logheight-natcast--422289d5a8e3cc3be59cc61c.md) | 567 | `result-track:422289d5a8e3cc3be59cc61ccf569bb540148a7e83096cdbbe5e9b54de5de69b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
