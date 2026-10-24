# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Karoubi.Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a624bde4184bdf51ce4ba5f3db5b89a82a8c5f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a624bde4184bdf51ce4ba5f3db5b89a82a8c5f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Karoubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/karoubi--4874c733299ba18272aabb91.md) | 40 | `declaration-track:4874c733299ba18272aabb917aa55a7725b1771e50add8276e0f0c41d6e148fb` |
| 2 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/ext--0e7652e9d487d646d1647251.md) | 55 | `result-track:0e7652e9d487d646d1647251a022d7018a3a7032ce2e136dde10ac7daccbc8ae` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/hom--980f4428555c3ec1d234c153.md) | 68 | `declaration-track:980f4428555c3ec1d234c1534e786432b43798d73bb4aea11cbed76a75be3a93` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--59e2c9e0452159cb0d270a60.md) | 74 | `declaration-track:59e2c9e0452159cb0d270a603914b050f9018fb8bd674faed5270a625f10dbc2` |
| 5 | `theorem` | [p_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/p-comp--490228e77183b8c51c3768f7.md) | 78 | `result-track:490228e77183b8c51c3768f7cd7aef86612b52862952f8f5aa905e62a70d25fb` |
| 6 | `theorem` | [comp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/comp-p--22c97d1b2a40936d1c9d1b27.md) | 82 | `result-track:22c97d1b2a40936d1c9d1b27bec2b6295a81b3cc10bd52731ef9559c8488e346` |
| 7 | `theorem` | [p_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/p-comm--400cc8c6e606ef948a976cec.md) | 86 | `result-track:400cc8c6e606ef948a976cecbe18b60baa4b31ee2bf6d186210db1a3cce26489` |
| 8 | `theorem` | [comp_proof](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/comp-proof--566b6580d31ff89ee96ce7ad.md) | 88 | `result-track:566b6580d31ff89ee96ce7adc5066758e6e7aea9b555f08c7ebb9e4b670aa393` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--fe2f7453567a3730f1121e13.md) | 92 | `declaration-track:fe2f7453567a3730f1121e13f3fc3ff61bfd6eee52e22955e3dfb3b5a46a1d5a` |
| 10 | `theorem` | [hom_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/hom-ext-iff--f38f5f3c593fc7264c62005c.md) | 98 | `result-track:f38f5f3c593fc7264c62005c8726b66188c238d20074a8ec0a7d3cf8d25aa564` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/hom-ext--89d5a78ea4ba560e67de9bc8.md) | 105 | `result-track:89d5a78ea4ba560e67de9bc8acdce1d25ffa9ca54b3866af5f591c3eae5446f4` |
| 12 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/comp-f--8485a80c2861bb445a8dda23.md) | 109 | `result-track:8485a80c2861bb445a8dda236239b0057d2a159e9a484ba7b7cd1fe9fca689b4` |
| 13 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/id-f--24520797dd0b98c3025dc879.md) | 112 | `result-track:24520797dd0b98c3025dc87943c57ae571631d8ffa4254f1b6d48b45c83f9089` |
| 14 | `instance` | [coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/coe--749c2c879fee76a317af190d.md) | 116 | `declaration-track:749c2c879fee76a317af190dc4410c31aae646e560f4a703cf39528d6eba9936` |
| 15 | `theorem` | [coe_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/coe-x--1f2655c691b11534e4170622.md) | 119 | `result-track:1f2655c691b11534e41706222591d82483f94b035fc1f69c1fdb6e9349424cdc` |
| 16 | `theorem` | [coe_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/coe-p--b0b73c2fbe2679bf7eb15f02.md) | 122 | `result-track:b0b73c2fbe2679bf7eb15f026d0dab6c716fafe221708fdbe50e480fefc40b9c` |
| 17 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/eqtohom-f--fc4b291ed1833d40d5e02e06.md) | 125 | `result-track:fc4b291ed1833d40d5e02e06dd06d4ae26006f99c68f4e08fd44b18e7fe0203f` |
| 18 | `def` | [toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/tokaroubi--90dc3c6e8c30053a9cd8251b.md) | 135 | `declaration-track:90dc3c6e8c30053a9cd8251bbe7bf0c0e2f131c1ec60582828f5ba1ee34ea7cd` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--31f7a3b66a6ca6837154cec2.md) | 139 | `declaration-track:31f7a3b66a6ca6837154cec2dba99917cf19d56a608149c258c834bbe9d011e8` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--5f17bd87f5111800be2cf97f.md) | 141 | `declaration-track:5f17bd87f5111800be2cf97fc99a58ec7b44893a57ffda5825461f4aa7e65a10` |
| 21 | `instance` | [instAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instadd--650509d7627d0e3b24cbf393.md) | 147 | `declaration-track:650509d7627d0e3b24cbf39389871726dd842f7d28ac337b7fe5a05c0c1b2d77` |
| 22 | `instance` | [instNeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instneg--72d2a74de4ceb6fa6da68ee5.md) | 151 | `declaration-track:72d2a74de4ceb6fa6da68ee54919fafb12041af28eb5abb2dfb2036dcbd069df` |
| 23 | `instance` | [instZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instzero--3ebf2bc6e5e441d2a0928841.md) | 155 | `declaration-track:3ebf2bc6e5e441d2a092884195ba3ced614542b208fc477f8638384208ea772a` |
| 24 | `instance` | [instAddCommGroupHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instaddcommgrouphom--3d20b96f3be65a26f3641652.md) | 158 | `declaration-track:3d20b96f3be65a26f3641652f191a144e3eeb4d3c1fc1bbdc754e10874371700` |
| 25 | `theorem` | [hom_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/hom-eq-zero-iff--a93f41c1b5998e5157775f10.md) | 179 | `result-track:a93f41c1b5998e5157775f101bd2448b59ff9f9011af5cb8a0d19419168ba42e` |
| 26 | `def` | [inclusionHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/inclusionhom--f87b47b64e17b0effd50a170.md) | 184 | `declaration-track:f87b47b64e17b0effd50a1700cc4bfbf613879d91c0701a0c8f9d2d8ef6d099c` |
| 27 | `theorem` | [sum_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/sum-hom--32047e49cd10dd51911b9703.md) | 190 | `result-track:32047e49cd10dd51911b970387b05013a2d90ecd0adf4d66183da2258680ff39` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--28a26087ac0c04cc03053b9e.md) | 197 | `declaration-track:28a26087ac0c04cc03053b9e6b86e19fb15fe765a89bdb5bf8adc54f0889b58d` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--5d5fb43061ea4390dc6c825c.md) | 200 | `declaration-track:5d5fb43061ea4390dc6c825c3a8c8b39067c13fd61f7c025339766c7712430fd` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--6f4efdf7c519577f6963c492.md) | 206 | `declaration-track:6f4efdf7c519577f6963c492afe6e63ebe2c7163de9e8e78782fa4bf6a1c6c21` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/instance--0bc8af6a33bc7fab8ab7b7ff.md) | 215 | `declaration-track:0bc8af6a33bc7fab8ab7b7ff19b58904de9d0a22e3954790efa0b2a3a5b171b3` |
| 32 | `instance` | [toKaroubi_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/tokaroubi-isequivalence--c98c8ef7452e11714bae840e.md) | 225 | `declaration-track:c98c8ef7452e11714bae840ee2671e06ce6f4511553d077d840950856e9f5b60` |
| 33 | `def` | [toKaroubiEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/tokaroubiequivalence--5d65a8942cfdc13356e46c96.md) | 228 | `declaration-track:5d65a8942cfdc13356e46c96db0fbc72f745546c0476600238677ade1c7d1c0a` |
| 34 | `instance` | [toKaroubiEquivalence_functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/tokaroubiequivalence-functor-additive--4f081d83c2177bb616d4ef82.md) | 231 | `declaration-track:4f081d83c2177bb616d4ef823b84fdd1ce910f1639d3148b6d228245a073616f` |
| 35 | `def` | [decompId_i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decompid-i--ec82fdd2e0781106d60dd19c.md) | 241 | `declaration-track:ec82fdd2e0781106d60dd19c4849cb941ffc5792b860bb0518db7e412c54d039` |
| 36 | `def` | [decompId_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decompid-p--15bbc1d51e51bc56eef9df46.md) | 246 | `declaration-track:15bbc1d51e51bc56eef9df464968576984311c9e09cc5590487753a8a68d57a8` |
| 37 | `theorem` | [decompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decompid--b5d07a9d116749a0e7477ceb.md) | 252 | `result-track:b5d07a9d116749a0e7477ceb48dc15a04a9da890b70df120f937006d86b698c7` |
| 38 | `theorem` | [decomp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decomp-p--39baab2ad0ca6bd514daef6b.md) | 256 | `result-track:39baab2ad0ca6bd514daef6bcf573e4429c6f4dc7dab158d5848fae405f759fb` |
| 39 | `theorem` | [decompId_i_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decompid-i-tokaroubi--1b1c183c93d6a60773bfff0b.md) | 260 | `result-track:1b1c183c93d6a60773bfff0b4f2698b987e8c087ae4c45766d2d319b81cf831c` |
| 40 | `theorem` | [decompId_p_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decompid-p-tokaroubi--e3bb13fbb9dba2dc0d8abe36.md) | 263 | `result-track:e3bb13fbb9dba2dc0d8abe3652455711411e66435227754965b46bb5892b8c11` |
| 41 | `theorem` | [decompId_i_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decompid-i-naturality--0d7239a3b07fd2317e353e06.md) | 266 | `result-track:0d7239a3b07fd2317e353e0692285dac20c52dfeb615da6ddd74934875240993` |
| 42 | `theorem` | [decompId_p_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/decompid-p-naturality--2dc2cc60d0eecb5d689e22ae.md) | 270 | `result-track:2dc2cc60d0eecb5d689e22aed2860ad181a6e7a3ea4cd425159ce30a088ce43b` |
| 43 | `theorem` | [zsmul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant23499a858b602541f1c7cb088926ce364325eade3ceb02bbc40a96ce6562bfb4.lean/declarations/zsmul-hom--4f3c96b1c8e88adac3259c09.md) | 275 | `result-track:4f3c96b1c8e88adac3259c0928cb67c78b30dd28f3d393671551e35c13e5dc9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
