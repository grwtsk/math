# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerBasis.Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "792664d0f59d8544f1883d1f229731146b3af670",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `792664d0f59d8544f1883d1f229731146b3af670`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/powerbasis--0794f46f2eaca185249cba97.md) | 57 | `declaration-track:0794f46f2eaca185249cba9788510be410b258f83c9ccf011b4203c629736a0f` |
| 2 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/coe-basis--78cee2cb06d451df7a1d1116.md) | 70 | `result-track:78cee2cb06d451df7a1d11168d26b9b3deea2036243d7db55c55b15c1d36f6ba` |
| 3 | `theorem` | [finite](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/finite--477bfe7a5ec66b1aa63ca221.md) | 74 | `result-track:477bfe7a5ec66b1aa63ca221c3eaa1337e701347ce2e9e0f87d43939ef85570b` |
| 4 | `theorem` | [finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/finrank--987120f6e44ff3ab11fbceb9.md) | 77 | `result-track:987120f6e44ff3ab11fbceb9ee48d57b4eae88f7dc78a281cae68539c2d0de1a` |
| 5 | `theorem` | [mem_span_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/mem-span-pow--79f59547b1765e5256e5ea28.md) | 81 | `result-track:79f59547b1765e5256e5ea28fa0265c296dfc58ab2e333d0c86a441d7d061663` |
| 6 | `theorem` | [mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/mem-span-pow--d37df85f09d36bfb214f69b7.md) | 96 | `result-track:d37df85f09d36bfb214f69b7b17eb1465e4a7741d71304e1478d2b03743a22c0` |
| 7 | `theorem` | [dim_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/dim-ne-zero--5730b425e6b5af27520b39ea.md) | 109 | `result-track:5730b425e6b5af27520b39eaa9619741e573dcfd49f3eaeaf4da331b2de1c23b` |
| 8 | `theorem` | [dim_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/dim-pos--472ee9ee5a931192459da4cc.md) | 112 | `result-track:472ee9ee5a931192459da4cc72499dad03f41a35380b7df389d0431326d2e28b` |
| 9 | `theorem` | [exists_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/exists-eq-aeval--36691d6765e264141c2c9833.md) | 115 | `result-track:36691d6765e264141c2c9833f39c8d6498c7ced841a97364874db6923e512d95` |
| 10 | `theorem` | [exists_eq_aeval'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/exists-eq-aeval--397587d6b32dbfbe404c4856.md) | 119 | `result-track:397587d6b32dbfbe404c4856cb193be768523ae45c8f2b85798fb0dab76a49c2` |
| 11 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/alghom-ext--a5386564a15ae30f277d8b39.md) | 124 | `result-track:a5386564a15ae30f277d8b39f9d8e439714b6712e8815f8b2e131b3f35afe697` |
| 12 | `theorem` | [exists_smodEq](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/exists-smodeq--708921a36ce5cf035a99e1d3.md) | 131 | `result-track:708921a36ce5cf035a99e1d3bf41fd2a4ffd0a75457fe3aa817c7e0b8d9f5ffe` |
| 13 | `theorem` | [exists_gen_dvd_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/exists-gen-dvd-sub--0c352f9e2ce1c41b0d33dbfc.md) | 150 | `result-track:0c352f9e2ce1c41b0d33dbfcf267f7533086785528bd0990a2bb3ad56a70675d` |
| 14 | `def` | [minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/minpolygen--cb088f98cc761a8c9e4dcdd0.md) | 158 | `declaration-track:cb088f98cc761a8c9e4dcdd0d6640870a4ca5b3c9c6d1530f0466a9a0ce4bc1a` |
| 15 | `theorem` | [aeval_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/aeval-minpolygen--b86a943a5fb4e6d619790795.md) | 161 | `result-track:b86a943a5fb4e6d61979079551e12ff8b5057397ecbd0c6196741d113acd3175` |
| 16 | `theorem` | [minpolyGen_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/minpolygen-monic--5529a4232fd27d9a9176ea0e.md) | 167 | `result-track:5529a4232fd27d9a9176ea0e3699d67e504e16d796c2c27f48474bb2aff7f8ce` |
| 17 | `theorem` | [dim_le_natDegree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/dim-le-natdegree-of-root--bf4bf50f9d145be6b902380e.md) | 173 | `result-track:bf4bf50f9d145be6b902380e1cf6c0976b5ee3794986ecfeceb7687023eb5df1` |
| 18 | `theorem` | [dim_le_degree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/dim-le-degree-of-root--a7f9b32d5915b0a1ef570a16.md) | 182 | `result-track:a7f9b32d5915b0a1ef570a16caf5e20927ef9181730c6fdbcb8602a006abe29e` |
| 19 | `theorem` | [degree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/degree-minpolygen--3557cf98bd121bbb7f425a70.md) | 187 | `result-track:3557cf98bd121bbb7f425a703c8ba14c7a834e02d53afb2bde9ec12e11db8767` |
| 20 | `theorem` | [natDegree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/natdegree-minpolygen--910a8c39a220a1d91cc247eb.md) | 193 | `result-track:910a8c39a220a1d91cc247eb642bce92f91ff55368b8b7c207acdf841a6f9247` |
| 21 | `theorem` | [minpolyGen_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/minpolygen-eq--04df390930b52de4fadd963b.md) | 198 | `result-track:04df390930b52de4fadd963b5c13fe48f5b035028f03183d5581869d761d074c` |
| 22 | `theorem` | [isIntegral_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/isintegral-gen--5dc05bb94cc88c14c784352e.md) | 204 | `result-track:5dc05bb94cc88c14c784352ef9406de107aea3986b6a14fdc6c8e4741e6b611c` |
| 23 | `theorem` | [degree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/degree-minpoly--6d2fe617989d07ce70971d49.md) | 208 | `result-track:6d2fe617989d07ce70971d49bc94d68db03559e3b234998844775b0046830acb` |
| 24 | `theorem` | [natDegree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/natdegree-minpoly--bcd9cf4c7a5c8d1926bf5700.md) | 212 | `result-track:bcd9cf4c7a5c8d1926bf57006742d66519abd4b632d6a227f2ced0e4a800bc51` |
| 25 | `theorem` | [leftMulMatrix](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/leftmulmatrix--e2197b2a71d0f22fc802824a.md) | 215 | `result-track:e2197b2a71d0f22fc802824a2e70f96383be36daa79ebff44b6bb36d50fa997e` |
| 26 | `theorem` | [constr_pow_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/constr-pow-aeval--ce1ca7522f6228b4088c2bbb.md) | 240 | `result-track:ce1ca7522f6228b4088c2bbb690ceebf063c4cbb4bec13a297f5c40d41675ca5` |
| 27 | `theorem` | [constr_pow_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/constr-pow-gen--cf139dff7c05e9141b69d1d2.md) | 259 | `result-track:cf139dff7c05e9141b69d1d2de985c3d7baafdb8d30b04f569b4de4baca4b0a4` |
| 28 | `theorem` | [constr_pow_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/constr-pow-algebramap--ff16bdc37c143f2eef9afb5f.md) | 263 | `result-track:ff16bdc37c143f2eef9afb5f244912bb94653aaddfdb3950fff2e2793e9c41b7` |
| 29 | `theorem` | [constr_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/constr-pow-mul--19ce0464095fdfe90849a06d.md) | 267 | `result-track:19ce0464095fdfe90849a06df233d2956a242521617efeb046dc81b5e030f66b` |
| 30 | `def` | [lift](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/lift--8c255b06cf8b3b06632b4dce.md) | 279 | `declaration-track:8c255b06cf8b3b06632b4dce8e15b898a54bac582d1af71921f85dc71ca2b845` |
| 31 | `theorem` | [lift_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/lift-gen--582624b82abe7c90ab0fc745.md) | 288 | `result-track:582624b82abe7c90ab0fc74504a948123acfdd99edc85fe7a1052370bc8efccb` |
| 32 | `theorem` | [lift_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/lift-aeval--63e317fa5310d2347017dd7e.md) | 293 | `result-track:63e317fa5310d2347017dd7eb112d0c9888a6f8be43dcbc43e7a41ec36cab8aa` |
| 33 | `def` | [liftEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/liftequiv--80cce76ea91623ba0959d4dc.md) | 305 | `declaration-track:80cce76ea91623ba0959d4dc9718ad5e656b9c093ba2caf07a1cc69a7e09149f` |
| 34 | `def` | [liftEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/liftequiv--d5c203fb3de269a56af17717.md) | 315 | `declaration-track:d5c203fb3de269a56af1771749d4903af8794c19d28599fe5e52126a6655c4a5` |
| 35 | `def` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/alghom-fintype--8fd3b11e70a45a3c6e1eda49.md) | 324 | `declaration-track:8fd3b11e70a45a3c6e1eda49545946ab8320c1df4cbd87447b8a6f8a449ac91a` |
| 36 | `def` | [equivOfRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofroot--939c8094de11951b3fa0b242.md) | 335 | `declaration-track:939c8094de11951b3fa0b242821fa747ea173166f0ae736b583ee75841b4aef3` |
| 37 | `theorem` | [equivOfRoot_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofroot-aeval--47a0d04d76a46c4329e3098e.md) | 349 | `result-track:47a0d04d76a46c4329e3098ed740c43340523b6c97a46fd3fd94d2348613fec5` |
| 38 | `theorem` | [equivOfRoot_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofroot-gen--203739b682f7d6c0bfeb6436.md) | 355 | `result-track:203739b682f7d6c0bfeb6436a8490f545d87065aad1a3c68c9a2e90826cb113d` |
| 39 | `theorem` | [equivOfRoot_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofroot-symm--d15e3fae434612c29350fa5a.md) | 361 | `result-track:d15e3fae434612c29350fa5aff5e1392451d40ebd1a62b0b285e9052dbb82d2c` |
| 40 | `def` | [equivOfMinpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofminpoly--104d7927f774043f33fe28d5.md) | 373 | `declaration-track:104d7927f774043f33fe28d5bbf45c9d38dbbc11fd92d1431745a1d2ced7b80a` |
| 41 | `theorem` | [equivOfMinpoly_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofminpoly-aeval--938b905a5cc2f70fac880769.md) | 378 | `result-track:938b905a5cc2f70fac88076936397ed044a540bd974ac02724fb2cd8b2f4af71` |
| 42 | `theorem` | [equivOfMinpoly_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofminpoly-gen--f9c43ec1a958d7924d0944a5.md) | 384 | `result-track:f9c43ec1a958d7924d0944a5c4a011140294bf856dbbc7638c1616b020573fc3` |
| 43 | `theorem` | [equivOfMinpoly_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofminpoly-symm--db9a8d9780476f45fda26eb8.md) | 389 | `result-track:db9a8d9780476f45fda26eb8ac8fa5c9bfa76a5e3508b0899a2414c6ecb7b86f` |
| 44 | `theorem` | [linearIndependent_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/linearindependent-pow--468b979103819f1b10f46cef.md) | 402 | `result-track:468b979103819f1b10f46cef163c214c0fefcfeb65e9ddf4f6bb5fcb1e4aac41` |
| 45 | `theorem` | [IsIntegral.mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/isintegral-mem-span-pow--13fe80b10df0bd7f308b6d93.md) | 417 | `result-track:13fe80b10df0bd7f308b6d93d873d80140e18a49b79a6c553a5b35235f2acdac` |
| 46 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/map--ec86c6b862ba7445a3cf2986.md) | 435 | `declaration-track:ec86c6b862ba7445a3cf29864e2d06565175abd0ec07b3ccd6160367d05d4737` |
| 47 | `theorem` | [minpolyGen_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/minpolygen-map--6018f007f5697bd22a2bbae7.md) | 443 | `result-track:6018f007f5697bd22a2bbae7ec1ff19edbc7da3c0440a2b49f00f778994e1d4a` |
| 48 | `theorem` | [equivOfRoot_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofroot-map--8e156c282522d9ceb1669c32.md) | 452 | `result-track:8e156c282522d9ceb1669c32c6363cf4a6efd6bdbe7ce86dc53f88041aeda353` |
| 49 | `theorem` | [equivOfMinpoly_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/equivofminpoly-map--a6198268e535030c82968bd8.md) | 459 | `result-track:a6198268e535030c82968bd898f830e2e8b4e59c155345672facfae0cb7789de` |
| 50 | `theorem` | [adjoin_gen_eq_top](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/adjoin-gen-eq-top--154b8796bf8ae8edd70d9bb8.md) | 469 | `result-track:154b8796bf8ae8edd70d9bb8e0c091fbfed2a89fe8a8cef34a4ae152c3810e05` |
| 51 | `theorem` | [adjoin_eq_top_of_gen_mem_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/declarations/adjoin-eq-top-of-gen-mem-adjoin--3fb81f3c3c3141e2fe5264f2.md) | 475 | `result-track:3fb81f3c3c3141e2fe5264f24bdc85dafd0d3b5337cb5ea0ff8cbf91e7655c17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
