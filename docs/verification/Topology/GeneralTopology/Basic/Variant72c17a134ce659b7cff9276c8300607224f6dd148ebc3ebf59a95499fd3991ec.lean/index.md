# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "293616e04c567872b78d8730784f2ade2c1d908d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `293616e04c567872b78d8730784f2ade2c1d908d`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Hull` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Absorbs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Balanced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced--e48d7bb1e8552be22347d0e2.md) | 57 | `declaration-track:e48d7bb1e8552be22347d0e2e27d28300c842d7941f016acf546052d4e02c5e2` |
| 2 | `lemma` | [absorbs_iff_norm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/absorbs-iff-norm--e63f2f42fbb054ff9eb2ca9e.md) | 60 | `result-track:e63f2f42fbb054ff9eb2ca9e316ba5d6512fd04735920a5559c3ff3c8843b4c5` |
| 3 | `lemma` | [Absorbs.exists_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/absorbs-exists-pos--63e9cec9a5fb597d9e91436d.md) | 65 | `result-track:63e9cec9a5fb597d9e91436d872e062fd94037003ab9ffa0508b8739e861f8ee` |
| 4 | `theorem` | [balanced_iff_smul_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-iff-smul-mem--81a962a4a73aa09fd0d02676.md) | 69 | `result-track:81a962a4a73aa09fd0d02676c85ad41d3117f987159e705e86e21b427d729929` |
| 5 | `theorem` | [balanced_iff_closedBall_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-iff-closedball-smul--a449fd1f8164963a4103b1a6.md) | 74 | `result-track:a449fd1f8164963a4103b1a65a10485f8142e21c142f1136b643ed76c2a73ac7` |
| 6 | `theorem` | [balanced_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-empty--80298dc88e186d1680a6dc64.md) | 78 | `result-track:80298dc88e186d1680a6dc644066b63fd9dd9c38bf48a13fcfda3c56e462b2d7` |
| 7 | `theorem` | [balanced_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-univ--f0e83c45ecec6f12f530c082.md) | 81 | `result-track:f0e83c45ecec6f12f530c08207983a4fdd90959c415b0242af8679b355b1a26e` |
| 8 | `theorem` | [Balanced.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-union--dcb3b448a8027767f9b9584f.md) | 83 | `result-track:dcb3b448a8027767f9b9584ffb23b54c076d10c728a050ec3655544fd335e9c0` |
| 9 | `theorem` | [Balanced.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-inter--89dae309dcf391035be92109.md) | 86 | `result-track:89dae309dcf391035be921094b3f1125fc63f0a2afa05f65a4118fe672b957cd` |
| 10 | `theorem` | [balanced_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-iunion--69bcf607d1a1e9b339be73e6.md) | 89 | `result-track:69bcf607d1a1e9b339be73e647fa11e0c13a130a3a3a2328d7d20ebee54bac8e` |
| 11 | `theorem` | [balanced_iUnion₂](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-iunion--ccd0d8814ec9a52798f64e1e.md) | 92 | `result-track:ccd0d8814ec9a52798f64e1ed08830c9d09f5887cd5f18c9ee0c2bcf2210a2c3` |
| 12 | `theorem` | [Balanced.sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-sinter--e2507f520cb11cb265080f0c.md) | 96 | `result-track:e2507f520cb11cb265080f0c1528a0e0430408d277bb27f1db2f3327b590c403` |
| 13 | `theorem` | [balanced_iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-iinter--22d089c235404d36f45dbe28.md) | 99 | `result-track:22d089c235404d36f45dbe28d09859b7b8d99c7e8e9ab5a391d854f3acfbbe46` |
| 14 | `theorem` | [balanced_iInter₂](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-iinter--18ab75806d28058110cb710d.md) | 102 | `result-track:18ab75806d28058110cb710d5787f7a3aba47c4a8054e4088228201d90b9a6d0` |
| 15 | `theorem` | [Balanced.mulActionHom_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-mulactionhom-preimage--18fb2015d75b95e1a2d6bf47.md) | 106 | `result-track:18fb2015d75b95e1a2d6bf47b2ba310436b08c9db5622f0c696eefc6c3fbd90e` |
| 16 | `theorem` | [Balanced.smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-smul--bd0a31300cb10678eae89a11.md) | 113 | `result-track:bd0a31300cb10678eae89a1127f54abcae5e1fed037f900ef2bf065534850677` |
| 17 | `theorem` | [Balanced.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-neg--d80bfe8fb482210636c53beb.md) | 122 | `result-track:d80bfe8fb482210636c53bebf4b491d6f731271d4753c2d8e126489bb154e920` |
| 18 | `theorem` | [balanced_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-neg--16c0f887d6b90a8bc2fafbaf.md) | 126 | `result-track:16c0f887d6b90a8bc2fafbaf071f4d5889d17ded684f8e90e9c021373d682718` |
| 19 | `theorem` | [Balanced.neg_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-neg-mem-iff--346a3d706f192d93b14a8b5c.md) | 129 | `result-track:346a3d706f192d93b14a8b5cea0929ee11967770b188017d3ca2483805c112bc` |
| 20 | `theorem` | [Balanced.neg_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-neg-eq--164d9cfb0fbc1d74e714378f.md) | 133 | `result-track:164d9cfb0fbc1d74e714378f1fcef344419b916bf2c9ef6174f0ed1003c1dde8` |
| 21 | `theorem` | [Balanced.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-add--28f9be77614cbf1b72d06fe3.md) | 136 | `result-track:28f9be77614cbf1b72d06fe3c1be581886956875a75ccf1b86bf7665ea9de011` |
| 22 | `theorem` | [Balanced.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-sub--598e27d1b7f5a5625bb981e1.md) | 139 | `result-track:598e27d1b7f5a5625bb981e1ac22ff738b5ae3a4fdb84d665334ba33677ce740` |
| 23 | `theorem` | [balanced_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-zero--1321c56bbb7ce54984c53980.md) | 143 | `result-track:1321c56bbb7ce54984c53980d65c6de514a628527eab87d4138a15bffe488574` |
| 24 | `theorem` | [absorbs_iff_eventually_nhdsNE_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/absorbs-iff-eventually-nhdsne-zero--459dfb211b738c7854ae2ffd.md) | 153 | `result-track:459dfb211b738c7854ae2ffd544ed9d0c402ac4bef02e222ff836d7be8fe3a5b` |
| 25 | `theorem` | [absorbent_iff_eventually_nhdsNE_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/absorbent-iff-eventually-nhdsne-zero--167f9a2774a608fe376c2833.md) | 165 | `result-track:167f9a2774a608fe376c28337a92501b301647818361b2de87f97b12cf9e4928` |
| 26 | `theorem` | [absorbs_iff_eventually_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/absorbs-iff-eventually-nhds-zero--0ae80cd4db092ce335fab465.md) | 177 | `result-track:0ae80cd4db092ce335fab4656ea276844438eb78fe6bc5c581634f2dc207be09` |
| 27 | `theorem` | [Absorbs.eventually_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/absorbs-eventually-nhds-zero--9daca6798fac4bd6717af2c1.md) | 184 | `result-track:9daca6798fac4bd6717af2c1ce5a687efbaaaa9fdfccbda28ecbd83bc94b1705` |
| 28 | `theorem` | [Balanced.smul_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-smul-mono--847357913704475649400098.md) | 192 | `result-track:847357913704475649400098164f60d0805b53fb74565ed5b5cb5c0a47e27c57` |
| 29 | `theorem` | [Balanced.smul_mem_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-smul-mem-mono--9f4f79cf848887d364d8af72.md) | 202 | `result-track:9f4f79cf848887d364d8af7209d5786c14ab3ee43ac1eebdf4d0672cf7508b8d` |
| 30 | `theorem` | [Balanced.subset_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-subset-smul--536fcf0090875eb4cb6ff067.md) | 213 | `result-track:536fcf0090875eb4cb6ff0672c4b8672d6548bbde9faf8869a02478ca6978c8a` |
| 31 | `theorem` | [Balanced.smul_congr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-smul-congr--475ad21f2f243acb4438556a.md) | 216 | `result-track:475ad21f2f243acb4438556a8a4a5be447cabcaf257fe4fe2d7147460ffe36c2` |
| 32 | `theorem` | [Balanced.smul_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-smul-eq--b8fefbd1af223b899894de21.md) | 219 | `result-track:b8fefbd1af223b899894de219d63bff03f58a2ce99ede26c4ef45e7d7e8b401b` |
| 33 | `theorem` | [Balanced.absorbs_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-absorbs-self--90e34e3a40548855545354be.md) | 223 | `result-track:90e34e3a40548855545354bebe670d314a603ce1244d9a9c15eb322f133258b7` |
| 34 | `theorem` | [Balanced.smul_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-smul-mem-iff--d662dbe14b7de5833b44384a.md) | 232 | `result-track:d662dbe14b7de5833b44384a61cb396ee4f4493f078f754871ef992e8e3f2c1a` |
| 35 | `theorem` | [absorbent_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/absorbent-nhds-zero--b44c31e80f5555dfba9bcd50.md) | 238 | `result-track:b44c31e80f5555dfba9bcd501bc65bfc30cde8a9457664a0f5d29f26f41559fd` |
| 36 | `theorem` | [Balanced.zero_insert_interior](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-zero-insert-interior--8055abdd905ca0cab8be1323.md) | 243 | `result-track:8055abdd905ca0cab8be13238f490f44bcd3f41fdb832f63a35c960e7ad2ecfd` |
| 37 | `theorem` | [Balanced.interior](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-interior--d83a7846a85d9355e2293a8e.md) | 254 | `result-track:d83a7846a85d9355e2293a8e1bd36dce75097896ec87c8ebad42f187a50c752a` |
| 38 | `theorem` | [Balanced.closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-closure--1d548af56297b39bf5ddce2b.md) | 259 | `result-track:1d548af56297b39bf5ddce2bdb12a46c04af99b5d674c269a9606f8e9e1c23e1` |
| 39 | `theorem` | [Balanced.convexHull](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-convexhull--d0a65a884dd70f10e22f8400.md) | 271 | `result-track:d0a65a884dd70f10e22f84007d1cd41dd78f583ddb9045c4d98baad23b3cd93f` |
| 40 | `theorem` | [balanced_iff_neg_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/declarations/balanced-iff-neg-mem--0e32dcbd9b0a47ea4d780cfe.md) | 286 | `result-track:0e32dcbd9b0a47ea4d780cfea519fb4f9204fe56fb216e719aa5298b2e4d862f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
