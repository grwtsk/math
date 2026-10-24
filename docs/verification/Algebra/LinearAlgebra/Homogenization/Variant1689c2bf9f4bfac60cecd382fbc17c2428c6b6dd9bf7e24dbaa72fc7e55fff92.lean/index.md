# Verification target: GRWTSK.Algebra.LinearAlgebra.Homogenization.Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3042118c5b3242ed79b7ac712559c7ace17902cb",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3042118c5b3242ed79b7ac712559c7ace17902cb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.EqLocus` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Homogenization](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/homogenization--02ab6350594c14d26edd3875.md) | 55 | `declaration-track:02ab6350594c14d26edd38754e6431a4837f13186012575e279dfe14647390e0` |
| 2 | `def` | [equivProdAux](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/equivprodaux--0a85c12c667daf7c6ddd113e.md) | 73 | `declaration-track:0a85c12c667daf7c6ddd113e87d50746acb580c4b2ff70b3236112be27d2657a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/instance--4f3c6f70d502ac7a149c7428.md) | 77 | `declaration-track:4f3c6f70d502ac7a149c74281cdeac1b643472a38f5a65c9a0c3f3f5948f298b` |
| 4 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/instmodule--2ea7f5359f06a58aff228146.md) | 85 | `declaration-track:2ea7f5359f06a58aff228146bd27f8191092090108b46d3d97f66a984bd71a49` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/instance--325dcfa2ae3a24ed1fe4d7b9.md) | 93 | `declaration-track:325dcfa2ae3a24ed1fe4d7b9b49837241eea7c30127f9505737e6739f60620d1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/instance--dd5f25f18d0bc10d81b8a526.md) | 97 | `declaration-track:dd5f25f18d0bc10d81b8a526167312502287c70362e2549bed5549b28ae36bcc` |
| 7 | `def` | [ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofpoint--c76f9e32ee3e19f50bacd4c2.md) | 104 | `declaration-track:c76f9e32ee3e19f50bacd4c2bd3cf81dcccbf1c46247802442d41b49e9f56854` |
| 8 | `def` | [ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofvector--ee8a0318bb12e82e516d522e.md) | 109 | `declaration-track:ee8a0318bb12e82e516d522ec2179d182d3b522d016a94289ba691df8c59b87d` |
| 9 | `theorem` | [ofPoint_linear](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofpoint-linear--15c894bb673bbd2964eabad9.md) | 113 | `result-track:15c894bb673bbd2964eabad97ac74e9d800fe545948d8ae155f05184734ab161` |
| 10 | `theorem` | [ofVector_vsub](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofvector-vsub--7aa73601f7954da8273e594f.md) | 117 | `result-track:7aa73601f7954da8273e594f815ae99337f8685d2ec530d58481d7edfb0b98bd` |
| 11 | `theorem` | [ofVector_smul](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofvector-smul--7142e187cae6d116fb0fde24.md) | 121 | `result-track:7142e187cae6d116fb0fde24db091e250884b98a91ea6adc97b1c2ccc79a0690` |
| 12 | `theorem` | [ofVector_injective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofvector-injective--3b46da8c9bea441923c13afa.md) | 125 | `result-track:3b46da8c9bea441923c13afaa0ae30fc7a366c20662056d6feb53ca41387d902` |
| 13 | `theorem` | [ofPoint_injective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofpoint-injective--50a88cff46afeb92d29bbba3.md) | 128 | `result-track:50a88cff46afeb92d29bbba368b22cde18a3558a6088169fc646e13ec774032e` |
| 14 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/induction-on--4251970d23a59f13d4ffa580.md) | 135 | `result-track:4251970d23a59f13d4ffa5803561e1e7b6899e756247addcc99c5c84c1357780` |
| 15 | `theorem` | [induction_of_point](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/induction-of-point--fc8d1d6d1af6afb4632ecd3a.md) | 143 | `result-track:fc8d1d6d1af6afb4632ecd3ab0cc50b657abe8c3922cde652eb8b9b150f057fc` |
| 16 | `theorem` | [ofVector_ofPoint_cases](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/ofvector-ofpoint-cases--cf6875f8dac84ad2a740d6f0.md) | 152 | `result-track:cf6875f8dac84ad2a740d6f09c000aafb081a68e5ea2a173327cf9c4a5513974` |
| 17 | `theorem` | [span_range_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/span-range-ofpoint--ff869a44a147cfc340ea7a06.md) | 162 | `result-track:ff869a44a147cfc340ea7a068bea190dce0ac1c980ca88fd457c3a335a312c5e` |
| 18 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/hom-ext--c477d2509a56da3d4ffc810c.md) | 173 | `result-track:c477d2509a56da3d4ffc810c49ca73e316787a03419d9e1b2845c7e5083d9ab3` |
| 19 | `theorem` | [hom_ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/hom-ext-iff--e2c2568f8554d678908e1a74.md) | 178 | `result-track:e2c2568f8554d678908e1a74603430b14348fcdf174812fbf0140e1479d3a25f` |
| 20 | `def` | [liftAux](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/liftaux--3476cd16cac90d382856c403.md) | 184 | `declaration-track:3476cd16cac90d382856c403b56d3831f252e358d535f34ae3f0e5cc8ae662bd` |
| 21 | `theorem` | [liftAux_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/liftaux-ofpoint--5a0f6771ae81caba8dba3172.md) | 188 | `result-track:5a0f6771ae81caba8dba3172f001074a3f3159fdb2ff09b5a477ebbdcfb73ec5` |
| 22 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift--3fafeafd919b80090567ab7e.md) | 197 | `declaration-track:3fafeafd919b80090567ab7e2c5836b526634cebefc1ecfa86f67a1fad8d836c` |
| 23 | `theorem` | [lift_apply_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-apply-ofpoint--3e6a4f4f9173e1e120684efb.md) | 211 | `result-track:3e6a4f4f9173e1e120684efbefe1ae98b1be084f9341c137794c892b90874462` |
| 24 | `theorem` | [lift_apply_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-apply-ofvector--f29130558853db2315249ed6.md) | 215 | `result-track:f29130558853db2315249ed6f72a16f7a789b26921f9c0bebac6c772a697c5b7` |
| 25 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-symm-apply--ce39dbded5789a9ca0f1095b.md) | 222 | `result-track:ce39dbded5789a9ca0f1095ba6c6462fbea48a6752426cd75075d3f02a44d57b` |
| 26 | `theorem` | [lift_symm_linear_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-symm-linear-apply--25df62e7303b761902bf4a96.md) | 226 | `result-track:25df62e7303b761902bf4a96489c70524a6dbd4a1d2ee9aba05ab622fb3eb36f` |
| 27 | `theorem` | [lift_symm_id](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-symm-id--452c7e6d8230df19896531f9.md) | 230 | `result-track:452c7e6d8230df19896531f9843af92f9ee996f6feddc2929f4dd82d003999c8` |
| 28 | `theorem` | [lift_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-ofpoint--1fd8076294e05ab8a9050e36.md) | 233 | `result-track:1fd8076294e05ab8a9050e36e90bedb2eced72b61a00a51285e5deb25a6e4164` |
| 29 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-smul--04d0af0ab3826bd7f4ab5450.md) | 241 | `result-track:04d0af0ab3826bd7f4ab545029e0f1732ab167982d11e10e7f3c3de861692abd` |
| 30 | `theorem` | [lift_symm_smul](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-symm-smul--eb46254d943b803bb4be0ef8.md) | 245 | `result-track:eb46254d943b803bb4be0ef8a11d3cd425d3be233bc631b89fb44631ab1eaac3` |
| 31 | `def` | [liftₗ](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift--a208b7a47b55656832f55179.md) | 252 | `declaration-track:a208b7a47b55656832f55179e16c5fee2c74173de29b5e89a17d029aa0cfa754` |
| 32 | `theorem` | [coe_liftₗ](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/coe-lift--1bb372f540866a997fa642b1.md) | 256 | `result-track:1bb372f540866a997fa642b1b4f8c6a70216481db0f59e598341a62785f32fb8` |
| 33 | `theorem` | [coe_liftₗ_symm](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/coe-lift-symm--9c5f090154597570f8ee1c86.md) | 260 | `result-track:9c5f090154597570f8ee1c861837308e6f451fe225d7bd2d3558f1cbaf4efc9d` |
| 34 | `def` | [weight](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/weight--da9a89e789494b47468ecbb4.md) | 267 | `declaration-track:da9a89e789494b47468ecbb407f39eb0706b79f7f42e4719b219c4b4d8823a0b` |
| 35 | `theorem` | [weight_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/weight-ofvector--8ee4bb47f22f5b00c9df38dd.md) | 271 | `result-track:8ee4bb47f22f5b00c9df38dd57052c012fccbd378f38dd9a80d3b40ec6330f38` |
| 36 | `theorem` | [weight_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/weight-ofpoint--b695653aae09f71bd3531e2e.md) | 275 | `result-track:b695653aae09f71bd3531e2e678b725a2f071e28b7e0f761f2b83ce267c74815` |
| 37 | `theorem` | [weight_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/weight-eq-zero-iff--e132bc56db4a0c7e9d2cf385.md) | 278 | `result-track:e132bc56db4a0c7e9d2cf385a7928752ee1d624ad8a83ae5b16cc71926c270d4` |
| 38 | `theorem` | [weight_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/weight-eq-one-iff--ca0880cffa02e54c05d22d2f.md) | 282 | `result-track:ca0880cffa02e54c05d22d2ffdf9842e8beeafd2a8ed265d6d775d84f5c7e26f` |
| 39 | `theorem` | [lift_const_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-const-apply--1038b87103f66bbb82152d35.md) | 289 | `result-track:1038b87103f66bbb82152d35b6d60e5a5cfbbcd8ff9594cbf6c5ce9759ffb454` |
| 40 | `theorem` | [weight_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/weight-surjective--1bef01fb0551664f1402f421.md) | 293 | `result-track:1bef01fb0551664f1402f42149bf65114621c34230b6ec4c3d76fee015ad7528` |
| 41 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map--c3f507edd9fc25bed1031a89.md) | 300 | `declaration-track:c3f507edd9fc25bed1031a897bd99df50474c8bc6d7943ffb7bee78b5ddbd285` |
| 42 | `theorem` | [map_apply_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-apply-ofpoint--0e8b39d5f7d7248a786cf2e5.md) | 304 | `result-track:0e8b39d5f7d7248a786cf2e5e3b333ddf11585fe6417373a8da5eb510c372e71` |
| 43 | `theorem` | [map_apply_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-apply-ofvector--57d5f783033c9a128127ad2b.md) | 308 | `result-track:57d5f783033c9a128127ad2b70115ce492150f4f8d7c0cdc7f6e030fcc5c9258` |
| 44 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-id--60d33e558199c0e33e1d36a7.md) | 313 | `result-track:60d33e558199c0e33e1d36a70125d25cf05435ae9f4738fe6b9e3dc89ca1661c` |
| 45 | `theorem` | [map_injective'](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-injective--cf034ea414d72d286a86fc22.md) | 316 | `result-track:cf034ea414d72d286a86fc224c88e1ff3f3741ab774665ae3f8ba5d1dba9d310` |
| 46 | `theorem` | [map_eq_id_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-eq-id-iff--cf0f5e570709ca418b3e4b28.md) | 322 | `result-track:cf0f5e570709ca418b3e4b288e3da47c99a29a4dd82cc0fd137d9ce5768a3436` |
| 47 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-comp--5e21024b5552303fe3a25b09.md) | 325 | `result-track:5e21024b5552303fe3a25b09f933bca6df4041028e8adde026a0652428188efc` |
| 48 | `theorem` | [weight_map](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/weight-map--1a2ed0c1446d29d34bd5e44e.md) | 329 | `result-track:1a2ed0c1446d29d34bd5e44eca0b17249248aed8a9530be97935d2032ab7d60f` |
| 49 | `theorem` | [lift_map](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/lift-map--760dda939b0a035b25c1dd78.md) | 332 | `result-track:760dda939b0a035b25c1dd78235b45c2e0d7a132d66a9a5a4238a75270795eb6` |
| 50 | `theorem` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-injective--f2f5ba9b1d420ac230c922ca.md) | 337 | `result-track:f2f5ba9b1d420ac230c922cae2af4e8317c1970f02215705b04580a22fc51634` |
| 51 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/map-surjective--7d933f23dcc70d1387799d87.md) | 353 | `result-track:7d933f23dcc70d1387799d8772f5574ed6cff94a3c4c2143f02d6b706597fcec` |
| 52 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/congr--cdd8403fae26a9d742606d60.md) | 369 | `declaration-track:cdd8403fae26a9d742606d60d0b845588cd2050b02e34c35c442dd4f252caad2` |
| 53 | `theorem` | [coe_congr](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/coe-congr--bac20a3b02864018d033f6ee.md) | 373 | `result-track:bac20a3b02864018d033f6ee607d1c93130fe0cc446380d9c0773e96e474ce89` |
| 54 | `theorem` | [toLinearMap_congr](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/tolinearmap-congr--86b4a85616f3d674144e5ea3.md) | 377 | `result-track:86b4a85616f3d674144e5ea396ad6574279012c4aeddeb215be552bc28c756d4` |
| 55 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/congr-symm--8fbca9f886566c356239527c.md) | 381 | `result-track:8fbca9f886566c356239527c0bc33668bc95688542f63ecaba2eb85899781467` |
| 56 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/congr-refl--30f0b19a6c2c671331b393cc.md) | 385 | `result-track:30f0b19a6c2c671331b393cc0883b8f41785392a6562842ae05378b66c68da24` |
| 57 | `theorem` | [congr_eq_refl_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/congr-eq-refl-iff--76c642c96d60cb2ea050efc2.md) | 389 | `result-track:76c642c96d60cb2ea050efc28114f6cce6d438810a9a5284c76f51cbdf7bb425` |
| 58 | `theorem` | [congr_trans](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/congr-trans--b0cd2265b581d4af1054654b.md) | 392 | `result-track:b0cd2265b581d4af1054654bf4542f269d25d9e46cef1cd1e72564a5c21317ce` |
| 59 | `def` | [toProd](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/toprod--183cf5960a1d2e3850b5b2f8.md) | 398 | `declaration-track:183cf5960a1d2e3850b5b2f87c7f725005858f599805271dd6e623d84e55b58e` |
| 60 | `theorem` | [toProd_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/toprod-ofpoint--d52051c52300b7122cb8287a.md) | 407 | `result-track:d52051c52300b7122cb8287a40f61830404bb059edf172de1bcc39bde79ca54f` |
| 61 | `theorem` | [toProd_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/toprod-ofvector--9ce043258f53812950f1a0b3.md) | 411 | `result-track:9ce043258f53812950f1a0b3fa5723b36f96560e9a0342ba4154e7ab620df48a` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/declarations/instance--a07dd5ae643b8abe646b1246.md) | 414 | `declaration-track:a07dd5ae643b8abe646b1246337838b6428171fb885599a058ee6459a7354516` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
