# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b8090c47f12a57da7e9dc35cddd834eeebe412b",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b8090c47f12a57da7e9dc35cddd834eeebe412b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.RootLinearIndependentLtAleph0OfFiniteDimensional.Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.LinearIndependent.lt_aleph0_of_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearindependentltaleph0offinited--e9a18d42595fe4f4ad91d0ff.md) | 56 | `result-track:e9a18d42595fe4f4ad91d0ffb5e974fd4c58e0a2d766f530c7f47a17cadf4c03` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.RootLinearIndependentLtAleph0OfFiniteDimensional.Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.Submodule.eq_top_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearindependentltaleph0offinited--1bb3c30476e8c443a5067f40.md) | 62 | `result-track:1bb3c30476e8c443a5067f40dc0557478340b53f0290ab61a92ba6b61eeb587a` |
| 3 | `theorem` | [exists_relation_sum_zero_pos_coefficient_of_finrank_succ_lt_card](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/exists-relation-sum-zero-pos-coefficient-of-finrank-succ-lt-card--ff3473474e77aaccb3419714.md) | 98 | `result-track:ff3473474e77aaccb3419714a755a5a5a9396e6ec1e5234b6040f7cf2db99072` |
| 4 | `def` | [basisSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/basissingleton--c01b8df08f8d6bdc80a4d198.md) | 110 | `declaration-track:c01b8df08f8d6bdc80a4d1989605ef99720f1f12d209c0903417d7592896b549` |
| 5 | `theorem` | [basisSingleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/basissingleton-apply--48fdbd00f6d28c532517e159.md) | 132 | `result-track:48fdbd00f6d28c532517e159d365bb36f6fc4101cf3b20b77d80b48dffbf4ffc` |
| 6 | `theorem` | [range_basisSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/range-basissingleton--3b1512290f97b6c33d72bace.md) | 138 | `result-track:3b1512290f97b6c33d72bace5be9de39211367f178b943f90ee40fe25d53825c` |
| 7 | `theorem` | [FiniteDimensional.of_rank_eq_nat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-of-rank-eq-nat--080bd26a1fd184fcf0b9f2e3.md) | 149 | `result-track:080bd26a1fd184fcf0b9f2e31c780cb2e4ae050411ae66d9706b6e473a25e94a` |
| 8 | `theorem` | [FiniteDimensional.of_rank_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-of-rank-eq-zero--5741e7fc1b2fc5cb4253c700.md) | 153 | `result-track:5741e7fc1b2fc5cb4253c700471c295171adefab02a0c7727536f147ab0f831d` |
| 9 | `theorem` | [FiniteDimensional.of_rank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-of-rank-eq-one--151e29853baae660ef6a33ae.md) | 156 | `result-track:151e29853baae660ef6a33ae53d7246237f4314b2d47282e34f61662c2f78be1` |
| 10 | `instance` | [finiteDimensional_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-bot--995b98673a6f4304cf4ec7e5.md) | 161 | `declaration-track:995b98673a6f4304cf4ec7e5b1978ead1120e119fb2c5df51fac802fc82185ae` |
| 11 | `theorem` | [finiteDimensional_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-of-le--72d31b5ce83a35049f63f7ac.md) | 178 | `result-track:72d31b5ce83a35049f63f7ac410d1cc0df92f9931d68ebfbe4ad7d685ad66e0d` |
| 12 | `instance` | [finiteDimensional_inf_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-inf-left--6014f82a30bbb2a057121f4f.md) | 184 | `declaration-track:6014f82a30bbb2a057121f4f2d2a33b7c3dc8fc4e978da04a9926eca00a0dea6` |
| 13 | `instance` | [finiteDimensional_inf_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-inf-right--8e0667aa3ce6ef915ea5c11b.md) | 190 | `declaration-track:8e0667aa3ce6ef915ea5c11bcac97f6724db2e345ca7a3eb9ef4eef30f908b92` |
| 14 | `instance` | [finiteDimensional_sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-sup--156d76806d76a0b3dad8c79f.md) | 196 | `declaration-track:156d76806d76a0b3dad8c79ff3c768f92e77dde6f209c714cfe29135df9a6a92` |
| 15 | `instance` | [finiteDimensional_finset_sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-finset-sup--547e62b36f1881ca9a43bf6b.md) | 207 | `declaration-track:547e62b36f1881ca9a43bf6b2216dd48f270d200f3d6c2b4959a06c3b01721f3` |
| 16 | `instance` | [finiteDimensional_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-isup--0b7fbbf748ddce791f4efbb9.md) | 217 | `declaration-track:0b7fbbf748ddce791f4efbb956bf6daea8a8ad8a4c85fe2f1143848240e772e7` |
| 17 | `instance` | [finiteDimensional_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-finsupp--9e14be4bc3c679ad1617d6ba.md) | 231 | `declaration-track:9e14be4bc3c679ad1617d6bad27bff45b58d66203a918b1b03b3b33f12105c24` |
| 18 | `theorem` | [eq_of_le_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/eq-of-le-of-finrank-le--346074787adcdcfeedaa38ee.md) | 242 | `result-track:346074787adcdcfeedaa38ee13eb4adbfff06df843ff34eeafe1145635856208` |
| 19 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/eq-of-le-of-finrank-eq--ff475ce00c6b4154b10a0c46.md) | 250 | `result-track:ff475ce00c6b4154b10a0c468fdd6b90b53af7eebafd8d53911a8666d648ffe7` |
| 20 | `theorem` | [eq_of_le_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/eq-of-le-of-finrank-le--73c65fe8b83f45b9630350ee.md) | 263 | `result-track:73c65fe8b83f45b9630350eeb107a40347640a57f5fda2dfe051c53a8c6f1280` |
| 21 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/eq-of-le-of-finrank-eq--483314b1281111168b7a5fb5.md) | 269 | `result-track:483314b1281111168b7a5fb5246566b6f44161173fe41c11b4b1dc1c9a459d7f` |
| 22 | `theorem` | [surjective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/surjective-of-injective--bf2e7df69447b74b5c1fac2f.md) | 284 | `result-track:bf2e7df69447b74b5c1fac2fb0539ea5cc7a315555532b0fd20ec65e5bfa44ce` |
| 23 | `theorem` | [finiteDimensional_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-of-surjective--fef4dddae737bb22dc27675d.md) | 291 | `result-track:fef4dddae737bb22dc27675d126b5baf509332de4322e5068183d15d2ba52f1a` |
| 24 | `instance` | [finiteDimensional_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-range--71b0cd6de49cf6eff4aef7b6.md) | 296 | `declaration-track:71b0cd6de49cf6eff4aef7b6b1e37ae9d34e730bd89318eb733c67a0039ccba5` |
| 25 | `theorem` | [injective_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/injective-iff-surjective--259b3826389e4d858fa7dfed.md) | 301 | `result-track:259b3826389e4d858fa7dfed3dc618a950b265cbaa4af85ae84544e2ced9ce29` |
| 26 | `lemma` | [injOn_iff_surjOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/injon-iff-surjon--bce56910a0b0fdb6eb7bfa69.md) | 309 | `result-track:bce56910a0b0fdb6eb7bfa69906cae046ea3bb191af3e09dceeaffe423985cae` |
| 27 | `theorem` | [ker_eq_bot_iff_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/ker-eq-bot-iff-range-eq-top--3202cc0ceb492fe7e70feb32.md) | 316 | `result-track:3202cc0ceb492fe7e70feb32b93e0ece740ccee181746a062cd2dae5d7011801` |
| 28 | `theorem` | [mul_eq_one_of_mul_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/mul-eq-one-of-mul-eq-one--dacbf1053155789eb96b84bc.md) | 322 | `result-track:dacbf1053155789eb96b84bcd48b991758cad8585f62b010a4b6fcf3ebe3314e` |
| 29 | `theorem` | [mul_eq_one_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/mul-eq-one-comm--a359f7e1937f39424c054670.md) | 333 | `result-track:a359f7e1937f39424c054670421f6b8ee5829ff74b634f55c610c6802ed4aa6f` |
| 30 | `theorem` | [comp_eq_id_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/comp-eq-id-comm--359010f58877913a6529679c.md) | 338 | `result-track:359010f58877913a6529679c90e89cfabf48c2a71008e41d133769107a928415` |
| 31 | `theorem` | [comap_eq_sup_ker_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/comap-eq-sup-ker-of-disjoint--fa427bd28fa1958c2b065b4b.md) | 341 | `result-track:fa427bd28fa1958c2b065b4bf6a9d476ff2cac9e0b2d691648a6318886835211` |
| 32 | `theorem` | [ker_comp_eq_of_commute_of_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/ker-comp-eq-of-commute-of-disjoint-ker--68ccd29b2a93d48b26f71855.md) | 350 | `result-track:68ccd29b2a93d48b26f718550f294c6b92abd53238db50e61537d578b4aaaec4` |
| 33 | `theorem` | [ker_noncommProd_eq_of_supIndep_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/ker-noncommprod-eq-of-supindep-ker--5d8349c91c269311cf7897e2.md) | 357 | `result-track:5d8349c91c269311cf7897e2666ea303b1316fd79e9934775d6eb55cafacb3ac` |
| 34 | `def` | [ofInjectiveEndo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/ofinjectiveendo--5fb929864a57d378b01ffc31.md) | 386 | `declaration-track:5fb929864a57d378b01ffc31e9d83ec427d5854e60fb5f505a37c71728385161` |
| 35 | `theorem` | [coe_ofInjectiveEndo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/coe-ofinjectiveendo--c5bcd6c9d6497b65106e29d1.md) | 390 | `result-track:c5bcd6c9d6497b65106e29d1bc0a1cff75e6cb7431dacd0d95ffe98496976bfe` |
| 36 | `theorem` | [ofInjectiveEndo_right_inv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/ofinjectiveendo-right-inv--c164c6375432efaf366884bd.md) | 395 | `result-track:c164c6375432efaf366884bdce5325f07815c7b0987a6d48c7f3fee2c65f2e43` |
| 37 | `theorem` | [ofInjectiveEndo_left_inv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/ofinjectiveendo-left-inv--d90d2d277dd1cfd1deab42fe.md) | 400 | `result-track:d90d2d277dd1cfd1deab42fea87cf1dd2d33f3f81805023a9f46b7cca604cd56` |
| 38 | `theorem` | [isUnit_iff_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/isunit-iff-ker-eq-bot--55fad45b2cf56235602e6f6f.md) | 410 | `result-track:55fad45b2cf56235602e6f6f7f5a8f08fd5ee0e47dd751512ab7e471080b14f0` |
| 39 | `theorem` | [isUnit_iff_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/isunit-iff-range-eq-top--d99f402947078869703cf29c.md) | 421 | `result-track:d99f402947078869703cf29cde33c27cf20b63ac9c437fbcf36a545dd9039ced` |
| 40 | `theorem` | [finrank_zero_iff_forall_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finrank-zero-iff-forall-zero--5f5f5346d3122bc311ab6e17.md) | 433 | `result-track:5f5f5346d3122bc311ab6e174aaeca1c1a26aa1c3f248aabfabadbcb9994d017` |
| 41 | `def` | [basisOfFinrankZero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/basisoffinrankzero--7fb1ddf6ecea5039761bdeab.md) | 437 | `declaration-track:7fb1ddf6ecea5039761bdeabbff4cefca32ab023d816c352d79597a253d6a5ee` |
| 42 | `lemma` | [FiniteDimensional.exists_mul_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-exists-mul-eq-one--6d6f29728eb4078a551dbc89.md) | 446 | `result-track:6d6f29728eb4078a551dbc89abc5cefefd0f2e45b762ce4b83977191679506b6` |
| 43 | `def` | [divisionRingOfFiniteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/divisionringoffinitedimensional--8a70a4f03c7d97945f80eb47.md) | 453 | `declaration-track:8a70a4f03c7d97945f80eb47cafc373e136995f2359957b117cd4fdeff27a9fe` |
| 44 | `lemma` | [FiniteDimensional.isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-isunit--c4fa8badc62db0f4ed540684.md) | 468 | `result-track:c4fa8badc62db0f4ed5406844402e53019fdccb6fe0f389265dcb6d953631b50` |
| 45 | `def` | [fieldOfFiniteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/fieldoffinitedimensional--94c1201988a810c33f9bf57b.md) | 473 | `declaration-track:94c1201988a810c33f9bf57bc3b37dbe7288ff4d4127075450b18ebc10c63312` |
| 46 | `theorem` | [finrank_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finrank-span-singleton--d2ebda0064bd2875e6caf01a.md) | 487 | `result-track:d2ebda0064bd2875e6caf01a7b1322897052ef78601fa7d33db0d0729bccc94c` |
| 47 | `lemma` | [exists_smul_eq_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/exists-smul-eq-of-finrank-eq-one--b7babf7b648e44b315393b97.md) | 496 | `result-track:b7babf7b648e44b315393b97496b874589f78881eeab0fe3534ac789c14e3f83` |
| 48 | `theorem` | [Set.finrank_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/set-finrank-mono--9b07f0ac9b7906729016d635.md) | 507 | `result-track:9b07f0ac9b7906729016d635f8f8980f80456b3bfebb67ea5b94df104da9a19a` |
| 49 | `theorem` | [finrank_eq_one_iff_of_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finrank-eq-one-iff-of-nonzero--8e371b14e7ccd64d127b17cc.md) | 522 | `result-track:8e371b14e7ccd64d127b17cc3b711a2d6a3d6738cd35ed08db0332110af0ab99` |
| 50 | `theorem` | [finrank_eq_one_iff_of_nonzero'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finrank-eq-one-iff-of-nonzero--db8741dbed9d78f0065ec84f.md) | 531 | `result-track:db8741dbed9d78f0065ec84f2cf19063df28c35e100ba3a95826712fcb7d58b0` |
| 51 | `theorem` | [surjective_of_nonzero_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/surjective-of-nonzero-of-finrank-eq-one--6e3031f910d26436c06f2ca6.md) | 539 | `result-track:6e3031f910d26436c06f2ca62453bdd339ec029a95080639ff745367100b8551` |
| 52 | `theorem` | [Subalgebra.finiteDimensional_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/subalgebra-finitedimensional-tosubmodule--1bcf80ad206da26b7a121eaa.md) | 559 | `result-track:1bcf80ad206da26b7a121eaaef034210b29b3d87ff9d30b25291ef89718162c7` |
| 53 | `instance` | [FiniteDimensional.finiteDimensional_subalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/finitedimensional-finitedimensional-subalgebra--7f30726482fbe78ecde95597.md) | 566 | `declaration-track:7f30726482fbe78ecde9559779a7f79b594341eeddc7694babfa3901370e0064` |
| 54 | `theorem` | [ker_pow_constant](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf0ae26aea53ca76dd2d98206cbf695469c84a3380a54dbe19651a56ad0bd18de.lean/declarations/ker-pow-constant--abdee4679d124c3e0aee5962.md) | 578 | `result-track:abdee4679d124c3e0aee596299cf6a46f6dc7d7382d3eba02589c21b21eae079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
