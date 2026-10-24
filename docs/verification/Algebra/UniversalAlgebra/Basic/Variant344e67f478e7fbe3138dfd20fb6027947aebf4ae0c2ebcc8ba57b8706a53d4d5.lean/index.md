# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25189bd730d25ef1a70a750c36e4febf0178dc5d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25189bd730d25ef1a70a750c36e4febf0178dc5d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.SelfAdjoint` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarRingHom` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ContinuousFunctionalCalculus` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/starorderedring--5f93f368f85059d41bf51bfb.md) | 60 | `declaration-track:5f93f368f85059d41bf51bfb27bea834378fb169f69f5897b74ac74017ace921` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/instance--76466d527b5aebc90d2f5f23.md) | 69 | `declaration-track:76466d527b5aebc90d2f5f231154d72bd7049e8058b8e60ff04e4d9cfc90a5f6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/instance--963e2e8de4197441c026ff65.md) | 78 | `declaration-track:963e2e8de4197441c026ff65b4f62d74251d7b725128f4d25541d00308420dac` |
| 4 | `lemma` | [of_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/of-le-iff--1e07c11b60128cca3cc5fb28.md) | 93 | `result-track:1e07c11b60128cca3cc5fb282d50584129e1a82698637f4fd2b2377fa9e5bc0d` |
| 5 | `lemma` | [of_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/of-nonneg-iff--c8b9f2238a983c186d192af8.md) | 111 | `result-track:c8b9f2238a983c186d192af85aa11a13015eb1b6e003aa1a9614d3528d49ad2f` |
| 6 | `lemma` | [of_nonneg_iff'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/of-nonneg-iff--6b12cabd50e1ef5cae901c02.md) | 126 | `result-track:6b12cabd50e1ef5cae901c02f394b25c0a5dd348d498ab9949089f7f44e7d980` |
| 7 | `theorem` | [nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/nonneg-iff--38cd6bdd52013a6c4989fbf9.md) | 133 | `result-track:38cd6bdd52013a6c4989fbf90c856e505ca5049a3154a2071718a76275cd089b` |
| 8 | `lemma` | [IsSelfAdjoint.mono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/isselfadjoint-mono--d6a87cea9bec56390a2fff91.md) | 143 | `result-track:d6a87cea9bec56390a2fff919d347cf6d3901bad251c188ea2fea6d4d4c9c797` |
| 9 | `lemma` | [IsSelfAdjoint.of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/isselfadjoint-of-nonneg--7ea1e8b6469705015faf0fac.md) | 153 | `result-track:7ea1e8b6469705015faf0fac6809618393fe3e702a74f6bcbaeafb5dc0557afc` |
| 10 | `lemma` | [LE.le.star_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/le-le-star-eq--f9763d5050dda1dc72247d09.md) | 160 | `result-track:f9763d5050dda1dc72247d092f7e2e88040441dd5c8867129a290fc95d7c8522` |
| 11 | `theorem` | [star_mul_self_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-mul-self-nonneg--3862b68b093dc48f0ae5f12e.md) | 164 | `result-track:3862b68b093dc48f0ae5f12e78663f5b5c83c29992de13b19c565b60408f8e3e` |
| 12 | `theorem` | [mul_star_self_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/mul-star-self-nonneg--4cac6f88d4419c98841f237b.md) | 168 | `result-track:4cac6f88d4419c98841f237b6fb0f60c69be969fbb5cfb4da83255f3c5a7e7b3` |
| 13 | `theorem` | [IsSelfAdjoint.mul_self_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/isselfadjoint-mul-self-nonneg--251f6c053f9e716cdb465482.md) | 172 | `result-track:251f6c053f9e716cdb4654824f0d5f224ba85c0983105becf4ba9d5f496fca25` |
| 14 | `theorem` | [conjugate_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-nonneg--0bf41f61f74b398629e52df6.md) | 176 | `result-track:0bf41f61f74b398629e52df6684d2eaa0aa9df83b010f06ed18b7619a81e783a` |
| 15 | `theorem` | [conjugate_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-nonneg--4010323edb0eb7b582df7e95.md) | 189 | `result-track:4010323edb0eb7b582df7e954d0803c8cb5c8ea170ca3694c2be80b8a84f1b4f` |
| 16 | `theorem` | [IsSelfAdjoint.conjugate_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/isselfadjoint-conjugate-nonneg--6817bc7bf045e5d023cc50bc.md) | 193 | `result-track:6817bc7bf045e5d023cc50bcbb9e27a70e230e3fe23694c19620b568fec2bfee` |
| 17 | `theorem` | [conjugate_nonneg_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-nonneg-of-nonneg--1aa719af2e206c4e066d7455.md) | 197 | `result-track:1aa719af2e206c4e066d74553d94dd55e6e0a835e2052026746ac5f0cbf5b8bb` |
| 18 | `theorem` | [conjugate_le_conjugate](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-le-conjugate--e4df2c95bc875c1915ec55df.md) | 201 | `result-track:e4df2c95bc875c1915ec55df36a6c416364e3e657452c23e2be16b26fc6bb3cc` |
| 19 | `theorem` | [conjugate_le_conjugate'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-le-conjugate--419c7874ab9cea35aea5c4a7.md) | 208 | `result-track:419c7874ab9cea35aea5c4a71d9a1d426ffd2db2ead850aaef59b984d016a861` |
| 20 | `theorem` | [IsSelfAdjoint.conjugate_le_conjugate](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/isselfadjoint-conjugate-le-conjugate--ad8bbeaeee42781af9a426d8.md) | 212 | `result-track:ad8bbeaeee42781af9a426d8bb1d60304268915b2991e74581ddbe92d4d3ec8b` |
| 21 | `theorem` | [conjugate_le_conjugate_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-le-conjugate-of-nonneg--8bf747e04b9d56d0996de13c.md) | 216 | `result-track:8bf747e04b9d56d0996de13c694bb6def246f82fcd413e84690071686a035805` |
| 22 | `lemma` | [star_le_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-le-star-iff--76bc2e71cd298a660dd99010.md) | 221 | `result-track:76bc2e71cd298a660dd990107d2b3ecf53ccd85e27fc1cb1ad1c6a0ebf95f04f` |
| 23 | `lemma` | [star_lt_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-lt-star-iff--d34a866c08393d4e50bccc76.md) | 233 | `result-track:d34a866c08393d4e50bccc76cc89bf59b7ed912691ea66dfba2ab1585881c84f` |
| 24 | `lemma` | [star_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-le-iff--4197f8edd3e213aba636a68c.md) | 238 | `result-track:4197f8edd3e213aba636a68c288ecc0d9f443f4c0e39f8c6b70534f92b2ac568` |
| 25 | `lemma` | [star_lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-lt-iff--f106956b3b68b3cccf4cc6c8.md) | 240 | `result-track:f106956b3b68b3cccf4cc6c87b3b0f8c14e6b804465f0a756d87d9bfaae55c5f` |
| 26 | `lemma` | [star_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-nonneg-iff--6ebb5ab1e00437eebdb22349.md) | 243 | `result-track:6ebb5ab1e00437eebdb223493e585e10782bb155d8b05a3b337bcc0daab1002d` |
| 27 | `lemma` | [star_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-nonpos-iff--227bc210b3a321688732c087.md) | 247 | `result-track:227bc210b3a321688732c087fb0eb5239abe4577b4d411b7ccefb55522eaa643` |
| 28 | `lemma` | [star_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-pos-iff--8ebe1bfb960bdf347eda5626.md) | 251 | `result-track:8ebe1bfb960bdf347eda5626110f61115c875c51dfe211bfea01a545525d59fe` |
| 29 | `lemma` | [star_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-neg-iff--653f8b47e2a99a0ceeaac5f7.md) | 255 | `result-track:653f8b47e2a99a0ceeaac5f723bf4b274319f70611f495180dbf8f5a38d6cce5` |
| 30 | `theorem` | [conjugate_lt_conjugate](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-lt-conjugate--bf9e512e685ff6c950996760.md) | 258 | `result-track:bf9e512e685ff6c9509967608ae26cfd493830fd32abae4bca69bae26108a885` |
| 31 | `theorem` | [conjugate_lt_conjugate'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-lt-conjugate--ac40b73a4f67f9a8ba148fa7.md) | 263 | `result-track:ac40b73a4f67f9a8ba148fa760087d6c26c57404dbfe1a263f4238052f1d2d22` |
| 32 | `theorem` | [conjugate_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-pos--bc999339a194c0579030440a.md) | 267 | `result-track:bc999339a194c0579030440a2e0452e421f9a40d9442f1786d48b7bf26e30646` |
| 33 | `theorem` | [conjugate_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/conjugate-pos--5fc1abbfe57423973cd73852.md) | 270 | `result-track:5fc1abbfe57423973cd73852d74b0c128b05497ddb7ba25ae7ac5796258afb72` |
| 34 | `theorem` | [star_mul_self_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-mul-self-pos--0405ce17b853ef06dc7c75f9.md) | 273 | `result-track:0405ce17b853ef06dc7c75f9ac5fb06a538863eb5e804d948919a2789e7e925a` |
| 35 | `theorem` | [mul_star_self_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/mul-star-self-pos--0111851974111f96b797f5d2.md) | 277 | `result-track:0111851974111f96b797f5d2d4c7744725aeb345176883ec85311aa6246b97c6` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/instance--283ec6d4093974690a99eaa6.md) | 285 | `declaration-track:283ec6d4093974690a99eaa60e5273a027f771fd3d565638ad1fc16b698a1449` |
| 37 | `lemma` | [one_le_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/one-le-star-iff--bd05896c38c01b23b1774494.md) | 289 | `result-track:bd05896c38c01b23b177449495e4450c2cd678110f9a1affc629862fd38d05fc` |
| 38 | `lemma` | [star_le_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-le-one-iff--1ad73e87f58abe289813f8d0.md) | 293 | `result-track:1ad73e87f58abe289813f8d0228063847964c3a3c6079bddbd41fa3b983b162b` |
| 39 | `lemma` | [one_lt_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/one-lt-star-iff--11f96f37ea4247db049bda09.md) | 297 | `result-track:11f96f37ea4247db049bda09099df05863b8463560a4d47b05f5dee6dbf5efb1` |
| 40 | `lemma` | [star_lt_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/star-lt-one-iff--dc43a24235d276227f786d99.md) | 301 | `result-track:dc43a24235d276227f786d991c25896c134a0ab4a93ac9497a45f99880caf0cb` |
| 41 | `theorem` | [IsSelfAdjoint.sq_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/isselfadjoint-sq-nonneg--cf86d42792b33effb39189ac.md) | 305 | `result-track:cf86d42792b33effb39189ac45c337eef8237b65137daed0a8225bc2fd3e2f28` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/instance--762224e172200664f3ac9378.md) | 312 | `declaration-track:762224e172200664f3ac93786aa70011f98e237ee8083dd7862fe30e753d6758` |
| 43 | `lemma` | [StarModule.smul_lt_smul_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/starmodule-smul-lt-smul-of-pos--2097bc1127991de7b7d8b573.md) | 330 | `result-track:2097bc1127991de7b7d8b57311b378cd9b866c111aadf9b2bfb8e5d1d6aa3adf` |
| 44 | `lemma` | [NonUnitalStarRingHom.map_le_map_of_map_star](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/nonunitalstarringhom-map-le-map-of-map-star--bd4ac162c8544ef0f5a3be10.md) | 369 | `result-track:bd4ac162c8544ef0f5a3be100c114a3f57064c413f9a8e0ebfcd48d36cdbd5d1` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/instance--2abcf94b6f890192cdd8b72e.md) | 378 | `declaration-track:2abcf94b6f890192cdd8b72e953a199191727c50e9bde12f65d722a5f9d7b5c9` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/instance--574210163a56ab1d5abdb445.md) | 384 | `declaration-track:574210163a56ab1d5abdb445602050dda5f9a9b9b1cecc54c03432e2ff7ed002` |
| 47 | `instance` | [Nat.instStarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/declarations/nat-inststarorderedring--dad126ee797c5b82fc95f62a.md) | 395 | `declaration-track:dad126ee797c5b82fc95f62a8e4d4c3a602c9cafab932538deb319971ffee86f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
