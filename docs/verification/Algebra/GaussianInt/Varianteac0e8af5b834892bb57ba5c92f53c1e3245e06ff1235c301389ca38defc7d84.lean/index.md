# Verification target: GRWTSK.Algebra.GaussianInt.Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f582dbdc350d3ed49d61877fcdbae48205ae06b3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f582dbdc350d3ed49d61877fcdbae48205ae06b3`.

Source path: `GRWTSK/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GaussianInt](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/gaussianint--5b24659703fffcd0f5767b77.md) | 48 | `declaration-track:5b24659703fffcd0f5767b7759bbf9d2ddf839656e4b6ed2b2c8f19c4291f512` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/instance--668cbf4e4d97f37b1635e936.md) | 56 | `declaration-track:668cbf4e4d97f37b1635e93688fb8195d4ac08acddf991a241453c82b5b3ee35` |
| 3 | `instance` | [instCommRing](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/instcommring--eecc56c296745a83e5c365e2.md) | 59 | `declaration-track:eecc56c296745a83e5c365e2b143704c95d05b9e38980d5de68dd09872132c55` |
| 4 | `def` | [toComplex](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex--3d84809af8fa3e9f9faa6149.md) | 68 | `declaration-track:3d84809af8fa3e9f9faa614990c1148953a6ca62d5b7980f005dddda83b2dcf9` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/instance--e0cdce6be2619e93fc77fdcf.md) | 74 | `declaration-track:e0cdce6be2619e93fc77fdcfe98fe9de5df6d91f58f3656dda71ae26792e715f` |
| 6 | `theorem` | [toComplex_def](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-def--b1ca3d9e4ee34df008e18c60.md) | 77 | `result-track:b1ca3d9e4ee34df008e18c609d0de2c8359a4646555a11e3d687ba76623e93c1` |
| 7 | `theorem` | [toComplex_def'](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-def--0cf5631e3830476bcee23fed.md) | 81 | `result-track:0cf5631e3830476bcee23fed1d32c51bf399830178c6ee45d2421b2f8fc02a2c` |
| 8 | `theorem` | [toComplex_def₂](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-def--ce5e4db90134b3ff0325edca.md) | 84 | `result-track:ce5e4db90134b3ff0325edca4ac0a54ea3fe4c4c548b2fd9acb7f1026e9b3813` |
| 9 | `theorem` | [to_real_re](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/to-real-re--ae3eb16c84a36d926a3347f3.md) | 89 | `result-track:ae3eb16c84a36d926a3347f32bfd6680a3934026631e88e59c479b5bf56d9194` |
| 10 | `theorem` | [to_real_im](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/to-real-im--1f8f781b10de288e0fdfdfb9.md) | 93 | `result-track:1f8f781b10de288e0fdfdfb99c46cc65e0c82d5b38d7510f9f6004f79f37f081` |
| 11 | `theorem` | [toComplex_re](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-re--beceecc3f81b14b7132a31ce.md) | 97 | `result-track:beceecc3f81b14b7132a31ce8edf19d19a65f260876f0b08eb0f45ea0032d962` |
| 12 | `theorem` | [toComplex_im](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-im--b6fa87b7031dc12eb6a06c93.md) | 101 | `result-track:b6fa87b7031dc12eb6a06c93f49588dd96fc85c6e27db3aa0d5ef8671bb35e11` |
| 13 | `theorem` | [toComplex_add](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-add--f5dfa3585131b80213337453.md) | 105 | `result-track:f5dfa3585131b802133374536dee118a86fee608210d1c6e2fb70fc27a3b89d2` |
| 14 | `theorem` | [toComplex_mul](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-mul--f1809871de568e9cfbe069c0.md) | 110 | `result-track:f1809871de568e9cfbe069c0d929c88561279bacf0cd03d3d8b5761f10ff5608` |
| 15 | `theorem` | [toComplex_one](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-one--70bbaff6d95f6fd9868c2156.md) | 115 | `result-track:70bbaff6d95f6fd9868c2156447a8195a9ef3d50304d6af501e0a2644d7ae3c8` |
| 16 | `theorem` | [toComplex_zero](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-zero--03413d895a0e43c712d95fb7.md) | 120 | `result-track:03413d895a0e43c712d95fb7f87ffe3abcb9a0b551902365fc7d2465e59811bd` |
| 17 | `theorem` | [toComplex_neg](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-neg--e686564df401d5b6dc29b7cd.md) | 125 | `result-track:e686564df401d5b6dc29b7cd309774c280027c9c4a2781e2933257732289a040` |
| 18 | `theorem` | [toComplex_sub](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-sub--41b9461305b6cbb7e24dfb3a.md) | 130 | `result-track:41b9461305b6cbb7e24dfb3a0818457daa03d1d0de76aba86043404b0bedeb8d` |
| 19 | `theorem` | [toComplex_star](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-star--d6f823317c99c3067a1ed5e9.md) | 135 | `result-track:d6f823317c99c3067a1ed5e9baa3d76b8998fcfc19806a4af1fa3899b3ad8ceb` |
| 20 | `theorem` | [toComplex_inj](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-inj--812f069b127ceec7bd110aac.md) | 141 | `result-track:812f069b127ceec7bd110aac5918279cc1453093b4d76490517bae33fc413818` |
| 21 | `theorem` | [toComplex_eq_zero](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-eq-zero--a61c411f76ac24f6098145ab.md) | 146 | `result-track:a61c411f76ac24f6098145ab44918bd79891c41ee11f9817427cceef7260e954` |
| 22 | `theorem` | [int_cast_real_norm](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/int-cast-real-norm--74d8309825e73ecd45b40e60.md) | 151 | `result-track:74d8309825e73ecd45b40e604cc173d3277cfb42dcb2607620023dcb42d2ca76` |
| 23 | `theorem` | [int_cast_complex_norm](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/int-cast-complex-norm--57bbb41086e9946ab9565254.md) | 156 | `result-track:57bbb41086e9946ab9565254407ea7b2373a09c66d06924c88d3628a83f35653` |
| 24 | `theorem` | [norm_nonneg](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/norm-nonneg--7d769b8dc297f5b9f120e012.md) | 160 | `result-track:7d769b8dc297f5b9f120e012f93371af1ec1d4792b54d7e5e8d112155fa8635b` |
| 25 | `theorem` | [norm_eq_zero](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/norm-eq-zero--1b7befc31e6241e517872c22.md) | 165 | `result-track:1b7befc31e6241e517872c225423c409afd9c645a8802f713af62e80706e327c` |
| 26 | `theorem` | [norm_pos](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/norm-pos--b5af638217813b300b686dc7.md) | 168 | `result-track:b5af638217813b300b686dc7cfd020b3f293334e9de7926e78c2c62126f419ad` |
| 27 | `theorem` | [abs_coe_nat_norm](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/abs-coe-nat-norm--19588c520267bb5a0da68c7c.md) | 172 | `result-track:19588c520267bb5a0da68c7c17c11cb957df3fc3cfe44558aa810db8a570f53c` |
| 28 | `theorem` | [nat_cast_natAbs_norm](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/nat-cast-natabs-norm--8eb48553e7bdd70a6526d0e8.md) | 177 | `result-track:8eb48553e7bdd70a6526d0e80283ba5c9696e5927dfdaa42d33516ede3ee3c2d` |
| 29 | `theorem` | [natAbs_norm_eq](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/natabs-norm-eq--5f8b2b645bdef6f57dd79398.md) | 181 | `result-track:5f8b2b645bdef6f57dd793985ba65d07df5eab167b73281ebfdab9588529f805` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/instance--609d74189645267304fc2d6d.md) | 186 | `declaration-track:609d74189645267304fc2d6d63a194cc118225942d894249986d1a413b0359d6` |
| 31 | `theorem` | [div_def](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/div-def--5e9427658fe1247aebe4c7a0.md) | 192 | `result-track:5e9427658fe1247aebe4c7a074fd2679e1149135a09459abb1d01330c04744bb` |
| 32 | `theorem` | [toComplex_div_re](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-div-re--c6a44b0c08a8718fd6c6716e.md) | 197 | `result-track:c6a44b0c08a8718fd6c6716e4971e3d307413c26c9d14961f64cb267ae36dc9f` |
| 33 | `theorem` | [toComplex_div_im](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/tocomplex-div-im--94bc3126ca11b35e80f409b8.md) | 202 | `result-track:94bc3126ca11b35e80f409b82601dd8a9b529d8fbcaf6be436666b826c12f318` |
| 34 | `theorem` | [normSq_le_normSq_of_re_le_of_im_le](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/normsq-le-normsq-of-re-le-of-im-le--f60e304ced59620808f22c5e.md) | 207 | `result-track:f60e304ced59620808f22c5e7458b41eeabf24392aef7a6a6addbf305b940483` |
| 35 | `theorem` | [normSq_div_sub_div_lt_one](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/normsq-div-sub-div-lt-one--9d6c368c17f86e5ef9b5281d.md) | 216 | `result-track:9d6c368c17f86e5ef9b5281d7f4461838523c7cf2c30c8ad78fb189ae00f9a5d` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/instance--a8f87d52d8bd20db7d2f8060.md) | 232 | `declaration-track:a8f87d52d8bd20db7d2f806071989fafa9a16d8c39f5f00cc29e1a41bea76a47` |
| 37 | `theorem` | [mod_def](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/mod-def--629261530e557e92fb0250ea.md) | 235 | `result-track:629261530e557e92fb0250ea67c4ce269de303bb32e9926fe0c42498cf782a27` |
| 38 | `theorem` | [norm_mod_lt](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/norm-mod-lt--c632e66eee3b1ed9154b2515.md) | 239 | `result-track:c632e66eee3b1ed9154b251561e39708c632460d665518b8fa29c10d4a94396d` |
| 39 | `theorem` | [natAbs_norm_mod_lt](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/natabs-norm-mod-lt--9c9d7a084cf6bfb9d776d6d7.md) | 251 | `result-track:9c9d7a084cf6bfb9d776d6d763122b13ff42d1af0211b8318dec97ea820fa2d0` |
| 40 | `theorem` | [norm_le_norm_mul_left](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/norm-le-norm-mul-left--6a9f5b3f172372d9270337cb.md) | 256 | `result-track:6a9f5b3f172372d9270337cbb045841aefa8c8a35df3124079b56d6a8d75f321` |
| 41 | `instance` | [instNontrivial](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/instnontrivial--cce91e4a41f8a9cd3ebcbf82.md) | 264 | `declaration-track:cce91e4a41f8a9cd3ebcbf82bfe2124c9c3fe6d9ad2c3418c2d6c7977cd21bfb` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/instance--f70d4ed36a1982af4d6f81b4.md) | 268 | `declaration-track:f70d4ed36a1982af4d6f81b4333d9692015bda820522d69f81485265a8c77b8e` |
| 43 | `theorem` | [sq_add_sq_of_nat_prime_of_not_irreducible](../../../../mathematics/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/declarations/sq-add-sq-of-nat-prime-of-not-irreducible--96af456035738fc001696338.md) | 282 | `result-track:96af456035738fc001696338f5f866d583529d34f7b15612d0bb9466ec9e95d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
