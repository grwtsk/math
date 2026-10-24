# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EFExpansion.Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b07462fa708a42283cb7334515d99edaba3fc28",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b07462fa708a42283cb7334515d99edaba3fc28`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.EFBasic` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.TwoLine` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [re_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/re-line--39d2ea30d85711091774c078.md) | 41 | `result-track:39d2ea30d85711091774c0788b0504e7941466dedef781405b7a67a687a5bc57` |
| 2 | `theorem` | [im_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/im-line--448b68f3381397482ab4e15d.md) | 42 | `result-track:448b68f3381397482ab4e15d39c745f370dc067f64fd11e94ccac7ac3c41eb01` |
| 3 | `theorem` | [one_lt_re_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/one-lt-re-line--6e9c89faaf1e02eadee81f19.md) | 44 | `result-track:6e9c89faaf1e02eadee81f19a541da8c0ccbd8f028ea03347638968e5efc8825` |
| 4 | `theorem` | [mem_goodStrip_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/mem-goodstrip-line--d9ae415a1af7f1faa0f07326.md) | 46 | `result-track:d9ae415a1af7f1faa0f07326c2a14947f40c5a08d77ae9cf6849c48b24fcdce9` |
| 5 | `theorem` | [norm_line_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-line-ge--da835203afaccf6cfc051418.md) | 49 | `result-track:da835203afaccf6cfc05141892967a92506085dc1cf38b14d57d242ccd63bf38` |
| 6 | `theorem` | [norm_line_sub_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-line-sub-ge--e0578860ed3d2ad52414fa2e.md) | 52 | `result-track:e0578860ed3d2ad52414fa2e8f302872a322db6db8890bfe900968fde3f1e0f3` |
| 7 | `theorem` | [norm_sub_line_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-sub-line-ge--25b3523af5518032033a5686.md) | 55 | `result-track:25b3523af5518032033a56861824d11e8592efa3e6c19365cc0c8b629fc5dc5f` |
| 8 | `theorem` | [conj_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/conj-line--0764d87d47d06d8bb57378f9.md) | 58 | `result-track:0764d87d47d06d8bb57378f993bf944b310dbca508aabcf38086d2922c47924c` |
| 9 | `theorem` | [continuous_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/continuous-line--3779c911661f199a83919a4a.md) | 61 | `result-track:3779c911661f199a83919a4a797615f633babbe35081a59914290991739318bc` |
| 10 | `theorem` | [norm_add₃_le'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-add-le--7e4501638377bb6a7dda28fd.md) | 63 | `result-track:7e4501638377bb6a7dda28fd6ab3e9d47bffb5aa7f289091f3276e340ec89266` |
| 11 | `theorem` | [norm_Afn_le_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-afn-le-line--31a0e693f11e9923f0fe369d.md) | 68 | `result-track:31a0e693f11e9923f0fe369d3d83dfb36241578f0c0a3096b46058f38c478913` |
| 12 | `theorem` | [norm_Bfn_le_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-bfn-le-line--59cb3e1cbb79cc08898108ca.md) | 76 | `result-track:59cb3e1cbb79cc08898108ca25ad883c9d767c297533d467a5d88f02c4306cbd` |
| 13 | `theorem` | [norm_log_sub_le_gen](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-log-sub-le-gen--a1511c02ca5dc746fc652f0a.md) | 99 | `result-track:a1511c02ca5dc746fc652f0a004d90863fb64a47cc763470c01fe35e569785ec` |
| 14 | `theorem` | [norm_log_sub_le_gen_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-log-sub-le-gen-neg--d218b037b4387096357cffa3.md) | 188 | `result-track:d218b037b4387096357cffa394214f6f8ace608a3b75c3150327949cf0393910` |
| 15 | `theorem` | [L2_eq_digamma_shift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/l2-eq-digamma-shift--6deea8129b2c7d75d8af8287.md) | 210 | `result-track:6deea8129b2c7d75d8af8287b85e611d705217859c88e9e25c8bcfe42914fa26` |
| 16 | `theorem` | [norm_L2_sub_L2star_self_le'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-sub-l2star-self-le--e5c85660c6647ea816bd05de.md) | 220 | `result-track:e5c85660c6647ea816bd05de1f3ffb9a144af710a67a4d6bc4aa4b31f98fe808` |
| 17 | `theorem` | [norm_L2_sub_L2star_self_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-sub-l2star-self-le--eddefd6a07ef9f686a38744b.md) | 305 | `result-track:eddefd6a07ef9f686a38744bf6aaaabc27ab1dd2e0a12a0af6853f179cb42b40` |
| 18 | `def` | [L2D](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/l2d--6793bc170ba63a5e701396ad.md) | 316 | `declaration-track:6793bc170ba63a5e701396ad18e40e938de2d128daa6cb039f027f775e5c9be8` |
| 19 | `theorem` | [isOpen_goodStrip_off](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/isopen-goodstrip-off--ea473ca4aa4626bab86759f7.md) | 320 | `result-track:ea473ca4aa4626bab86759f723e57ebb8185250d9d0fb710b721b71e3f567ccd` |
| 20 | `theorem` | [L2_eventuallyEq_L2D](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/l2-eventuallyeq-l2d--cb8bb0cdc33e91151474ce01.md) | 322 | `result-track:cb8bb0cdc33e91151474ce013dc914cd86428987aec13343792ef3c8ee767f7a` |
| 21 | `theorem` | [hasDerivAt_L2D](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/hasderivat-l2d--150c3dfa31f82ef2c8efa382.md) | 326 | `result-track:150c3dfa31f82ef2c8efa3820102e82e68bbedc88520b9dd1fca265a34acd6ee` |
| 22 | `theorem` | [deriv_L2_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/deriv-l2-eq--cadb25f4286af160b5b2a119.md) | 353 | `result-track:cadb25f4286af160b5b2a1194e6f1abc3a36b0ce7b22f7a973362abb0901dd1b` |
| 23 | `theorem` | [norm_deriv_L2_le'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-deriv-l2-le--e9e4ff8ee959c486a1e9638d.md) | 364 | `result-track:e9e4ff8ee959c486a1e9638d80645e277566670b9dbd9ebdceee5611c20a84ab` |
| 24 | `theorem` | [norm_deriv_L2_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-deriv-l2-le--7538d3204fbd3ddc1e9ee756.md) | 404 | `result-track:7538d3204fbd3ddc1e9ee75620c78cd7ee713efc29950441c49a966d4aa6016b` |
| 25 | `theorem` | [norm_L2star_sub_L2star_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2star-sub-l2star-le--0f9e87f235299558e194da7b.md) | 415 | `result-track:0f9e87f235299558e194da7b79e1ac79d2dd3c8592e86d611646407f052fb326` |
| 26 | `theorem` | [norm_L2_sub_L2star_le'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-sub-l2star-le--6e329cbe86392e753c47e383.md) | 432 | `result-track:6e329cbe86392e753c47e383b6ed356b9e6501df3a2e12c04981b8f7665f51ea` |
| 27 | `theorem` | [norm_L2_sub_L2star_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-sub-l2star-le--fa25b818beb3575d308d2ac4.md) | 450 | `result-track:fa25b818beb3575d308d2ac44bb4f183dbac72bdb54e96f3a8732548e58874c7` |
| 28 | `theorem` | [log_two_pi_le_two'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/log-two-pi-le-two--84c61be4e211a91b1a8fc1e0.md) | 458 | `result-track:84c61be4e211a91b1a8fc1e04ef90c0ef876a7894315319a18dd97ef4d54609a` |
| 29 | `theorem` | [norm_L2star_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2star-ge--b7a00e7e0b30879cc86a26a4.md) | 461 | `result-track:b7a00e7e0b30879cc86a26a408e75c9fa6c57f81d49fc8e4965ebbafb5d2d3a8` |
| 30 | `theorem` | [norm_L2_ge_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-ge-pos--0fafb793f0c323b01881ad9b.md) | 469 | `result-track:0fafb793f0c323b01881ad9bde07a759620860fcb548213e09f3e22bd242bcf8` |
| 31 | `theorem` | [norm_L2_ge'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-ge--bd9e7e4a995551d35b9ae0ee.md) | 480 | `result-track:bd9e7e4a995551d35b9ae0ee503c9be19226d11ecc9bfa54b2e7613356109c6a` |
| 32 | `theorem` | [norm_L2_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-ge--33bb87ea0886b541e9722b7f.md) | 491 | `result-track:33bb87ea0886b541e9722b7fa853a71160c7d824ec1825b0a47466e78c81d8f1` |
| 33 | `theorem` | [norm_L2_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-l2-line--f2f6b966a772bc296626a323.md) | 500 | `result-track:f2f6b966a772bc296626a3230d29b03c252dceaa1eaae47fed49c3625493cc1b` |
| 34 | `theorem` | [archLineData_L2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/archlinedata-l2--c7a8baca2a08c31fc98b8e9c.md) | 553 | `result-track:c7a8baca2a08c31fc98b8e9c2817235b2b403706ba10708888395755b1de108f` |
| 35 | `theorem` | [derivE2_div_E2_eq_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/derive2-div-e2-eq-line--b12ed6cc8fa93df12f4ff1fc.md) | 578 | `result-track:b12ed6cc8fa93df12f4ff1fc101965b52032df2f439580b4cb30f9afddf63668` |
| 36 | `theorem` | [freeze_on_line_W](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/freeze-on-line-w--2fb19417f93f33b7f5ea3c63.md) | 585 | `result-track:2fb19417f93f33b7f5ea3c63a05d60bcb1e20ba7d11b31639bdb7328c43f9c76` |
| 37 | `theorem` | [frozen_uniform_W](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/frozen-uniform-w--4262edc4240106279022b334.md) | 593 | `result-track:4262edc4240106279022b33462a72c06b7b02589bd62a938eb4170a73c1ac0e8` |
| 38 | `theorem` | [continuous_E2fn_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/continuous-e2fn-line--50f8f006064d69796ecf003c.md) | 624 | `result-track:50f8f006064d69796ecf003cb0af9b1db41b8b0072d9ad255026e96715a51aa8` |
| 39 | `theorem` | [continuous_derivE2_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/continuous-derive2-line--8231a67e56e0d855b84d18ad.md) | 628 | `result-track:8231a67e56e0d855b84d18ad853b80abf8c312cb050ef5c68d074951aa855ec3` |
| 40 | `theorem` | [continuous_derivE2_div_E2_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/continuous-derive2-div-e2-line--800eee02f50e3a6142da002e.md) | 633 | `result-track:800eee02f50e3a6142da002e165dbbcb02aaca5715462a43c422ac3e6ed0b73d` |
| 41 | `theorem` | [derivE2_div_E2_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/derive2-div-e2-conj--95222ed391b3df0d13f7ef78.md) | 640 | `result-track:95222ed391b3df0d13f7ef78c5d104487604b78470d6e7743ce20e3ceda7ed12` |
| 42 | `theorem` | [derivE2_div_E2_uniform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/derive2-div-e2-uniform--2c9e7356bc7a65e68021e31d.md) | 653 | `result-track:2c9e7356bc7a65e68021e31db3f5e54e8b011e136d9cbe7b8362e4b1a39596d2` |
| 43 | `theorem` | [derivE2_div_E2_conj_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/derive2-div-e2-conj-symm--42bab79e9b10789a8fe5ec72.md) | 660 | `result-track:42bab79e9b10789a8fe5ec72526f5c3cdd87be3a3d3a199e83fd7d61096301f1` |
| 44 | `theorem` | [norm_E2fn_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-e2fn-line--e057c933ab97f65cd2d70514.md) | 676 | `result-track:e057c933ab97f65cd2d70514b4b0b9983d2d517418d2218981711838000ae0dd` |
| 45 | `theorem` | [norm_FZ_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/norm-fz-line--ad56c506851995e4c56f64bb.md) | 681 | `result-track:ad56c506851995e4c56f64bb697044f528a4a722f7cfb3bfae64ae6aebfc73a0` |
| 46 | `theorem` | [continuous_FZ_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/continuous-fz-line--b71b16146ecb9f68c773cf87.md) | 698 | `result-track:b71b16146ecb9f68c773cf87c5964d224401b4a60bf84bf5d512ed77c90e37a0` |
| 47 | `theorem` | [e2LineFacts'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/e2linefacts--5d6b9f4b87822d414e05efbe.md) | 714 | `result-track:5d6b9f4b87822d414e05efbef89b4d87844ce2700a3c44faedac36f48a34c890` |
| 48 | `theorem` | [freezeFactsW'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/declarations/freezefactsw--c14188788c8122cac666fad1.md) | 720 | `result-track:c14188788c8122cac666fad156ecb5fbae4c035d976fef910e71893a03b9fd19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
