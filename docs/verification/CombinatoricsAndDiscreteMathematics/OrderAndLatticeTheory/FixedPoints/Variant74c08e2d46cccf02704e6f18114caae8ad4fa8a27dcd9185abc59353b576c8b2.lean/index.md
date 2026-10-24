# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FixedPoints.Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c92fe9e87140b33e40bd7ce3a9736a94dacaf88b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c92fe9e87140b33e40bd7ce3a9736a94dacaf88b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/lfp--021aebfc6258065a3d214f95.md) | 46 | `declaration-track:021aebfc6258065a3d214f951a7369f489e8884d992ca8a0b597bd64530423f7` |
| 2 | `def` | [gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/gfp--9e8a07601c772ab2120c56a1.md) | 52 | `declaration-track:9e8a07601c772ab2120c56a1385346fb86d4119f99635815f8e6f97f9bee1ee2` |
| 3 | `theorem` | [lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/lfp-le--6007314286e64bfa108a109e.md) | 57 | `result-track:6007314286e64bfa108a109edc4e01f6e3d67ca572540ea6f712dfbde2afd3f5` |
| 4 | `theorem` | [lfp_le_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/lfp-le-fixed--2dfcef44fe1efb43cd703afe.md) | 61 | `result-track:2dfcef44fe1efb43cd703afe50582ba47b3fd59f4df987823d783797e442a12e` |
| 5 | `theorem` | [le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/le-lfp--a2a586674e8f4ac1320b44d5.md) | 65 | `result-track:a2a586674e8f4ac1320b44d50d624173b23571b9df8a5d9f4f351cd5e7498323` |
| 6 | `theorem` | [map_le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-le-lfp--7204bbb1b5b7bf122f48e8d7.md) | 72 | `result-track:7204bbb1b5b7bf122f48e8d715ed0c614e1d7c3d3c93dd0f6c2492925ed329fb` |
| 7 | `theorem` | [map_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-lfp--87f8ffee5aac500ea41f9bfb.md) | 77 | `result-track:87f8ffee5aac500ea41f9bfb2aa0bbbe97b2cddbab8fcf1aa7c9c05a3b1c0843` |
| 8 | `theorem` | [isFixedPt_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/isfixedpt-lfp--ece8d7eadd5b80316acf0e15.md) | 82 | `result-track:ece8d7eadd5b80316acf0e150d3b6d98640d889e629a1efcc780fa04c667602f` |
| 9 | `theorem` | [lfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/lfp-le-map--0e1e7134593bad50dddacada.md) | 86 | `result-track:0e1e7134593bad50dddacada00a0b78658305d1d0a62632b6c192c3eda29bb05` |
| 10 | `theorem` | [isLeast_lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/isleast-lfp-le--fa4d670eb4282136a4768d4d.md) | 92 | `result-track:fa4d670eb4282136a4768d4d10484d35b8ca1f8ba811d036458b61099701ec6d` |
| 11 | `theorem` | [isLeast_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/isleast-lfp--bd1f68ae6bae236885b40b01.md) | 96 | `result-track:bd1f68ae6bae236885b40b0121858c1464ea91ec77739b5d3c96f7e60e1355e2` |
| 12 | `theorem` | [lfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/lfp-induction--38a9791f84a59ca6849b40e2.md) | 100 | `result-track:38a9791f84a59ca6849b40e2af567174ab994c6087fa7e4c474ee745ea57be59` |
| 13 | `theorem` | [le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/le-gfp--74245443ccceb36d9112bc3c.md) | 111 | `result-track:74245443ccceb36d9112bc3c8cdab0d677eb9830dffb2387229be13b2d0f00bc` |
| 14 | `theorem` | [gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/gfp-le--62a363b0541d65b20b4e3872.md) | 115 | `result-track:62a363b0541d65b20b4e3872432cc831e760205e10c832b1ff75a202a0f2b90a` |
| 15 | `theorem` | [isFixedPt_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/isfixedpt-gfp--4cb27280c3197f798f592d5b.md) | 119 | `result-track:4cb27280c3197f798f592d5b28fdb9ec2346aa967a616691a7d7df944488e11d` |
| 16 | `theorem` | [map_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-gfp--816fa7c9a8b595b410ad9998.md) | 124 | `result-track:816fa7c9a8b595b410ad9998680810ed88326d13f6100b04096c83dbd274e46d` |
| 17 | `theorem` | [map_le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-le-gfp--81e8384e1ad28db940f5e30f.md) | 128 | `result-track:81e8384e1ad28db940f5e30fc6d02ad1be02677740cca6eaca2fcc1da8c15195` |
| 18 | `theorem` | [gfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/gfp-le-map--769ce00ab408dc2d2a86f3e9.md) | 132 | `result-track:769ce00ab408dc2d2a86f3e908602df85f6f0454feb80176234193f60a65ccfa` |
| 19 | `theorem` | [isGreatest_gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/isgreatest-gfp-le--1822c06da3e3aa1cfe63d752.md) | 136 | `result-track:1822c06da3e3aa1cfe63d752d2f30d0e95e31109d56b6c94dd58807f4ae508ea` |
| 20 | `theorem` | [isGreatest_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/isgreatest-gfp--8c74eba069bc475373fb7a89.md) | 140 | `result-track:8c74eba069bc475373fb7a891beaa5367a4cc8a6af6d1333cbe172c91424f918` |
| 21 | `theorem` | [gfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/gfp-induction--e286be940877d9eda3ecb34e.md) | 144 | `result-track:e286be940877d9eda3ecb34eed0cd12da4ee1b5223a3b532a99505409d8484bf` |
| 22 | `theorem` | [map_lfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-lfp-comp--bfd41e1ad4b42250b8631990.md) | 156 | `result-track:bfd41e1ad4b42250b8631990799d26fe5bd932035eed7d2ac359a3bfda0b1d86` |
| 23 | `theorem` | [map_gfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-gfp-comp--7e27a29db5c2a9fe81b78d34.md) | 161 | `result-track:7e27a29db5c2a9fe81b78d34437b71206efa2711a8287521a03f98ab4e3f74d2` |
| 24 | `theorem` | [lfp_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/lfp-lfp--2445c9755e3b33fbfc4ecd8f.md) | 166 | `result-track:2445c9755e3b33fbfc4ecd8f77406f57c3b7a311500bf6fd777962fdcd4daf8a` |
| 25 | `theorem` | [gfp_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/gfp-gfp--5c27ed58771d3a89f8b092a1.md) | 177 | `result-track:5c27ed58771d3a89f8b092a133a48339946cfe03ce351b7be7239088ef90b078` |
| 26 | `theorem` | [gfp_const_inf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/gfp-const-inf-le--a0b5dbb41ac098cfab8d584f.md) | 188 | `result-track:a0b5dbb41ac098cfab8d584f7e8f4be1415fb0beeb55223947148f31838826e6` |
| 27 | `def` | [prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/prevfixed--146ccc3bdae3b4197ddf5c84.md) | 195 | `declaration-track:146ccc3bdae3b4197ddf5c84f92fd93be37550fe35870fcbae0930e0a504f094` |
| 28 | `def` | [nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/nextfixed--9e3806e891f823890548ab45.md) | 207 | `declaration-track:9e3806e891f823890548ab45a2ecd03e607cff46d95bcee69fd71a59a253a3c0` |
| 29 | `theorem` | [prevFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/prevfixed-le--aa01257c57386e4b570faeb8.md) | 211 | `result-track:aa01257c57386e4b570faeb848a6a9527c2b3421f13f018fd11168a98c609e6f` |
| 30 | `theorem` | [le_nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/le-nextfixed--9162756b6c777093a427a13f.md) | 215 | `result-track:9162756b6c777093a427a13f078452e222d60b6aac8e0b89cd9c01a0e815b72d` |
| 31 | `theorem` | [nextFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/nextfixed-le--df5aeefe47a32649f2730e35.md) | 219 | `result-track:df5aeefe47a32649f2730e35b107054ffc81a7f4cf3c703e51c29d3db67a895d` |
| 32 | `theorem` | [nextFixed_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/nextfixed-le-iff--c0e7aece19206c9e2001a143.md) | 225 | `result-track:c0e7aece19206c9e2001a143a7c96cff42ee57b593841f7e3a0c4b4f7f934bef` |
| 33 | `theorem` | [le_prevFixed_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/le-prevfixed-iff--9991c1f54b4f30e90a524c93.md) | 231 | `result-track:9991c1f54b4f30e90a524c93f553439aa7423b7e89163050ed42ed4e39239860` |
| 34 | `theorem` | [le_prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/le-prevfixed--5d6cbe6dbd3927d37765aa05.md) | 236 | `result-track:5d6cbe6dbd3927d37765aa05ed653a34d04c7a595e03dc80b4b13397e4553258` |
| 35 | `theorem` | [le_map_sup_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/le-map-sup-fixedpoints--47d5cfb71752ffbc5d87bb61.md) | 241 | `result-track:47d5cfb71752ffbc5d87bb61673c0e2827ff1064a79136554d459997fb71c8cf` |
| 36 | `theorem` | [map_inf_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-inf-fixedpoints-le--6c7c3d8f22e5d503585755ed.md) | 248 | `result-track:6c7c3d8f22e5d503585755ed0fbd7506633ad33c1201d365b39c28e8a78bda8b` |
| 37 | `theorem` | [le_map_sSup_subset_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/le-map-ssup-subset-fixedpoints--587e7a90b58dc49c94dfd068.md) | 252 | `result-track:587e7a90b58dc49c94dfd068b5557b71af9c9a10293836101e10ba77de594ae2` |
| 38 | `theorem` | [map_sInf_subset_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/map-sinf-subset-fixedpoints-le--67051377fc628fd35b5e4781.md) | 257 | `result-track:67051377fc628fd35b5e4781c76b420d8660f0b4bc0e3722e0d58d2462b01e8b` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/instance--803c5a687092644be416e742.md) | 272 | `declaration-track:803c5a687092644be416e742d1cde4c39c4a96930bf323875d67a080221083a6` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/instance--8502acecb5eefd8fa4c63de6.md) | 282 | `declaration-track:8502acecb5eefd8fa4c63de6afba0d60898dd2990883164d61b4e0a74a194be3` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/instance--f879d399996125d634e797ff.md) | 287 | `declaration-track:f879d399996125d634e797ff3fbfb92dbf5a9954382b3aa349d4eb29c4c75856` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/instance--3d2499efa4a85aebef7ca3bb.md) | 297 | `declaration-track:3d2499efa4a85aebef7ca3bb49b327d4065f023c910d5cd7c949b0212a8f18de` |
| 43 | `instance` | [completeLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean/declarations/completelattice--568333b27b604f889bcd08a0.md) | 309 | `declaration-track:568333b27b604f889bcd08a06ed33612ceda4e98f7404228f69821ce19adfd4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
