# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AhlswedeZhang.Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "385bd4da9d443cad9539543994edbefa281f42a2",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `385bd4da9d443cad9539543994edbefa281f42a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sups` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Powerset` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [binomial_sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/binomial-sum-eq--b2721d39e5326c1191715491.md) | 59 | `result-track:b2721d39e5326c1191715491c676d1bba68d0578924aff89e30d37d47cdc3754` |
| 2 | `lemma` | [Fintype.sum_div_mul_card_choose_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/fintype-sum-div-mul-card-choose-card--89d1d87a69b317d97f2bcc8e.md) | 83 | `result-track:89d1d87a69b317d97f2bcc8e385ea9896e15a1689f10b4c527923e8af2a29ca5` |
| 3 | `lemma` | [sup_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/sup-aux--0da5d049e73d713286e142fe.md) | 117 | `result-track:0da5d049e73d713286e142fed0ff8f355be38f9fa8516c0aa3e9e3dc5ae0c7da` |
| 4 | `lemma` | [lower_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/lower-aux--ae88ef0c355560f3c8bd7738.md) | 120 | `result-track:ae88ef0c355560f3c8bd7738ccf42ca114a3b0927eea4ea942aa4d66d5374526` |
| 5 | `def` | [truncatedSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup--3d22087917f217021c388146.md) | 127 | `declaration-track:3d22087917f217021c38814682f2c6d9a223b51e5d28b14bae6c4811eb08e6f2` |
| 6 | `lemma` | [truncatedSup_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-of-mem--7ea072057d513ae0f2973baf.md) | 130 | `result-track:7ea072057d513ae0f2973bafaa8416ba53133f5ad3dab5a605c65c587e36b01b` |
| 7 | `lemma` | [truncatedSup_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-of-notmem--df154ddd78bd7d3cc144bd5a.md) | 133 | `result-track:df154ddd78bd7d3cc144bd5a9f47cc0d57f0f641a73df0edd81434573335ef2f` |
| 8 | `lemma` | [truncatedSup_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-empty--472b1e427ed163b7679f8c1f.md) | 137 | `result-track:472b1e427ed163b7679f8c1fe3ff73b712340ea29c49b3d98fb16d5dffaf4290` |
| 9 | `lemma` | [truncatedSup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-singleton--edf99b10cc1acafd855a626a.md) | 139 | `result-track:edf99b10cc1acafd855a626ac65ae7153664f0fa2d0579c534f812e246ae55bf` |
| 10 | `lemma` | [le_truncatedSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/le-truncatedsup--f4ce35db7b802f3ae53505f3.md) | 142 | `result-track:f4ce35db7b802f3ae53505f33aad79d9ba0c07d4e4790a53900f3f80354e7091` |
| 11 | `lemma` | [map_truncatedSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/map-truncatedsup--19b65f19a867188d32ada3ca.md) | 149 | `result-track:19b65f19a867188d32ada3cafcb7679449eff91add2528b5bb09b5f211406c42` |
| 12 | `lemma` | [truncatedSup_of_isAntichain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-of-isantichain--1d3e2dd38cd9ca61de957435.md) | 157 | `result-track:1d3e2dd38cd9ca61de957435a604be805e276d04dd89c1fba20692947ada0b50` |
| 13 | `lemma` | [truncatedSup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-union--b3979567e0d322c23f771527.md) | 166 | `result-track:b3979567e0d322c23f7715275494d68bfbb3e0aa8aaaf2afb2060e7f34d7a83e` |
| 14 | `lemma` | [truncatedSup_union_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-union-left--6d774a1a423f9db32cddca9e.md) | 171 | `result-track:6d774a1a423f9db32cddca9ece70cdba3450fd31651e8180a5908da1fbb22056` |
| 15 | `lemma` | [truncatedSup_union_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-union-right--4926bd6bc22cfc8a2ae7cafc.md) | 177 | `result-track:4926bd6bc22cfc8a2ae7cafc1004f44794b8151db6d9d887482a91f510b0cd8b` |
| 16 | `lemma` | [truncatedSup_union_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-union-of-notmem--6790e6b812761b9a03ec0bcd.md) | 180 | `result-track:6790e6b812761b9a03ec0bcd4da0f282b3bbe29e49f91159cd1f850a72ad28df` |
| 17 | `lemma` | [inf_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/inf-aux--aeb6feffe8aa1926d3c7d26d.md) | 192 | `result-track:aeb6feffe8aa1926d3c7d26d0808405ab1207a131f812aaff31f2cae185e30db` |
| 18 | `lemma` | [upper_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/upper-aux--2190117dfdac87d44d37cc08.md) | 195 | `result-track:2190117dfdac87d44d37cc08823edef4d721cf51a76b0d55babb60e390237d88` |
| 19 | `def` | [truncatedInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf--67b6f7b14e0fa09cdadf07f7.md) | 202 | `declaration-track:67b6f7b14e0fa09cdadf07f7f3040ca24f791c034377187befdbcaf3c9aea44f` |
| 20 | `lemma` | [truncatedInf_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-of-mem--dcf46eb2157673db330efba5.md) | 205 | `result-track:dcf46eb2157673db330efba5cd901efc1ef9df45ac18f6b1c36c0485f7773760` |
| 21 | `lemma` | [truncatedInf_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-of-notmem--06dc45f586360a416703acef.md) | 208 | `result-track:06dc45f586360a416703acefd3fdaadbd79cdf8b62a6def3c083f8efdfa15b74` |
| 22 | `lemma` | [truncatedInf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-le--889a93f856eef43e4c6bb019.md) | 212 | `result-track:889a93f856eef43e4c6bb019531acef84814409594d06c1726e338d89c835436` |
| 23 | `lemma` | [truncatedInf_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-empty--e19f0bd245e6d260763572e9.md) | 219 | `result-track:e19f0bd245e6d260763572e9cc096d91099546a53cea335eb35d39a331e66eb3` |
| 24 | `lemma` | [truncatedInf_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-singleton--129f7e603c94c6eb33e6607f.md) | 221 | `result-track:129f7e603c94c6eb33e6607f33fe7df2c4b4491367f71883692cdf456fe49bfd` |
| 25 | `lemma` | [map_truncatedInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/map-truncatedinf--31e715064052ea2597a775da.md) | 226 | `result-track:31e715064052ea2597a775da5a7c94a7cbb83d97a638a9e734078f09d1b9efcd` |
| 26 | `lemma` | [truncatedInf_of_isAntichain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-of-isantichain--f0f93a8ed6ea38568984196f.md) | 234 | `result-track:f0f93a8ed6ea38568984196fc2fcfbeec68c891f73401fe9529216615c5ed46d` |
| 27 | `lemma` | [truncatedInf_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-union--fb7c489b540a1b5085fa74c7.md) | 243 | `result-track:fb7c489b540a1b5085fa74c78aaf5daced7434f73a66e50584e533c6b3ace0f9` |
| 28 | `lemma` | [truncatedInf_union_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-union-left--79996f2771303185199833e4.md) | 248 | `result-track:79996f2771303185199833e4d4b9eec5298d582996ac4ea6ffa82f137ac0580b` |
| 29 | `lemma` | [truncatedInf_union_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-union-right--1af443a43874978d85ad1501.md) | 254 | `result-track:1af443a43874978d85ad1501ec087c4dd2a929ea6aead76a697ac01be808a30d` |
| 30 | `lemma` | [truncatedInf_union_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-union-of-notmem--7809a6b30f9679316b5747dc.md) | 258 | `result-track:7809a6b30f9679316b5747dc2a94acac08f51c1dd880eee22486f8191444d47e` |
| 31 | `lemma` | [infs_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/infs-aux--fb3641352e9a8028b4054297.md) | 270 | `result-track:fb3641352e9a8028b4054297019fe8de400521f5c3fe2a5675e5accea075dab4` |
| 32 | `lemma` | [sups_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/sups-aux--88b87cab16e210bad2d6f4d7.md) | 273 | `result-track:88b87cab16e210bad2d6f4d71d80d60d3685d40d61afc49ff33a994c3d769bb2` |
| 33 | `lemma` | [truncatedSup_infs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-infs--b25d569df845832d6786d16f.md) | 278 | `result-track:b25d569df845832d6786d16f71bd709d206e3606f4fbfa36c2d3651eb4a29dee` |
| 34 | `lemma` | [truncatedInf_sups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-sups--a03e6919488ffeb00cdb11e8.md) | 285 | `result-track:a03e6919488ffeb00cdb11e846a5f669df7ab827789d89b9eecfee26fd5cd906` |
| 35 | `lemma` | [truncatedSup_infs_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedsup-infs-of-notmem--a7eafe336832230d4eb1c40e.md) | 292 | `result-track:a7eafe336832230d4eb1c40edc05a7e95324b454be7cb44e41723d8722ae96fd` |
| 36 | `lemma` | [truncatedInf_sups_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/truncatedinf-sups-of-notmem--3a7d350ef94961c1d6875ec6.md) | 299 | `result-track:3a7d350ef94961c1d6875ec6cd9a69286f09b8ec8c72cb5f895c5cbb7ace1763` |
| 37 | `lemma` | [compl_truncatedSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/compl-truncatedsup--8d678e06ff271f638221e1e7.md) | 311 | `result-track:8d678e06ff271f638221e1e7fa6914c9d228110ef3acca5546261823a59fdb2b` |
| 38 | `lemma` | [compl_truncatedInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/compl-truncatedinf--d53a345e3b834828ac86a7a7.md) | 314 | `result-track:d53a345e3b834828ac86a7a7edf733dec520c45372dce7eb42bbbf6bb5770a6e` |
| 39 | `lemma` | [card_truncatedSup_union_add_card_truncatedSup_infs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/card-truncatedsup-union-add-card-truncatedsup-infs--8b85e1aacd0fd81730d27c5e.md) | 321 | `result-track:8b85e1aacd0fd81730d27c5e6269c0e7a00ff7c8d1263c869af64d28f9cfbe26` |
| 40 | `lemma` | [card_truncatedInf_union_add_card_truncatedInf_sups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/card-truncatedinf-union-add-card-truncatedinf-sups--152ec10f886c2bb99ce7d378.md) | 335 | `result-track:152ec10f886c2bb99ce7d3782049c6f6c80a0d3ae3a2bf26b38d3e049782fb62` |
| 41 | `def` | [infSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/infsum--2a69dd24eb5be8dfcd58fe09.md) | 359 | `declaration-track:2a69dd24eb5be8dfcd58fe095087f75268ac25ded57ec0c2910196c025fc591e` |
| 42 | `def` | [supSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/supsum--e70c69581454dbd281a71ab6.md) | 364 | `declaration-track:e70c69581454dbd281a71ab65f224db0b5391e3bcada72faa04d1e100ac9e6b1` |
| 43 | `lemma` | [supSum_union_add_supSum_infs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/supsum-union-add-supsum-infs--17b78d482ad09843dc4fe696.md) | 367 | `result-track:17b78d482ad09843dc4fe696978ef21268e7b3dc3e05d2c14edea3d631362562` |
| 44 | `lemma` | [infSum_union_add_infSum_sups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/infsum-union-add-infsum-sups--b766294ebb3390f387cff3bc.md) | 374 | `result-track:b766294ebb3390f387cff3bccffc54ef3021541b158bd8dcd7854e50ea196715` |
| 45 | `lemma` | [IsAntichain.le_infSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/isantichain-le-infsum--03bac77d20c0a350cc0d5ef8.md) | 381 | `result-track:03bac77d20c0a350cc0d5ef848da723dd5d39159fdff2a41b691846d12e32a3a` |
| 46 | `lemma` | [supSum_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/supsum-singleton--593c31edd74356b965895612.md) | 393 | `result-track:593c31edd74356b965895612dcd437becccdfd1f912382fdccd7024d6c6317c6` |
| 47 | `lemma` | [infSum_compls_add_supSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/infsum-compls-add-supsum--4dd5af2f1c124bc5dcbbb6d9.md) | 410 | `result-track:4dd5af2f1c124bc5dcbbb6d9b03fcdee904df24747271bc408a101c8ef865f5d` |
| 48 | `lemma` | [supSum_of_univ_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/supsum-of-univ-notmem--0d4d85b7ef7f6cf5dd9dc639.md) | 418 | `result-track:0d4d85b7ef7f6cf5dd9dc63941340944bdb9b9c82e37452780d3de6f712ff1b4` |
| 49 | `lemma` | [infSum_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/declarations/infsum-eq-one--d5a9613249f4cc60e0856201.md) | 444 | `result-track:d5a9613249f4cc60e085620168223939dee8bb65f4aed1c3e6321cf27742aeda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
