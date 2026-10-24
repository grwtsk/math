# Verification target: GRWTSK.Algebra.GroupTheory.Membership.Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19d72c5d010ffe3642fe579eb24329da6f7a9ad3",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19d72c5d010ffe3642fe579eb24329da6f7a9ad3`.

Source path: `GRWTSK/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Idempotent` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Hom` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-isup-of-directed--10da4e49e9317b0486a8a74d.md) | 56 | `result-track:10da4e49e9317b0486a8a74d7e8529080a589f16361779463f4b66f72c90820a` |
| 2 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/coe-isup-of-directed--201fba41d79ceff41ee1983b.md) | 68 | `result-track:201fba41d79ceff41ee1983b801f95012fa07251d234d5d4122bfde6a70b2527` |
| 3 | `theorem` | [mem_sSup_of_directedOn](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-ssup-of-directedon--c777fdd70b2d75a74bc59103.md) | 73 | `result-track:c777fdd70b2d75a74bc59103281a4d6a3aff3d38956275d883f2bdf000aa3f01` |
| 4 | `theorem` | [coe_sSup_of_directedOn](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/coe-ssup-of-directedon--1d56ffb83fd73d9b57094872.md) | 79 | `result-track:1d56ffb83fd73d9b570948723897d4f157f8db4419f77ea51e01ca0b1a23a6d8` |
| 5 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-sup-left--163f10eb013c0db0c9be3090.md) | 84 | `result-track:163f10eb013c0db0c9be30909d37ae89f1721578563a0255bda1e6030bc0b80b` |
| 6 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-sup-right--c395aafadf8d9af127f0ce16.md) | 89 | `result-track:c395aafadf8d9af127f0ce16f3df0e8e0ca66f51046f733259dbf5b5b43e806d` |
| 7 | `theorem` | [mul_mem_sup](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mul-mem-sup--865963b9a450f081dc83325f.md) | 94 | `result-track:865963b9a450f081dc83325fa5761f40510090707cea065bec392a960aeb36e4` |
| 8 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-isup-of-mem--e1428e634c8a28973c9f3ac6.md) | 98 | `result-track:e1428e634c8a28973c9f3ac6c8c443ac2d9be1f068e1adfa85a0a29c8949608e` |
| 9 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-ssup-of-mem--1951dc9a37df1a6c635e3a28.md) | 104 | `result-track:1951dc9a37df1a6c635e3a28f7bc5884c717d6479d72e86555e8b5bea16bdf20` |
| 10 | `theorem` | [iSup_induction](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/isup-induction--8a8940c7f6fb9427da3471b9.md) | 116 | `result-track:8a8940c7f6fb9427da3471b96f02264a2611f1f88f552bfca990b534643bd11f` |
| 11 | `theorem` | [iSup_induction'](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/isup-induction--fd67e5b39a824420ccd76dc2.md) | 126 | `result-track:fd67e5b39a824420ccd76dc2a6056cd9dd9672a2e98152cf9a931b78f3c6f672` |
| 12 | `theorem` | [closure_range_of](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-range-of--f298bb5d43e4c3a1193af16a.md) | 150 | `result-track:f298bb5d43e4c3a1193af16a5514929c7e55c697919bc407d359904aabf30853` |
| 13 | `theorem` | [closure_singleton_eq](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-singleton-eq--57627f5a5a0794bbc668549a.md) | 162 | `result-track:57627f5a5a0794bbc668549ab9c74e1948ce7572cefbd6bb2764ab9b17c1f101` |
| 14 | `theorem` | [mem_closure_singleton](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-closure-singleton--96abdfe6ec5afc43a4c50770.md) | 168 | `result-track:96abdfe6ec5afc43a4c5077034647b1c982f0ef2091fe613d67e9e2feb997b74` |
| 15 | `theorem` | [mem_closure_singleton_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-closure-singleton-self--a3faab2687f3159e2bd95a3d.md) | 171 | `result-track:a3faab2687f3159e2bd95a3d770a633aeabf0cbcda9885f90d1b0e2858444210` |
| 16 | `theorem` | [closure_singleton_one](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-singleton-one--50e8ef798eb827932fc420c3.md) | 174 | `result-track:50e8ef798eb827932fc420c360d0072f625871e3c63d5585a5ea2fd3e40cf23c` |
| 17 | `theorem` | [card_bot](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/card-bot--523e8ac047e9b9030e625226.md) | 184 | `result-track:523e8ac047e9b9030e6252261f34cf4a84f347035ebeb6d557cc3f178356185e` |
| 18 | `theorem` | [eq_bot_of_card_le](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/eq-bot-of-card-le--5a53129514c39a9641c267fb.md) | 189 | `result-track:5a53129514c39a9641c267fb2caef55763246aa499311f18818bc326b1e35937` |
| 19 | `theorem` | [eq_bot_of_card_eq](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/eq-bot-of-card-eq--311cf544e32e37ca17547c7c.md) | 194 | `result-track:311cf544e32e37ca17547c7c80486148af90a725b7a19e089753cd5a1723edb5` |
| 20 | `theorem` | [card_le_one_iff_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/card-le-one-iff-eq-bot--94eb1cd4c9fa55536388ada8.md) | 198 | `result-track:94eb1cd4c9fa55536388ada8084ed6bdc82260fee86954bdc4ed370fbb532b63` |
| 21 | `lemma` | [eq_bot_iff_card](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/eq-bot-iff-card--617a48a76bfc14ece9921784.md) | 205 | `result-track:617a48a76bfc14ece9921784cebe333a31f7b8a4ba68da07df33dc5e659080df` |
| 22 | `theorem` | [_root_.FreeMonoid.mrange_lift](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/root-freemonoid-mrange-lift--5ef367afa223d95e6251caa9.md) | 211 | `result-track:5ef367afa223d95e6251caa96f9aecb8865d7334419720261c249221cdc39990` |
| 23 | `theorem` | [closure_eq_mrange](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-eq-mrange--6794023c88398e5ce3d7eb51.md) | 217 | `result-track:6794023c88398e5ce3d7eb51d6f528674518e1918c514d0547900dfb904f2165` |
| 24 | `theorem` | [closure_eq_image_prod](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-eq-image-prod--f75f08395fee4aaaef2c2046.md) | 221 | `result-track:f75f08395fee4aaaef2c2046a0eb548f4811711aa88c57458804789de09220c9` |
| 25 | `theorem` | [exists_list_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/exists-list-of-mem-closure--51fad29e1421d3db22a5a75d.md) | 227 | `result-track:51fad29e1421d3db22a5a75d9f388224945e890378b053041748a889d4fda6bb` |
| 26 | `theorem` | [exists_multiset_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/exists-multiset-of-mem-closure--6a8ab9d88f2fcded3def16fb.md) | 232 | `result-track:6a8ab9d88f2fcded3def16fbb724c3ec3a2f59fab16b34f0b76bc0e1c47ccee7` |
| 27 | `theorem` | [closure_induction_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-induction-left--37548d1bf5948493de0b13a5.md) | 238 | `result-track:37548d1bf5948493de0b13a56bab0331fff8041852181ee2c05c2911dd6e7770` |
| 28 | `theorem` | [induction_of_closure_eq_top_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/induction-of-closure-eq-top-left--3ca3d43eb8423a30dc25486c.md) | 253 | `result-track:3ca3d43eb8423a30dc25486ce02c2ed701e9b730890722a762a1ad8f361f195b` |
| 29 | `theorem` | [closure_induction_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-induction-right--8f7b59c6d059459f4f9aeacd.md) | 261 | `result-track:8f7b59c6d059459f4f9aeacd8f8e4ff377c14b71a86ac43f1ff862652412fc23` |
| 30 | `theorem` | [induction_of_closure_eq_top_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/induction-of-closure-eq-top-right--7ad9addd60d7c9834ceddae0.md) | 272 | `result-track:7ad9addd60d7c9834ceddae0acfe20403289a3f3c4f65adf2184836406490e8e` |
| 31 | `def` | [powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/powers--4bff912a2e5a9d43812b8e32.md) | 280 | `declaration-track:4bff912a2e5a9d43812b8e327423a1aef0bee07d0059bb17cf149e30bf51aadd` |
| 32 | `theorem` | [mem_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-powers--74f6ed932f9e1cacade840cf.md) | 284 | `result-track:74f6ed932f9e1cacade840cf355c029c0c5430816a2f29438da759183127454c` |
| 33 | `theorem` | [coe_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/coe-powers--202a978a030e46a4bb5eb4ae.md) | 287 | `result-track:202a978a030e46a4bb5eb4ae0e4569e287963f71ee147b203160aa2129302833` |
| 34 | `theorem` | [mem_powers_iff](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-powers-iff--35d4582bc6c14d9a74cd192a.md) | 290 | `result-track:35d4582bc6c14d9a74cd192a789f85ff60fd7824082e3cc4b7ac2e4bf053cda2` |
| 35 | `instance` | [decidableMemPowers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/decidablemempowers--25f359e4f902823d5e38d39a.md) | 293 | `declaration-track:25f359e4f902823d5e38d39adc33d960d983fd37ad40934150993e66dc2590be` |
| 36 | `instance` | [fintypePowers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/fintypepowers--5dde4daca6a051a0b183db83.md) | 298 | `declaration-track:5dde4daca6a051a0b183db8313c725e0033d668a252fd0c82d1b9dc1ecbedab0` |
| 37 | `theorem` | [powers_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/powers-eq-closure--8d084c29497fd1d26c4bf9af.md) | 301 | `result-track:8d084c29497fd1d26c4bf9af2427be46c08385f5fdacedacba29c2b5c5d55c60` |
| 38 | `lemma` | [powers_le](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/powers-le--b95ef9e1831d4d58036df6a2.md) | 305 | `result-track:b95ef9e1831d4d58036df6a2812e9308275f1f23693d9b621ee3bf1862717d80` |
| 39 | `lemma` | [powers_one](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/powers-one--d74afc2960911da5a6653c79.md) | 307 | `result-track:d74afc2960911da5a6653c79b66c76fe3cda8f6922f909ef40492fc65291e190` |
| 40 | `theorem` | [_root_.IsIdempotentElem.coe_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/root-isidempotentelem-coe-powers--44a18c8a6b1a7feb80ce37cd.md) | 309 | `result-track:44a18c8a6b1a7feb80ce37cde6b131fe593d660aa1c2489ba13f375a45161ef6` |
| 41 | `abbrev` | [groupPowers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/grouppowers--1b5377ddc8360f76fd12b0d5.md) | 325 | `declaration-track:1b5377ddc8360f76fd12b0d58ae3cdfa0d51a563d784caacc9f66f58fbca8a0b` |
| 42 | `def` | [pow](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/pow--41e187625684c50762686bc6.md) | 351 | `declaration-track:41e187625684c50762686bc60d389e2d3ee233b1de0eb9dae16d8e660ae11aed` |
| 43 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/pow-apply--6834138d83149b9ff245bb61.md) | 354 | `result-track:6834138d83149b9ff245bb618a1aec13fecd8c210b44af150a969589334b1967` |
| 44 | `def` | [log](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/log--a5ee283dafc0e6079c83e86c.md) | 358 | `declaration-track:a5ee283dafc0e6079c83e86c7eba8bad94fa3ae2697d50305c24107456fa97c9` |
| 45 | `theorem` | [pow_log_eq_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/pow-log-eq-self--04f099a1f0addd097ce8a57b.md) | 362 | `result-track:04f099a1f0addd097ce8a57b4feaef5c296518d3641f22e6ca30ce1393862df1` |
| 46 | `theorem` | [pow_right_injective_iff_pow_injective](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/pow-right-injective-iff-pow-injective--976b1323c1fdd2d3c831b01d.md) | 365 | `result-track:976b1323c1fdd2d3c831b01dbcb06eea91133c9562f194af9730474337de4656` |
| 47 | `theorem` | [log_pow_eq_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/log-pow-eq-self--772bd901b96c87dc0b70205b.md) | 370 | `result-track:772bd901b96c87dc0b70205b9dfa994f42bd71c9518221e21ee400a6eba0e5a4` |
| 48 | `def` | [powLogEquiv](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/powlogequiv--f1762efdd7daf1ecd7baec0d.md) | 377 | `declaration-track:f1762efdd7daf1ecd7baec0d65e9180a11ac7ceb56eb4dcfec709dea358d0386` |
| 49 | `theorem` | [log_mul](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/log-mul--3018c464f3ddd7a07cfc68fb.md) | 385 | `result-track:3018c464f3ddd7a07cfc68fb3d1cbe4de8c5e990bcf8735c9805faf379fa8de9` |
| 50 | `theorem` | [log_pow_int_eq_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/log-pow-int-eq-self--fee98fabf6535c838c53d029.md) | 389 | `result-track:fee98fabf6535c838c53d02917a2c405a7700d091e9ae0ab1ebec8f6da43d4a1` |
| 51 | `theorem` | [map_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/map-powers--809860dab1934c15b0388d9f.md) | 393 | `result-track:809860dab1934c15b0388d9f4b4180508ebda620e175b52b946e51b70ca3a55c` |
| 52 | `theorem` | [IsScalarTower.of_mclosure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/isscalartower-of-mclosure-eq-top--0129ab195c6b6802394947ba.md) | 401 | `result-track:0129ab195c6b6802394947ba34321ff089524aaeef271a24b6e6d22ddec66012` |
| 53 | `theorem` | [SMulCommClass.of_mclosure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/smulcommclass-of-mclosure-eq-top--5bf60cbabc9102a8a7a67f24.md) | 412 | `result-track:5bf60cbabc9102a8a7a67f246794f1296ffc1221393cfac2f4889f0c86cfa97e` |
| 54 | `theorem` | [sup_eq_range](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/sup-eq-range--a914882c331fbb7f1041310c.md) | 429 | `result-track:a914882c331fbb7f1041310ca26643e4c9d0a852ef07ad4009ab8875045ad273` |
| 55 | `theorem` | [mem_sup](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-sup--bf87a183dfdc5bcc5aac7442.md) | 434 | `result-track:bf87a183dfdc5bcc5aac744277abc549d55dfa2d9ce26a4b729bfd7efc36fa83` |
| 56 | `theorem` | [closure_singleton_eq](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-singleton-eq--4ad1ba2b6064d1dcdd9c3e5d.md) | 446 | `result-track:4ad1ba2b6064d1dcdd9c3e5d7a8061c17b5d78d6c82457262702aa7ffb172936` |
| 57 | `theorem` | [mem_closure_singleton](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-closure-singleton--8cd9f339b845764f32d3f43c.md) | 453 | `result-track:8cd9f339b845764f32d3f43c1f9ee8be33b3b73f800d2975c92f776af20646b6` |
| 58 | `theorem` | [closure_singleton_zero](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/closure-singleton-zero--4c13fbeeabde3f45dd961ed0.md) | 456 | `result-track:4c13fbeeabde3f45dd961ed05b614f8d0c5787261386df72164a00a4f48fadb9` |
| 59 | `def` | [multiples](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/multiples--fc30715d0f0910b03fcb1dd7.md) | 460 | `declaration-track:fc30715d0f0910b03fcb1dd78d39dc73402ce2a3829ce68c25384d2c0fb7b307` |
| 60 | `theorem` | [mem_closure_pair](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/mem-closure-pair--dd913cbdbc9ed4d1a88ea0e2.md) | 494 | `result-track:dd913cbdbc9ed4d1a88ea0e27db4df6a984e91fcfb9d022683cb409f77581b33` |
| 61 | `theorem` | [ofMul_image_powers_eq_multiples_ofMul](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/ofmul-image-powers-eq-multiples-ofmul--c0663f62739780f48118044a.md) | 503 | `result-track:c0663f62739780f48118044aad326434a9010efa4305c00ba46a2e9c98bb6536` |
| 62 | `theorem` | [ofAdd_image_multiples_eq_powers_ofAdd](../../../../../mathematics/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/declarations/ofadd-image-multiples-eq-powers-ofadd--4f83aad8a18e63acacabee4e.md) | 514 | `result-track:4f83aad8a18e63acacabee4efd65488e7c8241163f70b973d3ca3b771539b987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
