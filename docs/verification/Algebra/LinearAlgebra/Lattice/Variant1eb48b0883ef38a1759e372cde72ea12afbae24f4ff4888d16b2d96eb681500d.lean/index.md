# Verification target: GRWTSK.Algebra.LinearAlgebra.Lattice.Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d8e6cd8bdf2109e0e780abf1742cb30898c5c20",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d8e6cd8bdf2109e0e780abf1742cb30898c5c20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--52e5fc0911bec54e1a8b7014.md) | 50 | `declaration-track:52e5fc0911bec54e1a8b701470be466a942bc7b6707a3f304e930af924a074ff` |
| 2 | `instance` | [inhabited'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/inhabited--d1ab1c66667b8edc4b125004.md) | 55 | `declaration-track:d1ab1c66667b8edc4b1250048f4b6fefe6b284a2e44d0f8aed731c2062b257c0` |
| 3 | `theorem` | [bot_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/bot-coe--a88201599e4991fbbb7718d6.md) | 59 | `result-track:a88201599e4991fbbb7718d6aaf97098ee5d417c30e2b98a07b3268da51fefe0` |
| 4 | `theorem` | [bot_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/bot-toaddsubmonoid--97e145e5aef51b4b284dd096.md) | 63 | `result-track:97e145e5aef51b4b284dd096dc208702ab9ee9a60f36fdf16cc76cfcccabc615` |
| 5 | `lemma` | [bot_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/bot-toaddsubgroup--edaa7447e86ba03544462dfb.md) | 67 | `result-track:edaa7447e86ba03544462dfb7235c49f68f71fcd4aac4c70356b02fca7f3c231` |
| 6 | `theorem` | [mem_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-bot--6f69ec3149a4a42caea3b829.md) | 72 | `result-track:6f69ec3149a4a42caea3b829f3858264a47efae94b655ade8cc621c0b9939dc2` |
| 7 | `instance` | [uniqueBot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/uniquebot--f55fc16bb5e12c5fc76cc813.md) | 75 | `declaration-track:f55fc16bb5e12c5fc76cc81365cf198aec9f5045c5ecd424ec7ed24cee442f11` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--39785e99c6379959eaea4c7e.md) | 78 | `declaration-track:39785e99c6379959eaea4c7efcdab4c94078fd618d9d22dcb12e8387e637cfe7` |
| 9 | `theorem` | [eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/eq-bot-iff--50d986eaaa0b5a090c32edcf.md) | 82 | `result-track:50d986eaaa0b5a090c32edcf4897ba1bdf6cf5c467d0cff0341f508a73c2b963` |
| 10 | `theorem` | [bot_ext](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/bot-ext--e75de9ce9d80a8ac0156175c.md) | 87 | `result-track:e75de9ce9d80a8ac0156175c4d3928056e62d28e45aeb2ddffc927a2311d692b` |
| 11 | `theorem` | [ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/ne-bot-iff--bd996d1950e7471f286b9f8d.md) | 92 | `result-track:bd996d1950e7471f286b9f8d4a3de6dedff07fa881990156eaac92792f1f6ae1` |
| 12 | `theorem` | [nonzero_mem_of_bot_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/nonzero-mem-of-bot-lt--42ac36c4150b576b7ca89894.md) | 95 | `result-track:42ac36c4150b576b7ca89894e3aff518c13c45a39ffd5abed8bd1981a66d48b2` |
| 13 | `theorem` | [exists_mem_ne_zero_of_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/exists-mem-ne-zero-of-ne-bot--b65fb6cb1f5d6f640f2923fa.md) | 99 | `result-track:b65fb6cb1f5d6f640f2923fa103e6516a7f28e9ece816ad9a7632ad4497e69a3` |
| 14 | `def` | [botEquivPUnit](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/botequivpunit--24b85742aed8bd9206b76587.md) | 106 | `declaration-track:24b85742aed8bd9206b765878c6a2d28de13de79548108a5d92ce7205894d809` |
| 15 | `theorem` | [subsingleton_iff_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/subsingleton-iff-eq-bot--0b7623896f8a5724d05f42ef.md) | 114 | `result-track:0b7623896f8a5724d05f42ef0cff7adbefa99fc91ad9a16a59076e9be3de2c9a` |
| 16 | `theorem` | [eq_bot_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/eq-bot-of-subsingleton--6f9470953253b0b3097e4171.md) | 119 | `result-track:6f9470953253b0b3097e417115a76e2dcb4dea6123947ce86ceab2ef76a72732` |
| 17 | `theorem` | [nontrivial_iff_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/nontrivial-iff-ne-bot--9ca4b9798b85a61774eab2d3.md) | 122 | `result-track:9ca4b9798b85a61774eab2d3316819f119b0f1075aed85fd1558e2d02383255d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--c3c1a03fd97a7df4cfebf037.md) | 130 | `declaration-track:c3c1a03fd97a7df4cfebf037590972cfa1c06edfb0212ea452ebd5216cf56a38` |
| 19 | `theorem` | [top_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/top-coe--c5e00a44b55c9ff3d56c1b6f.md) | 136 | `result-track:c5e00a44b55c9ff3d56c1b6fb9ec2563e3da40d7be2fd64faa06fcdfc70d3c79` |
| 20 | `theorem` | [top_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/top-toaddsubmonoid--9a0e5cc76aa08f53c7dbf95c.md) | 140 | `result-track:9a0e5cc76aa08f53c7dbf95c918027f670323e2447412cf5a2fb261d1c7407a9` |
| 21 | `lemma` | [top_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/top-toaddsubgroup--d13621599b3dcac2716de722.md) | 144 | `result-track:d13621599b3dcac2716de72206be36c9e670483eb697f53a5da42d5e39fa2844` |
| 22 | `theorem` | [mem_top](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-top--052bc78ee450865dcd4ebc2c.md) | 148 | `result-track:052bc78ee450865dcd4ebc2c640b5240b7a40fca297e9368d44ae1fa2627946b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--08cc20e0a270246fa02a5871.md) | 151 | `declaration-track:08cc20e0a270246fa02a5871ccfda5c979f7c3b97951a643bab93a0d55a02d89` |
| 24 | `theorem` | [eq_top_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/eq-top-iff--06451d7d30e662043bdb5cd6.md) | 155 | `result-track:06451d7d30e662043bdb5cd626fc9219998144ac023ae9f0877c4a7fb4213964` |
| 25 | `def` | [topEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/topequiv--7d257ee8c519ec6ab2dcecb0.md) | 162 | `declaration-track:7d257ee8c519ec6ab2dcecb03207cf15baf9cbac35dbac6b2a4c923d0304c674` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--611d91a717ad57e98ad380a1.md) | 174 | `declaration-track:611d91a717ad57e98ad380a107a1922318a5af92cf033071d984d565aabf2dc7` |
| 27 | `theorem` | [sInf_le'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/sinf-le--0796223af2935988ccfd47f5.md) | 181 | `result-track:0796223af2935988ccfd47f579f59a40362eadcacf80b684867ac413c991bb48` |
| 28 | `theorem` | [le_sInf'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/le-sinf--6cd100789d901a13d6e596d2.md) | 184 | `result-track:6cd100789d901a13d6e596d2a5a484cc16404b63cc92aa48b149488ce676b712` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--42ad2f49e11666655ddbb1a2.md) | 187 | `declaration-track:42ad2f49e11666655ddbb1a2888b7f940fc1c589dbbf3c09628eb76a5111726f` |
| 30 | `instance` | [completeLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/completelattice--c889c77c01834849393adef1.md) | 194 | `declaration-track:c889c77c01834849393adef1ed444d6ee986231a0e684ba40567136681d5ce52` |
| 31 | `theorem` | [inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/inf-coe--61da71fd046b116bcf2a2a7d.md) | 212 | `result-track:61da71fd046b116bcf2a2a7d4cdbb391561c19efbd5b8417e0cde895edceec2b` |
| 32 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-inf--8877eade00f865a8dede02a5.md) | 216 | `result-track:8877eade00f865a8dede02a519195adad31865708cb6a634722e0fb8460f876f` |
| 33 | `theorem` | [sInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/sinf-coe--2a340735816b4e12f35dcfa8.md) | 220 | `result-track:2a340735816b4e12f35dcfa859a8530aba09eee28c3ada053398fa1ce8640078` |
| 34 | `theorem` | [finset_inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/finset-inf-coe--721410a641dd15ecf74c30a4.md) | 224 | `result-track:721410a641dd15ecf74c30a4f5dccbde5d2bd49a3198b76548ab0b58204d1a84` |
| 35 | `theorem` | [iInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/iinf-coe--adb5700417b82a2a0d912644.md) | 233 | `result-track:adb5700417b82a2a0d912644f4038f74cf60f3b2c720ec243a16ab5cd276d995` |
| 36 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-sinf--fc4024d519228d2d7e154cab.md) | 237 | `result-track:fc4024d519228d2d7e154cab4cf90b79d0c6e99c1582aa9ae33e3591bdc20e8b` |
| 37 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-iinf--85740fe0daa1a822fb705cdb.md) | 241 | `result-track:85740fe0daa1a822fb705cdbe33e0c29e662231343b76c2a767a128878f73d3c` |
| 38 | `theorem` | [mem_finset_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-finset-inf--d7aed837cc91b0d7834ee736.md) | 245 | `result-track:d7aed837cc91b0d7834ee7360d9eb4d98e4551529c585b7735d927febe483fc7` |
| 39 | `lemma` | [inf_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/inf-iinf--98d7a9df61ecdffa22bcd328.md) | 249 | `result-track:98d7a9df61ecdffa22bcd32817f81c5678d23907ef4fdb1fd38a359c5bf94ad6` |
| 40 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-sup-left--e03d1d57aad19deee735064b.md) | 253 | `result-track:e03d1d57aad19deee735064bced8d1b8f9295ec255f64f0324c2b7a5d2c85c55` |
| 41 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-sup-right--b4335637267b7d67e514b6e1.md) | 258 | `result-track:b4335637267b7d67e514b6e1e59c9ecf8c05ce58d7c9760221ff2f00b842c615` |
| 42 | `theorem` | [add_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/add-mem-sup--a80e65555493ae12db89adcf.md) | 263 | `result-track:a80e65555493ae12db89adcf446ac128eee842fa881fc94f717d557acee922f1` |
| 43 | `theorem` | [sub_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/sub-mem-sup--4cd3399517bbecb392cb378e.md) | 266 | `result-track:4cd3399517bbecb392cb378e988008fe5f24a680a60a4fff35a463d6ba274f79` |
| 44 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-isup-of-mem--6972996b962689e4590ab9f2.md) | 271 | `result-track:6972996b962689e4590ab9f2560e2bbb8d88d1606cb0e660cf8a1926fea70079` |
| 45 | `theorem` | [sum_mem_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/sum-mem-isup--354bc25e7d4694e7d6663b46.md) | 275 | `result-track:354bc25e7d4694e7d6663b46f3c80073f9958572f75dc0371c4add7a28eb2470` |
| 46 | `theorem` | [sum_mem_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/sum-mem-bisup--422e1edfad1f3d6a84d3925d.md) | 279 | `result-track:422e1edfad1f3d6a84d3925de3f6fa1f85342f80e1e96a957b60fa54f37a6955` |
| 47 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-ssup-of-mem--854fe202fac0bb84dfdfeeaf.md) | 286 | `result-track:854fe202fac0bb84dfdfeeaf1a1fafcc9ad6a5241d89877342f2204be84f5409` |
| 48 | `theorem` | [toAddSubmonoid_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/toaddsubmonoid-ssup--d98ff419078784e580bfc37a.md) | 293 | `result-track:d98ff419078784e580bfc37a96ab2847f480baa0ae2b1554d495a8f2144d5f66` |
| 49 | `theorem` | [subsingleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/subsingleton-iff--35000a04abf42fc7e8592e0f.md) | 316 | `result-track:35000a04abf42fc7e8592e0f12f754e8f31d71f46d469fd83461604df66950eb` |
| 50 | `theorem` | [nontrivial_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/nontrivial-iff--a81aac3fe9023d55b2d3f424.md) | 323 | `result-track:a81aac3fe9023d55b2d3f424083de10ca34c910e6b946cc3d28418ee5ad2366c` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--3b71ac9fdcafde96494be42e.md) | 330 | `declaration-track:3b71ac9fdcafde96494be42ec220075530a1c9281fb1a0be6b97c72991d91e9a` |
| 52 | `instance` | [unique'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/unique--60654a0fdadf5886f1c58954.md) | 333 | `declaration-track:60654a0fdadf5886f1c5895488ee187530452e31b3a900ff50414feed0058f8a` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/instance--0736483e054af0df931dae6a.md) | 336 | `declaration-track:0736483e054af0df931dae6ae5d392da63d91c390646d57e3efa3f923fa4cb3d` |
| 54 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/disjoint-def--ac3e56ab6aa0a59fec11bb86.md) | 343 | `result-track:ac3e56ab6aa0a59fec11bb8620d35f06df1396321ea34f7f33db3065ba98390e` |
| 55 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/disjoint-def--b5bd9a9e928dfc2bf20512e6.md) | 346 | `result-track:b5bd9a9e928dfc2bf20512e6c12651d44ec0e6cdca2a200601e793e0c2f4ce3f` |
| 56 | `theorem` | [eq_zero_of_coe_mem_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/eq-zero-of-coe-mem-of-disjoint--b2cb79a9a36099b444af7cba.md) | 351 | `result-track:b2cb79a9a36099b444af7cba2b78251d234efd0b99c24204e4ee16db8ad6c6ae` |
| 57 | `theorem` | [mem_right_iff_eq_zero_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-right-iff-eq-zero-of-disjoint--4a8777a379de37f556010a23.md) | 354 | `result-track:4a8777a379de37f556010a23b2237b0e488467ce07d9164a4db5a0409607a1ef` |
| 58 | `theorem` | [mem_left_iff_eq_zero_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/mem-left-iff-eq-zero-of-disjoint--68786888699a64420522bc07.md) | 358 | `result-track:68786888699a64420522bc07e29fd32fe0096e139b947190f5c25a9283ff681c` |
| 59 | `def` | [AddSubmonoid.toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubmonoid-tonatsubmodule--fdd187ffc40c8224819c1e41.md) | 371 | `declaration-track:fdd187ffc40c8224819c1e413a6adab19d20f4f3caa3ed21d4b586ce430cb6da` |
| 60 | `theorem` | [AddSubmonoid.toNatSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubmonoid-tonatsubmodule-symm--3df2ddb13f0f793d29da32b5.md) | 379 | `result-track:3df2ddb13f0f793d29da32b55cc13ef28b6576867ae3101003d37a0d5236866d` |
| 61 | `theorem` | [AddSubmonoid.coe_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubmonoid-coe-tonatsubmodule--c3b7bb672e7d1f56f4c63019.md) | 384 | `result-track:c3b7bb672e7d1f56f4c630192098c4ea41f52abc84d7e413de11db4a2130d8fc` |
| 62 | `theorem` | [AddSubmonoid.toNatSubmodule_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubmonoid-tonatsubmodule-toaddsubmonoid--b345282eca7e54587af5789d.md) | 389 | `result-track:b345282eca7e54587af5789d7b2b124ea355b7e7eea3937cdffaca3bbd9f7947` |
| 63 | `theorem` | [Submodule.toAddSubmonoid_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/submodule-toaddsubmonoid-tonatsubmodule--842f6d5dd24ba597996bb62f.md) | 394 | `result-track:842f6d5dd24ba597996bb62ff60462359341f7a8fa1bfc04268ac3c630481627` |
| 64 | `def` | [AddSubgroup.toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubgroup-tointsubmodule--03db3ef130cac9b4014969eb.md) | 411 | `declaration-track:03db3ef130cac9b4014969ebb50742376a373f114d3f29d5cad23365a9ab42d8` |
| 65 | `theorem` | [AddSubgroup.toIntSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubgroup-tointsubmodule-symm--1f609c052c6bf4d40b3562f1.md) | 419 | `result-track:1f609c052c6bf4d40b3562f192736facdce3333ab58f5e94cc9eeb75bc8563b9` |
| 66 | `theorem` | [AddSubgroup.coe_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubgroup-coe-tointsubmodule--95964849d3dd86d6ad406ec0.md) | 424 | `result-track:95964849d3dd86d6ad406ec07982aeabfa2bcb374a5979c1293ebf9ae59c7775` |
| 67 | `theorem` | [AddSubgroup.toIntSubmodule_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/addsubgroup-tointsubmodule-toaddsubgroup--91e5c957b3c9249ebec4788d.md) | 429 | `result-track:91e5c957b3c9249ebec4788df3c71c8b3c70317e8217d000c081de90142c9263` |
| 68 | `theorem` | [Submodule.toAddSubgroup_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/declarations/submodule-toaddsubgroup-tointsubmodule--a7e51bd5f4129ccb1fa2449d.md) | 434 | `result-track:a7e51bd5f4129ccb1fa2449df1149253721383dae22b0d72536795e1c335f550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
