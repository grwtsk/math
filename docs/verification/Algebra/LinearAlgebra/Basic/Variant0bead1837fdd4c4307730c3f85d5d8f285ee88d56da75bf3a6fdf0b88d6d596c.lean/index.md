# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ad5da206c38c69ad087a043509168c091a9dd99",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ad5da206c38c69ad087a043509168c091a9dd99`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.NonUnitalNonAssocAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Exp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LieDerivation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/liederivation--fef97ac1f536b742840b6fc9.md) | 49 | `declaration-track:fef97ac1f536b742840b6fc945f4913c00acd8b2b1e4d999a28f419dbc0f51e8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instance--bdbdb697a7a5be4d6f0b56d3.md) | 66 | `declaration-track:bdbdb697a7a5be4d6f0b56d3ba10ca2d0536d6374cb226c295e57209ddd31f20` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instlinearmapclass--590e6a6945f5775720a869fc.md) | 70 | `declaration-track:590e6a6945f5775720a869fcf9fccbfbafc837f4cbdf4c6ac27b56bfc451e33b` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/tofun-eq-coe--f50464d90d7754c99a3025f1.md) | 74 | `result-track:f50464d90d7754c99a3025f14092ac3cb329eab2345779401650f8325a66c76d` |
| 5 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/simps-apply--a795de10bb09e51398ec4d89.md) | 77 | `declaration-track:a795de10bb09e51398ec4d897593cfb813931f7fd66d01c7ae587bbac048eb45` |
| 6 | `instance` | [instCoeToLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instcoetolinearmap--c1a85519a0023e0ef84de1e6.md) | 83 | `declaration-track:c1a85519a0023e0ef84de1e6ee9baa7b94686ac4eb84f5c3ae7057f9b4f9d8f0` |
| 7 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/mk-coe--17a5698ba472ae1a3fd2e1df.md) | 87 | `result-track:17a5698ba472ae1a3fd2e1df10d339871a4dcf58e0f97d78d511482325b69392` |
| 8 | `theorem` | [coeFn_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coefn-coe--611053db698e8b334cbbb6dc.md) | 91 | `result-track:611053db698e8b334cbbb6dc15ca6f66f51a13fddfaf97d53b697e6496ad9ba2` |
| 9 | `theorem` | [coe_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-injective--a4ff691cb0aaa68a91b9d8da.md) | 94 | `result-track:a4ff691cb0aaa68a91b9d8dabb0528f39944b0e3865a0466ad84d0897ca66feb` |
| 10 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/ext--3663822b015850b5c28e9852.md) | 98 | `result-track:3663822b015850b5c28e9852898d68157f0b69d0e9ba7f4970d4e9a6c8476c91` |
| 11 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/congr-fun--29172f8f5ca4f2fa888b0f58.md) | 101 | `result-track:29172f8f5ca4f2fa888b0f58e881fab7a57e28146af0434d9b9a425417e38b27` |
| 12 | `lemma` | [apply_lie_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/apply-lie-eq-sub--ecb4068c86031ec31014833c.md) | 105 | `result-track:ecb4068c86031ec31014833ce8e5799927fcaa3b6df5296a7fc534e940fd20c9` |
| 13 | `lemma` | [apply_lie_eq_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/apply-lie-eq-add--c568348bff1ad906acb8c436.md) | 110 | `result-track:c568348bff1ad906acb8c43699a06d6cd71f90aa1b0c9731abb61a1593ebfa05` |
| 14 | `theorem` | [eqOn_lieSpan](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/eqon-liespan--397cf2bdc53c89f2f1b10f69.md) | 115 | `result-track:397cf2bdc53c89f2f1b10f691e9dfecdaa61c02b1362bd89db5021d7cb05554a` |
| 15 | `theorem` | [ext_of_lieSpan_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/ext-of-liespan-eq-top--cee083455042b27c874c7405.md) | 127 | `result-track:cee083455042b27c874c74050d54cc338fdd07119d58b4f23d93debda1188de6` |
| 16 | `theorem` | [iterate_apply_lie](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/iterate-apply-lie--55cfaca9a02b9cf580626789.md) | 136 | `result-track:55cfaca9a02b9cf58062678930c83e6a34626a1b56d1660762bf178d9b30d9ad` |
| 17 | `theorem` | [iterate_apply_lie'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/iterate-apply-lie--0b51f0dd258845cbfe39e0f0.md) | 148 | `result-track:0b51f0dd258845cbfe39e0f082276171e79350ea47df01525073ee09ab619dce` |
| 18 | `instance` | [instZero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instzero--a04a92bf9004fb8678255393.md) | 155 | `declaration-track:a04a92bf9004fb86782553934cc2f32835b26557633008c7b56cba8299b3bf5f` |
| 19 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-zero--84af9721105a7d71fd045708.md) | 161 | `result-track:84af9721105a7d71fd0457088131831ef051aaf0d70538e3133367390d2a96bd` |
| 20 | `theorem` | [coe_zero_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-zero-linearmap--88870f0ade730c27f84d2128.md) | 165 | `result-track:88870f0ade730c27f84d21280f6cbe13debaf490c69b08cb3b207703a6e0e760` |
| 21 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/zero-apply--0dcdf6231765737e9dd5dabb.md) | 168 | `result-track:0dcdf6231765737e9dd5dabb0b713de7353edb39b98755f5007615a9d1331a16` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instance--dbd2be14cc7a1baa5f511367.md) | 171 | `declaration-track:dbd2be14cc7a1baa5f5113673d3f5ba66ae6da5d8f9af64688b0ad368740d26e` |
| 23 | `instance` | [instAdd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instadd--f0923ea775189ecfc21feeb5.md) | 174 | `declaration-track:f0923ea775189ecfc21feeb5b2a293430389cd1c6732896914cf9ce407d81e92` |
| 24 | `theorem` | [coe_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-add--34e77cbfe140a0e8bea9f928.md) | 181 | `result-track:34e77cbfe140a0e8bea9f9288d61568e607bdd349afbd67d4d5ca4dd565b9170` |
| 25 | `theorem` | [coe_add_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-add-linearmap--cb8803f7f9c2115423cb6f6b.md) | 185 | `result-track:cb8803f7f9c2115423cb6f6bae26a406b321871088e03f0fa8eeab8624a5cd3e` |
| 26 | `theorem` | [add_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/add-apply--c2bb5eeed80b92c0b76e6a27.md) | 188 | `result-track:c2bb5eeed80b92c0b76e6a27b08d62b7a0d43c32c41c30f11e59880ea0e58fd2` |
| 27 | `theorem` | [map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/map-neg--91372f2b1d102fad8ed70694.md) | 191 | `result-track:91372f2b1d102fad8ed7069497abcc0ac19280e18c87f173e4a3cb0d9d415e95` |
| 28 | `theorem` | [map_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/map-sub--4b7b85c2ce1442978dfa5275.md) | 194 | `result-track:4b7b85c2ce1442978dfa5275d4727d4157ad073e35735bf08b77bfe3822208b9` |
| 29 | `instance` | [instNeg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instneg--5a1efed727ae528a7607387e.md) | 197 | `declaration-track:5a1efed727ae528a7607387e0df7b6881837296642da2fb98ac3d5843af3f239` |
| 30 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-neg--c8d5bf6f3609c2c324c06ec5.md) | 204 | `result-track:c8d5bf6f3609c2c324c06ec54bbc241530b101831a2eda43df3d2bcb2202317e` |
| 31 | `theorem` | [coe_neg_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-neg-linearmap--23c2dbd3f2b5230d37fe61b1.md) | 208 | `result-track:23c2dbd3f2b5230d37fe61b117a99b95040120c1acbe7d00a014e084802aa200` |
| 32 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/neg-apply--dc3ce1a5861509df8258c98a.md) | 211 | `result-track:dc3ce1a5861509df8258c98a3cd34dc081b582c0e9523a01140b0a7eec37a4ed` |
| 33 | `instance` | [instSub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instsub--5f63bc3c9e3d5747406c7b82.md) | 214 | `declaration-track:5f63bc3c9e3d5747406c7b8235ffb61110fa9dcc4b848f0a942b109b89188240` |
| 34 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-sub--8634733812347fcf7800f6bb.md) | 220 | `result-track:8634733812347fcf7800f6bb39b2e4899d84693b83125ff5b072dab0771002a7` |
| 35 | `theorem` | [coe_sub_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-sub-linearmap--b285751f6734948cc8df2d47.md) | 224 | `result-track:b285751f6734948cc8df2d470176c9ba29e634d04c5c8a8e4ea476c7696aa1a9` |
| 36 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/sub-apply--a5dd6dcd7cbe275f47023f82.md) | 227 | `result-track:a5dd6dcd7cbe275f47023f821d2ef8d62424bd5240fba6b04f5c175628eed85a` |
| 37 | `class` | [SMulBracketCommClass](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/smulbracketcommclass--fcd1606e03b373d6861c405d.md) | 233 | `declaration-track:fcd1606e03b373d6861c405df53df5bdf568f6cdc59eb2835f6f953a26fb611c` |
| 38 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instsmul--d5bebb2b965fcd6ab584dfcc.md) | 242 | `declaration-track:d5bebb2b965fcd6ab584dfcc1ac5a3caca47c3d4bba2dc86e2f2d94069c40b45` |
| 39 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-smul--3656903fbd8c8899883c4226.md) | 249 | `result-track:3656903fbd8c8899883c4226388162dd70038974f7468cdc147b5957fc65dd29` |
| 40 | `theorem` | [coe_smul_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coe-smul-linearmap--f28cd3b94aeae6f88adc5ad7.md) | 253 | `result-track:f28cd3b94aeae6f88adc5ad7dca4af659d20c0afac981f86e91b32772c7296e1` |
| 41 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/smul-apply--080ddf9c48cbea711697f095.md) | 256 | `result-track:080ddf9c48cbea711697f09552026895cf658e7714a17811dae5f021468fed77` |
| 42 | `instance` | [instSMulBase](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instsmulbase--0aee22a75b2c947af797269b.md) | 259 | `declaration-track:0aee22a75b2c947af797269be8be0cb29aa00be0d0ad93bd1a24d69ad41ae207` |
| 43 | `instance` | [instSMulNat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instsmulnat--ff8396844b4652f3207bea12.md) | 261 | `declaration-track:ff8396844b4652f3207bea12dd8dbcd931e38f7263977294e79ba046efd6f15c` |
| 44 | `instance` | [instSMulInt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instsmulint--4d5d0dd31363a22d1451e707.md) | 263 | `declaration-track:4d5d0dd31363a22d1451e707993da76bad7fd12b39d15d77eb79df1dc46893f2` |
| 45 | `instance` | [instAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instaddcommgroup--d5cce1bd5cc9286248badf3d.md) | 265 | `declaration-track:d5cce1bd5cc9286248badf3db18079996bab94cb997db6837dcbdfa7c63f82b9` |
| 46 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coefnaddmonoidhom--809a5b800c86a8f5b277394d.md) | 269 | `declaration-track:809a5b800c86a8f5b277394ddfa9bd64b5162edac3935572fad2ec730026c64a` |
| 47 | `lemma` | [coeFnAddMonoidHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/coefnaddmonoidhom-apply--96a34b847cfeaa3e32ca0a2c.md) | 275 | `result-track:96a34b847cfeaa3e32ca0a2c9eed5be8dfe8a78ccdd9197c29e0528b9e588bc1` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instance--03a2be4112697fc9bc179fad.md) | 277 | `declaration-track:03a2be4112697fc9bc179fadee6b5a85701eac6562132283fe3718ac7584a07d` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instance--eed77a999711575100335aa2.md) | 280 | `declaration-track:eed77a999711575100335aa2390ae41313762aabfc1405f8c4a1669b40fdd56d` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instance--30e29fb9f8ff793d3b3969ee.md) | 283 | `declaration-track:30e29fb9f8ff793d3b3969ee01f11fbb513a153983228eaf446d34a7f616b3a9` |
| 51 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instmodule--3f3f0968e6982a13f58d200e.md) | 288 | `declaration-track:3f3f0968e6982a13f58d200e4c1d68833749601f82b7086617f0b16bc861dec7` |
| 52 | `instance` | [instBracket](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instbracket--d4325a4b432b44649f638a1a.md) | 299 | `declaration-track:d4325a4b432b44649f638a1ac813339aeed9be5282def6231eb975f3266adf2f` |
| 53 | `lemma` | [commutator_coe_linear_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/commutator-coe-linear-map--090b2c360e0eb803059a631a.md) | 308 | `result-track:090b2c360e0eb803059a631abdfc6e2f1fb7386591621f866fe5fe58e2902727` |
| 54 | `lemma` | [commutator_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/commutator-apply--789689d9a81721c7c0380dc6.md) | 311 | `result-track:789689d9a81721c7c0380dc6f719f20b0d94a2f560f7efa216940a9e309e3f98` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instance--c7b2b0fac1f7de5f4153b4dd.md) | 314 | `declaration-track:c7b2b0fac1f7de5f4153b4dde5d457eda5ce2937f0f2ebcedd6b8a93a1f889e2` |
| 56 | `instance` | [instLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instliealgebra--893187a17c8b5966a3b61e54.md) | 325 | `declaration-track:893187a17c8b5966a3b61e54f4b751c8f0b1e4a888a4c46c19c3b02e82225bdc` |
| 57 | `lemma` | [lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/lie-apply--3d52d99d4ad7bdb808892e5c.md) | 328 | `result-track:3d52d99d4ad7bdb808892e5c949ed98cc31e195d0788ef58a14e688e60e47c79` |
| 58 | `def` | [toLinearMapLieHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/tolinearmapliehom--ed5e1971c2ab674003feae23.md) | 339 | `declaration-track:ed5e1971c2ab674003feae235be6d79126b6dac98f387835dfb544f655713840` |
| 59 | `lemma` | [toLinearMapLieHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/tolinearmapliehom-injective--78adab9c1b5e939457d54095.md) | 346 | `result-track:78adab9c1b5e939457d54095787f3349ca2dc5ce48dfd3d61592b24c7521ac1a` |
| 60 | `instance` | [instNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instnoetherian--78e9a38d9f5943b7df39df15.md) | 350 | `declaration-track:78e9a38d9f5943b7df39df15d7c90b5147f699bcfaf4f43e6fb82d9398a01629` |
| 61 | `def` | [inner](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/inner--cd0b487da6705d1b9c5b556e.md) | 362 | `declaration-track:cd0b487da6705d1b9c5b556ee1d04265cd4a285a5ce9e83504526501f551f83e` |
| 62 | `instance` | [instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instlieringmodule--b948ff2656cf2736aae4f70c.md) | 369 | `declaration-track:b948ff2656cf2736aae4f70c1a38c05de6505678df5eeb3889fb83b68c163219` |
| 63 | `lemma` | [lie_lieDerivation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/lie-liederivation-apply--5723e9c8bf82e6531f13f8f9.md) | 375 | `result-track:5723e9c8bf82e6531f13f8f9b301610b0b81501665d8dfbf54f34e18579f3bda` |
| 64 | `lemma` | [lie_coe_lieDerivation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/lie-coe-liederivation-apply--9ab2d0602607b3a941472b60.md) | 379 | `result-track:9ab2d0602607b3a941472b60e95eab2d660a5cb2361af8940df5ac1e9fd8cbf0` |
| 65 | `instance` | [instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/instliemodule--25542c72605c4ef720389452.md) | 383 | `declaration-track:25542c72605c4ef720389452170347fab93003d7e62968391fbca8d53efcdd28` |
| 66 | `lemma` | [leibniz_lie](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/leibniz-lie--d62f61dfa731e12bf6f32fc4.md) | 387 | `result-track:d62f61dfa731e12bf6f32fc407ba0a76d533582689457c1ff453fd242ae5c776` |
| 67 | `def` | [exp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/exp--3225a6e25f0a86dc035658f6.md) | 401 | `declaration-track:3225a6e25f0a86dc035658f6f83c8b6924aa5686aaca536952f431b570e6339b` |
| 68 | `lemma` | [exp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/exp-apply--16a8077eb520c23070f79bb9.md) | 417 | `result-track:16a8077eb520c23070f79bb9533361208638c37145771257343879091aba4b68` |
| 69 | `lemma` | [exp_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/declarations/exp-map-apply--f87a74fb1d251832b3a4b3ba.md) | 421 | `result-track:f87a74fb1d251832b3a4b3bac25d7d076f5d25e46a64b65935387f4c20bee615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
