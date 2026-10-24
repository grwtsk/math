# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Basic.Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "060517c681bcfcc0eea848e8360e572433349daa",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `060517c681bcfcc0eea848e8360e572433349daa`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.ContinuousLinearMap` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_image_of_norm_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-image-of-norm-zero--1a389923bb0c14c81c84bc84.md) | 52 | `result-track:1a389923bb0c14c81c84bc846c19de1d18050ed1d6236e54cb175429661ae46c` |
| 2 | `theorem` | [SemilinearMapClass.bound_of_shell_semi_normed](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/semilinearmapclass-bound-of-shell-semi-normed--566c56d48c81cc1dce367252.md) | 61 | `result-track:566c56d48c81cc1dce3672521dd89750c83401eb79b7e5d9ace3e20eacf22c59` |
| 3 | `theorem` | [SemilinearMapClass.bound_of_continuous](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/semilinearmapclass-bound-of-continuous--fb6e42f22bf8190b451e5c8c.md) | 72 | `result-track:fb6e42f22bf8190b451e5c8cc444c2129b3fe1180ffae89f873e7d4776452aa9` |
| 4 | `theorem` | [bound](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/bound--519a6dab9056cfcb7ad52f63.md) | 81 | `result-track:519a6dab9056cfcb7ad52f63b49848b6bc4d9eb027c8ffe7a56237acb6fe0f0c` |
| 5 | `def` | [_root_.LinearIsometry.toSpanSingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/root-linearisometry-tospansingleton--721b34e40f9e46cd1c7ae446.md) | 92 | `declaration-track:721b34e40f9e46cd1c7ae44698b0d654b07bbc060eae24ef4fe4f729bb4b1c41` |
| 6 | `theorem` | [_root_.LinearIsometry.toSpanSingleton_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/root-linearisometry-tospansingleton-apply--40f77c892ce45749aa795334.md) | 98 | `result-track:40f77c892ce45749aa795334885977f77b904c79a8ef8f3a6bc5940a1cfccbf7` |
| 7 | `theorem` | [_root_.LinearIsometry.coe_toSpanSingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/root-linearisometry-coe-tospansingleton--ebfe521392dba9de3e4129c8.md) | 103 | `result-track:ebfe521392dba9de3e4129c84952e0cf8879c67e796474634705beea73d0db93` |
| 8 | `def` | [opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm--883c415d84b6eb1dc4284def.md) | 114 | `declaration-track:883c415d84b6eb1dc4284def6d5d18515c2e8b8d6e6affd030b198b2b102296e` |
| 9 | `instance` | [hasOpNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/hasopnorm--a6bc4aacc6aa8ac01499cc10.md) | 117 | `declaration-track:a6bc4aacc6aa8ac01499cc10922463652b4a885c05cf4d84537cbd40fedb4ffb` |
| 10 | `theorem` | [norm_def](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-def--7e0accbe02ef682e680088b2.md) | 120 | `result-track:7e0accbe02ef682e680088b28d323b676c9f1dc29cbdd81cdd6fd2c55b563ad9` |
| 11 | `theorem` | [bounds_nonempty](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/bounds-nonempty--ed507ceaa13fac773b6f4f3b.md) | 125 | `result-track:ed507ceaa13fac773b6f4f3b2a9db03ddc8c39654ca0f72e55ea23bb38ff93c2` |
| 12 | `theorem` | [bounds_bddBelow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/bounds-bddbelow--e1680cb2b0bb6209c25341c8.md) | 130 | `result-track:e1680cb2b0bb6209c25341c849249eed59230c88b4c20949ee70f1100fb7ebcf` |
| 13 | `theorem` | [isLeast_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/isleast-opnorm--6d1f2587dc58416fe8b2214b.md) | 133 | `result-track:6d1f2587dc58416fe8b2214b483bf61e6ea59405cafdb7083be2cadedee383c4` |
| 14 | `theorem` | [opNorm_le_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-bound--de5e862b50eb703699d4f00c.md) | 141 | `result-track:de5e862b50eb703699d4f00cd874149c56d278bd62149050c6319685f789befb` |
| 15 | `theorem` | [opNorm_le_bound'](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-bound--b1267c24d840b3a4a00ec538.md) | 147 | `result-track:b1267c24d840b3a4a00ec538d095b5c73b2e3831d4adbf3ab15754bb333031a1` |
| 16 | `theorem` | [opNorm_le_of_lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-of-lipschitz--84e8aaad5d947c894a329fe7.md) | 154 | `result-track:84e8aaad5d947c894a329fe7f7526ff10237832cf1b8b38622295c4a4f62cd10` |
| 17 | `theorem` | [opNorm_eq_of_bounds](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-eq-of-bounds--30de64326ebb7e1b46c5dd88.md) | 159 | `result-track:30de64326ebb7e1b46c5dd88e582615cc355f1940343abb38670281b8fa901c5` |
| 18 | `theorem` | [opNorm_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-neg--50a051cc329c9dfdc80d3dc9.md) | 167 | `result-track:50a051cc329c9dfdc80d3dc99ba02c79568c184f833c6dd442caeec54293ce4a` |
| 19 | `theorem` | [opNorm_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-nonneg--dce0298b14fb9c0d420fdc0b.md) | 170 | `result-track:dce0298b14fb9c0d420fdc0bc6d2c80b370f565ae7b7d2002ac20d2134498aa9` |
| 20 | `theorem` | [opNorm_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-zero--1846123c5d56a40fb478d32b.md) | 175 | `result-track:1846123c5d56a40fb478d32b4ac05febdb6ee75caf68e838ec15c031da12a590` |
| 21 | `theorem` | [norm_id_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-id-le--82f7acad724007c1f7ce32a6.md) | 181 | `result-track:82f7acad724007c1f7ce32a6c8b825b38d99d34de0cf272b51deb7f01da3135d` |
| 22 | `theorem` | [le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/le-opnorm--c5708f2f388f1c7df918d684.md) | 190 | `result-track:c5708f2f388f1c7df918d684a8f65ebd46ded57047b7c4db5aadcb17c101c545` |
| 23 | `theorem` | [dist_le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/dist-le-opnorm--3178972e74e6f3bb3df48647.md) | 192 | `result-track:3178972e74e6f3bb3df4864743d51be30c2d6ba677690eec9de15862d5c1e7da` |
| 24 | `theorem` | [le_of_opNorm_le_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/le-of-opnorm-le-of-le--6d0ddbc2da18560b8d30835a.md) | 196 | `result-track:6d0ddbc2da18560b8d30835af16dc1a03df00c87536e3d3a1c3a33052cf82930` |
| 25 | `theorem` | [le_opNorm_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/le-opnorm-of-le--569527ad849554377735c7a8.md) | 201 | `result-track:569527ad849554377735c7a8157c9bfa12f83631b1e2166a6445eea1ef4fa63d` |
| 26 | `theorem` | [le_of_opNorm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/le-of-opnorm-le--cd2dbda22906b55655a9aba1.md) | 205 | `result-track:cd2dbda22906b55655a9aba1188741f419e388ef2359f33186783a8402832b00` |
| 27 | `theorem` | [opNorm_le_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-iff--38782147f513554da9a64fea.md) | 209 | `result-track:38782147f513554da9a64fead9e76bd4cf427e85b779f6a7b449404b3518bbe0` |
| 28 | `theorem` | [ratio_le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/ratio-le-opnorm--7ceaa85b584d4bd451f8bdf8.md) | 214 | `result-track:7ceaa85b584d4bd451f8bdf876ffab028b59d97906b09e4b5860b72ab9e0091c` |
| 29 | `theorem` | [unit_le_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/unit-le-opnorm--e409b0bfa738be71bd60589f.md) | 219 | `result-track:e409b0bfa738be71bd60589f066f7e483394eeef40229079d40d83da3f79cea4` |
| 30 | `theorem` | [opNorm_le_of_shell](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-of-shell--8215724fd08b94533bf46087.md) | 223 | `result-track:8215724fd08b94533bf46087f38da2b1343db1501acf879a682ee0c8cf7adcfc` |
| 31 | `theorem` | [opNorm_le_of_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-of-ball--fad5f29f7ed371d95b9fa416.md) | 228 | `result-track:fad5f29f7ed371d95b9fa4161e9171f2fac4b85021afb8b3535311f5a6979420` |
| 32 | `theorem` | [opNorm_le_of_nhds_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-of-nhds-zero--9ff914c9813c43b2d5403b80.md) | 235 | `result-track:9ff914c9813c43b2d5403b805a47d4893c8907e8dc3b0e582c7ac9f962e8aafa` |
| 33 | `theorem` | [opNorm_le_of_shell'](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-of-shell--431de8baea7a9baae687db4c.md) | 241 | `result-track:431de8baea7a9baae687db4c331a48ffa55ccd19975aea0974cbab53cc4e5ad8` |
| 34 | `theorem` | [opNorm_le_of_unit_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-le-of-unit-norm--2ead0aa852ec24914ae8b7a4.md) | 254 | `result-track:2ead0aa852ec24914ae8b7a4de863bbb7fb3b7fde53958220b68c8c449cd6883` |
| 35 | `theorem` | [opNorm_add_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-add-le--5101cb0bdf5b1c8c619c7240.md) | 264 | `result-track:5101cb0bdf5b1c8c619c7240dbd14cb2060305ed4dadfdd958f2a61de5ac701d` |
| 36 | `theorem` | [norm_id_of_nontrivial_seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-id-of-nontrivial-seminorm--a1c020eb857be588635922fd.md) | 271 | `result-track:a1c020eb857be588635922fd25a3dea942bad0a1f1a24f180a69219f7a6a0294` |
| 37 | `theorem` | [opNorm_smul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-smul-le--32818cda1ca586d889824d8f.md) | 277 | `result-track:32818cda1ca586d889824d8fa19245b808f0dfbf4924b12ed893c86f5c01ef2f` |
| 38 | `def` | [seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/seminorm--10080b8ee1aef5d6e6e64cc3.md) | 289 | `declaration-track:10080b8ee1aef5d6e6e64cc383324fe4df4ae7517ab206a3804f4a82ff8f5086` |
| 39 | `lemma` | [uniformity_eq_seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/uniformity-eq-seminorm--640c7b7cad2f38b7ebc8bd02.md) | 292 | `result-track:640c7b7cad2f38b7ebc8bd021934d6a08ed35564358ed66c82d7b7653aca16c0` |
| 40 | `instance` | [toPseudoMetricSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/topseudometricspace--0a988028a8a1800609fcd97f.md) | 312 | `declaration-track:0a988028a8a1800609fcd97fe10981445fabca7eed8af5f46074e82e36bf06bf` |
| 41 | `instance` | [toSeminormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/toseminormedaddcommgroup--14ff27c93356794df65f225d.md) | 317 | `declaration-track:14ff27c93356794df65f225d3e5e3043a5c65c85b5edcec15c9e038b47e8aec1` |
| 42 | `instance` | [toNormedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/tonormedspace--aa6182b742ecd5468cc16084.md) | 319 | `declaration-track:aa6182b742ecd5468cc16084fee66e8a8e5cffb44520bd56db2990863f5ad619` |
| 43 | `theorem` | [opNorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-comp-le--994dcda5d95c0d01aeeb149c.md) | 324 | `result-track:994dcda5d95c0d01aeeb149c899af674b1a051c66c91ca0f9a7d535fe0d3417f` |
| 44 | `instance` | [toSeminormedRing](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/toseminormedring--cdabda7e1cd0aea644545d40.md) | 330 | `declaration-track:cdabda7e1cd0aea644545d405f153f53535a0085de08179e9edc269bce7b943e` |
| 45 | `instance` | [toNormedAlgebra](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/tonormedalgebra--3171a74c74532ad105e6f880.md) | 335 | `declaration-track:3171a74c74532ad105e6f8806e23bd03e2b8b18217a83f545fc55efd7634e53e` |
| 46 | `theorem` | [opNorm_subsingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/opnorm-subsingleton--a220722e71dd92be09753c1a.md) | 342 | `result-track:a220722e71dd92be09753c1a5e057ad9d60aef06c17ce5e5ff7c959859b0f53c` |
| 47 | `lemma` | [le_opNorm_enorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/le-opnorm-enorm--4e65d1d48046bce714cc9b1c.md) | 350 | `result-track:4e65d1d48046bce714cc9b1ccc0da228002198aec524317f9ddaff8cc4f8489c` |
| 48 | `theorem` | [norm_restrictScalars](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-restrictscalars--ee576315ecea2ecbd15748a7.md) | 365 | `result-track:ee576315ecea2ecbd15748a7dd8275e47364f31e362268aa31a626842d247ac2` |
| 49 | `def` | [restrictScalarsIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/restrictscalarsisometry--61a322a7427b728f2e66f54d.md) | 374 | `declaration-track:61a322a7427b728f2e66f54df3b506acadab4dc0b97bdcc2a057ca52ebe802ae` |
| 50 | `theorem` | [coe_restrictScalarsIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/coe-restrictscalarsisometry--fc9be60129120639aa1af7eb.md) | 380 | `result-track:fc9be60129120639aa1af7eb77873d3b7205b7945d2ceb7457d7bf23e74dbe8d` |
| 51 | `theorem` | [restrictScalarsIsometry_toLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/restrictscalarsisometry-tolinearmap--fe067d9ec2bb9ffa61e75eeb.md) | 385 | `result-track:fe067d9ec2bb9ffa61e75eeba0c908deef04553de49ce1ba99d199fc8f1bc8cb` |
| 52 | `lemma` | [norm_pi_le_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-pi-le-of-le--2db5f0b8d10bdbc53e704ad7.md) | 391 | `result-track:2db5f0b8d10bdbc53e704ad7f17b9abc81fce5c15cc77019aff0985d06bb1ca5` |
| 53 | `theorem` | [mkContinuous_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/mkcontinuous-norm-le--0d3532cfb3100dfbf3cd765e.md) | 405 | `result-track:0d3532cfb3100dfbf3cd765e7e214b11a7546fea52225a1bcb4bf2e2b4a19a95` |
| 54 | `theorem` | [mkContinuous_norm_le'](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/mkcontinuous-norm-le--ecd11ce4b85a674f960d0735.md) | 411 | `result-track:ecd11ce4b85a674f960d073560ecceeaaa33a8f0f6b9c06a9840bda75b1fbfce` |
| 55 | `theorem` | [norm_toContinuousLinearMap_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-tocontinuouslinearmap-le--a6de746915eb0b06ec8a57e8.md) | 420 | `result-track:a6de746915eb0b06ec8a57e886daa791904d22a0807e3f7eb58cc668cfcc796b` |
| 56 | `theorem` | [norm_subtypeL_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/declarations/norm-subtypel-le--733261eb9c8eaee0973236eb.md) | 427 | `result-track:733261eb9c8eaee0973236ebc51d73a43ab0e5e746dd9bddea947a67b6e52ab6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
