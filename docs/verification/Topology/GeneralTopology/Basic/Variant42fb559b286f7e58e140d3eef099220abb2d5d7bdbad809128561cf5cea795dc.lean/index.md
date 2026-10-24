# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b4928c820efb0d262bba745da216ca269b97e41",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b4928c820efb0d262bba745da216ca269b97e41`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Product` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Algebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/proj--2d4fb771d668d65fb7e50a0e.md) | 91 | `declaration-track:2d4fb771d668d65fb7e50a0ec0d0c96062052f16b8b75f18926a57a5af20e068` |
| 2 | `theorem` | [continuous_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/continuous-proj--893f5d946665358b4e61dfe8.md) | 95 | `result-track:893f5d946665358b4e61dfe8088af02d409fd08bf5007b727cfd04515fac6d8c` |
| 3 | `def` | [π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/anonymous--8bbd0aa969754515840f8118.md) | 105 | `declaration-track:8bbd0aa969754515840f81189824b9fc2fe7270e6c0035ad08c7cfba5bd7405e` |
| 4 | `def` | [ProjRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/projrestrict--7e5601f3117331b570faedb4.md) | 109 | `declaration-track:7e5601f3117331b570faedb47359f384eb054f129c7e4cce73ebcb89cd89547a` |
| 5 | `theorem` | [continuous_projRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/continuous-projrestrict--cee0f93076f13b610a6f2b10.md) | 113 | `result-track:cee0f93076f13b610a6f2b10a2f16801ad6529491c9c6e3ce40d57f914292946` |
| 6 | `theorem` | [proj_eq_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/proj-eq-self--e37d27fc83b553fc7b3d7e95.md) | 116 | `result-track:e37d27fc83b553fc7b3d7e951359e58e63efb5add98290295b833f45e7708ba3` |
| 7 | `theorem` | [proj_prop_eq_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/proj-prop-eq-self--38fc3e50416ef9b28655ccbf.md) | 122 | `result-track:38fc3e50416ef9b28655ccbf5b0251a72e4480fedb20269e93492112941e2e22` |
| 8 | `theorem` | [proj_comp_of_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/proj-comp-of-subset--1538d30ea6b127a060285800.md) | 128 | `result-track:1538d30ea6b127a0602858007f8a892417f354f8f7335c97438bfd11695bac16` |
| 9 | `theorem` | [proj_eq_of_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/proj-eq-of-subset--e91efa7c6171494e934d1972.md) | 132 | `result-track:e91efa7c6171494e934d197238711224ce3eaef5a4015412b3a94a95c3f6fe92` |
| 10 | `def` | [ProjRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/projrestricts--71da684549cbd8305bfc7a5a.md) | 148 | `declaration-track:71da684549cbd8305bfc7a5acb976a3e0e3c4a5c3637067d6d915ee46a4d5d87` |
| 11 | `theorem` | [continuous_projRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/continuous-projrestricts--02e6a100b891a7f9c04725ee.md) | 152 | `result-track:02e6a100b891a7f9c04725ee8fedcfcdb66808335db556b5d17c9994605dfcdd` |
| 12 | `theorem` | [surjective_projRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/surjective-projrestricts--afd78d7d725e896f453c3a65.md) | 155 | `result-track:afd78d7d725e896f453c3a6533b1343c582b5b9e03df07130489eb2fad45bd2f` |
| 13 | `theorem` | [projRestricts_eq_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/projrestricts-eq-id--95cda767170d80a3dacea41a.md) | 159 | `result-track:95cda767170d80a3dacea41a90aa0d6126e8cfc83fdc0ce1aaff2b782aedd040` |
| 14 | `theorem` | [projRestricts_eq_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/projrestricts-eq-comp--b8ec070b3519f3c5a1b7e45a.md) | 163 | `result-track:b8ec070b3519f3c5a1b7e45aa0c91368ac6b447e8ac3296943d8260d34686cbc` |
| 15 | `theorem` | [projRestricts_comp_projRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/projrestricts-comp-projrestrict--76683335e2fb3403000b17b7.md) | 169 | `result-track:76683335e2fb3403000b17b7dd5c7cd44778a1a52d0437321c7ff0409f4057d3` |
| 16 | `def` | [iso_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/iso-map--df49383b5ba4d40adae9c9b0.md) | 178 | `declaration-track:df49383b5ba4d40adae9c9b0391fdf3657e7a887d9e22f61297be756d7c7d098` |
| 17 | `lemma` | [iso_map_bijective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/iso-map-bijective--9ba492642519236e97a46c67.md) | 187 | `result-track:9ba492642519236e97a46c67d5a8b90c1c976701f368fc505f69812c957764fc` |
| 18 | `def` | [spanFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/spanfunctor--f8a775ef61d9742db9500c2a.md) | 210 | `declaration-track:f8a775ef61d9742db9500c2a5b999112a9a4c4fe34ab89886e1b13cf4387d620` |
| 19 | `def` | [spanCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/spancone--8fc8d02f14dd8d2212daf91d.md) | 221 | `declaration-track:8fc8d02f14dd8d2212daf91d9cb4c7864d7632873b86068a5e6f3c675e181cc3` |
| 20 | `def` | [spanCone_isLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/spancone-islimit--699def3903f9149372c7a212.md) | 235 | `declaration-track:699def3903f9149372c7a212203a5092649ad8deb551a336099a5830378892d9` |
| 21 | `def` | [e](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/e--ca743c1cf004a806f21b748f.md) | 289 | `declaration-track:ca743c1cf004a806f21b748f65a2f8b259bb7eb481f4c3641912d222eb1d3450` |
| 22 | `def` | [Products](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/products--8dc8518a54285f9dcb51e6f9.md) | 306 | `declaration-track:8dc8518a54285f9dcb51e6f94621006d96b91dc2cbeca78db2291a0d73af7365` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/instance--49973cca9229b139148cebef.md) | 310 | `declaration-track:49973cca9229b139148cebef92b1495e38e5ff302569004e788ae6cc36c16a2c` |
| 24 | `theorem` | [lt_iff_lex_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/lt-iff-lex-lt--19efbc9278c2986bacdc867d.md) | 314 | `result-track:19efbc9278c2986bacdc867dcc5c792381a600e83a44ada0bca541f6457bc5d6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/instance--b6c897d43091220c4169be84.md) | 317 | `declaration-track:b6c897d43091220c4169be847ab92502ed7e781a3d63efac51e32f2da8d48551` |
| 26 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/eval--67b72bf397bd4eb28d9079a9.md) | 326 | `declaration-track:67b72bf397bd4eb28d9079a949db97bdf3206ddde00fb6fac197c0aee526d705` |
| 27 | `def` | [isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/isgood--80606662ef1d14003c723bdd.md) | 332 | `declaration-track:80606662ef1d14003c723bdd20564ab49e9ee90029c42dd42db99f2893830da9` |
| 28 | `theorem` | [rel_head!_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/rel-head-of-mem--7c020673d36f2d000e57f89d.md) | 335 | `result-track:7c020673d36f2d000e57f89df344d5e9795dffe0747990f28253e84f29727bd0` |
| 29 | `theorem` | [head!_le_of_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/head-le-of-lt--cea5f79dae2a5d73214b06cb.md) | 339 | `result-track:cea5f79dae2a5d73214b06cb39157af3beccb325dad3ee431c4d488cbcfb25e4` |
| 30 | `def` | [GoodProducts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/goodproducts--540fb41db97f93cf92930d59.md) | 346 | `declaration-track:540fb41db97f93cf92930d5939fe80ccdebb9456017030b60efa66955bbfd049` |
| 31 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/eval--5f7d68cfb67ffc92d50f2fe7.md) | 351 | `declaration-track:5f7d68cfb67ffc92d50f2fe794d3e2b62e4f5bfd58547b1eca0c3a4738aae313` |
| 32 | `theorem` | [injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/injective--cfe9f62e7b1ce7dea55c0302.md) | 354 | `result-track:cfe9f62e7b1ce7dea55c03023e4c0ba0d545492089d9a86b929700815a3f6406` |
| 33 | `def` | [range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/range--9385673af0f5dc6c310d09fb.md) | 363 | `declaration-track:9385673af0f5dc6c310d09fba59a84280e8170434e3c39add3400bb1f80cc0c9` |
| 34 | `def` | [equiv_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/equiv-range--940d0df476db1d704e792761.md) | 367 | `declaration-track:940d0df476db1d704e79276168716d24bdf7761d73d9089dc81aceee3200b94f` |
| 35 | `theorem` | [equiv_toFun_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/equiv-tofun-eq-eval--1812cde60128aabcc3a8ac37.md) | 370 | `result-track:1812cde60128aabcc3a8ac3749504518771cbcbff148b6f308c8bd029a2f7a8c` |
| 36 | `theorem` | [linearIndependent_iff_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/linearindependent-iff-range--459997a84e45611caba5c512.md) | 372 | `result-track:459997a84e45611caba5c51293fedeb869da45b2bcd5050729f699bd3cfb977f` |
| 37 | `theorem` | [eval_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/eval-eq--6f8e91d6873b01da68b07e39.md) | 381 | `result-track:6f8e91d6873b01da68b07e39191eee8fc7cfc34add1881b34e6ddc7000226c0c` |
| 38 | `theorem` | [evalFacProp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/evalfacprop--def65e53e0d60973b12c1f27.md) | 397 | `result-track:def65e53e0d60973b12c1f27427a025ed47009bb539e3915364b7ce9dc360863` |
| 39 | `theorem` | [evalFacProps](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/evalfacprops--3f05c6f4b9cb0053ddbcc3c7.md) | 405 | `result-track:3f05c6f4b9cb0053ddbcc3c758bf401557337a465ec37f552c30ce4fe788d461` |
| 40 | `theorem` | [prop_of_isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/prop-of-isgood--6a7d1f48e011c7cb57d9b578.md) | 414 | `result-track:6a7d1f48e011c7cb57d9b5783df5236fa4da4f96ad2911cbddf74ee7d2d71cc6` |
| 41 | `theorem` | [GoodProducts.span_iff_products](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/goodproducts-span-iff-products--6eceb54775e7601513495cd2.md) | 429 | `result-track:6eceb54775e7601513495cd2b562ccfc305c77724d0fe40c4c174ad3f5cea6fe` |
| 42 | `def` | [ord](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/ord--0c2551e90428ccbd5e8e9c37.md) | 477 | `declaration-track:0c2551e90428ccbd5e8e9c37753863613a6c8003a103a76a231027e090d5c4b8` |
| 43 | `def` | [term](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/term--791b459fad8307e3a4bb7b5b.md) | 481 | `declaration-track:791b459fad8307e3a4bb7b5bdeea04239826cc3cc38c4218d83d9ef165db47c1` |
| 44 | `theorem` | [term_ord_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/term-ord-aux--615569931242772f46b803b0.md) | 486 | `result-track:615569931242772f46b803b031895b1e3f52146eda4b1935b7a591b85d5a7ed7` |
| 45 | `theorem` | [ord_term_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/ord-term-aux--b1190f4cf730d0abdfae0e2c.md) | 491 | `result-track:b1190f4cf730d0abdfae0e2cb8e15ca4d951e56d04d3b55390b787e6ed746af1` |
| 46 | `theorem` | [ord_term](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/ord-term--fe4934dcb97c991a73b63c29.md) | 495 | `result-track:fe4934dcb97c991a73b63c29a6756be547e88f45a96e0d3a2d86587da1614522` |
| 47 | `def` | [contained](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/contained--613369967a50e4823f7d3956.md) | 504 | `declaration-track:613369967a50e4823f7d39564569d22fa2228eee056d4678105c4263f29380cf` |
| 48 | `def` | [P](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/p--a47538b32c081dbfb19efec9.md) | 511 | `declaration-track:a47538b32c081dbfb19efec9b88a895c119249b0c0b211337d49cbfc55746684` |
| 49 | `theorem` | [Products.prop_of_isGood_of_contained](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/products-prop-of-isgood-of-contained--f30d3d28115e2c83c317964f.md) | 516 | `result-track:f30d3d28115e2c83c317964fdd34ff9766c2ea150b3d8bd2073913cea886f3d9` |
| 50 | `theorem` | [contained_eq_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/contained-eq-proj--cb215bdb1a27f3cf3a4daad9.md) | 546 | `result-track:cb215bdb1a27f3cf3a4daad91b11fcfa509a54f29f182d913bdd91be70549ee6` |
| 51 | `theorem` | [isClosed_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/isclosed-proj--b1f853f4d26d60392ee83696.md) | 552 | `result-track:b1f853f4d26d60392ee836965972d097989ed16c5456c2440c52ba5beedd9f97` |
| 52 | `theorem` | [contained_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/contained-proj--6042da84f3e0931816090d14.md) | 555 | `result-track:6042da84f3e0931816090d144b1e7f02c9e9e7e94de5a7b74eb1660dcebd3a1a` |
| 53 | `def` | [πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/s--00d90454ceb3b684e7101811.md) | 562 | `declaration-track:00d90454ceb3b684e71018116eb6b2f30b24898f782c51ae432c6275e4f6e5f7` |
| 54 | `theorem` | [coe_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/coe-s--757bc5c0559af1a8bf1e983e.md) | 565 | `result-track:757bc5c0559af1a8bf1e983e8485765b95996fbf5f92d2e2bc40b93c311fd3fc` |
| 55 | `theorem` | [injective_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/injective-s--2a0b750ab5b1937de163b7c9.md) | 569 | `result-track:2a0b750ab5b1937de163b7c9e9421a82bd29d2383a596d9d0994d8461a06bb47` |
| 56 | `def` | [πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/s--ef043d537f3d0c561704f639.md) | 577 | `declaration-track:ef043d537f3d0c561704f6399284ef1f3fe6792dafbf639bc0353d63d5571aba` |
| 57 | `theorem` | [coe_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/coe-s--80d1fb1e7fcd2becaeda523d.md) | 582 | `result-track:80d1fb1e7fcd2becaeda523d5a1e88d74261313879b4f1597d4403d6454bb397` |
| 58 | `theorem` | [injective_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/injective-s--006934f7df31333e8f3fe587.md) | 586 | `result-track:006934f7df31333e8f3fe5872f700898f024bc1c42de308224cba41894b4df5c` |
| 59 | `theorem` | [lt_ord_of_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/lt-ord-of-lt--55dd67f0eca54341f51cabdc.md) | 592 | `result-track:55dd67f0eca54341f51cabdc8ded81315b787c52ef7a5af2bd7eba028bcfd27f` |
| 60 | `theorem` | [eval_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/eval-s--a403dce6f8000017ebdfa2c7.md) | 596 | `result-track:a403dce6f8000017ebdfa2c77dcc2bb0fb6400112d6c49bed977c835ce519d09` |
| 61 | `theorem` | [eval_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/eval-s--da92611f190c4e14005824e4.md) | 600 | `result-track:da92611f190c4e14005824e410ff12bdae9dd7c246059f17255558cc8c6ff518` |
| 62 | `theorem` | [eval_πs_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/eval-s-image--19de9b1faddafd988dc0bb74.md) | 607 | `result-track:19de9b1faddafd988dc0bb74f24265ce4567420f753f03459b78779ac8c0c665` |
| 63 | `theorem` | [eval_πs_image'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/eval-s-image--f92f5aa2772a720bae47f120.md) | 616 | `result-track:f92f5aa2772a720bae47f120865590f1545dd0961c9e32fbee21e0b596dcaa70` |
| 64 | `theorem` | [head_lt_ord_of_isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/head-lt-ord-of-isgood--3f32645f8a10390935ca58d4.md) | 625 | `result-track:3f32645f8a10390935ca58d4372ccf863d96f3e0f170d51402f60cb07dc10d49` |
| 65 | `theorem` | [isGood_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/declarations/isgood-mono--f4ec4a7fb153eccb58c8eca9.md) | 633 | `result-track:f4ec4a7fb153eccb58c8eca917e9ad73a03f25e0875f937edaaadbcf6d836343` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
