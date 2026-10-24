# Verification target: GRWTSK.Algebra.LinearAlgebra.Orientation.Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d802c328bf3e573c6b95e9398610defa7752c659",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d802c328bf3e573c6b95e9398610defa7752c659`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation--ce08538a506d91a023d485a9.md) | 54 | `declaration-track:ce08538a506d91a023d485a9b0b96fa584f75bae149dc85865244c813d707eba` |
| 2 | `class` | [Module.Oriented](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/module-oriented--0b33d967c464b061a4e730f3.md) | 57 | `declaration-track:0b33d967c464b061a4e730f367e2b4c70a1e21acdbbb3ede47d48fec19be71b8` |
| 3 | `def` | [Orientation.map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map--77367674b1a002673ebcecd8.md) | 66 | `declaration-track:77367674b1a002673ebcecd811e84c747208c076e0e2ba172d55c88f9ee1241c` |
| 4 | `theorem` | [Orientation.map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map-apply--b6b156c0b0628213ad7f2f00.md) | 70 | `result-track:b6b156c0b0628213ad7f2f00ec909d338928e8234709dee8e1d8d310fcd8e494` |
| 5 | `theorem` | [Orientation.map_refl](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map-refl--9401eec14880a490f915c594.md) | 76 | `result-track:9401eec14880a490f915c5943d3ee7516915f6abc163869b1abc5dfe0364038a` |
| 6 | `theorem` | [Orientation.map_symm](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map-symm--1791c3207afdce4a23f99863.md) | 80 | `result-track:1791c3207afdce4a23f99863f5e47a0ccd57ba526da0cc839071c5ddd3d878e2` |
| 7 | `def` | [Orientation.reindex](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-reindex--9784ec4b2b9d5b950c529fdc.md) | 88 | `declaration-track:9784ec4b2b9d5b950c529fdc9a165c492b7d8236c9da3afe8ba3752d34613ffe` |
| 8 | `theorem` | [Orientation.reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-reindex-apply--6a50143422a56f305cb118c7.md) | 92 | `result-track:6a50143422a56f305cb118c738b771c2c57cadf159a2533bef06c03497f71e7d` |
| 9 | `theorem` | [Orientation.reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-reindex-refl--9d1d5b5ddf983e79f470aa22.md) | 98 | `result-track:9d1d5b5ddf983e79f470aa22606fec2517ca76be7124b9d6f936f9994b3dd378` |
| 10 | `theorem` | [Orientation.reindex_symm](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-reindex-symm--fa7f9effc90e1599309e0be0.md) | 102 | `result-track:fa7f9effc90e1599309e0be0103e2cdf8047f53cc06418d5c91179bb2ddf609c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/instance--785183e22540b69751c20b74.md) | 109 | `declaration-track:785183e22540b69751c20b744ee75d2278a45d587e78bde69b2f697773af0fe0` |
| 12 | `theorem` | [Orientation.map_positiveOrientation_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map-positiveorientation-of-isempty--71f5c44ff70c69a727225b69.md) | 115 | `result-track:71f5c44ff70c69a727225b69bbf2ab16851583d028245bb1f4c4e9a155ff7e12` |
| 13 | `theorem` | [Orientation.map_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map-of-isempty--f0d18038c97d853a09449a56.md) | 119 | `result-track:f0d18038c97d853a09449a56e4f0e207d6741ac3d0073b23840e216a6b874669` |
| 14 | `theorem` | [Orientation.map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map-neg--85101fc0c57b5ef3122eaedd.md) | 137 | `result-track:85101fc0c57b5ef3122eaeddde8c292b43abdf037b8c8dbbf42fb41ef29efc75` |
| 15 | `theorem` | [Orientation.reindex_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-reindex-neg--da37cd685317e8eaab023cc6.md) | 142 | `result-track:da37cd685317e8eaab023cc69cbfb1d322f734ef0b380ae7292c77aa8259ce1f` |
| 16 | `theorem` | [map_orientation_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/map-orientation-eq-det-inv-smul--979086c55d9310af87fd4c5e.md) | 152 | `result-track:979086c55d9310af87fd4c5eb334fcb11d2d6e56564c7c631e81e4e6e159e622` |
| 17 | `def` | [orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation--14a05db39c507de9e2edf44c.md) | 167 | `declaration-track:14a05db39c507de9e2edf44c7cd3170e578f36733bb6c8310a13a9eeccdb8244` |
| 18 | `theorem` | [orientation_map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-map--08a1a0a17f077e26cf28bf9c.md) | 170 | `result-track:08a1a0a17f077e26cf28bf9c5c3eca039aaf1d26c196dd717c60dbd8c1d1bb79` |
| 19 | `theorem` | [orientation_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-reindex--d1b920bee2182f7f79748b2a.md) | 174 | `result-track:d1b920bee2182f7f79748b2a3f7ec0ea87e72490a70c55331db99d2230dc6921` |
| 20 | `theorem` | [orientation_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-unitssmul--dd64244645c1e03a1fb6ce6a.md) | 180 | `result-track:dd64244645c1e03a1fb6ce6a3065d81c71693e46a6acf19ddd86645cfa182b12` |
| 21 | `theorem` | [orientation_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-isempty--42f562700ff3e7b10bdcc567.md) | 189 | `result-track:42f562700ff3e7b10bdcc567e0bc7124c420c76cce8d9dee109a06883b5666fa` |
| 22 | `theorem` | [eq_or_eq_neg_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/eq-or-eq-neg-of-isempty--6dd8288cc57fa7c4fc9c7724.md) | 210 | `result-track:6dd8288cc57fa7c4fc9c77242dbbaff2ff93d09971d38711212d67651a6e43f7` |
| 23 | `theorem` | [orientation_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-eq-iff-det-pos--9353c895399cdd55d12c5c52.md) | 233 | `result-track:9353c895399cdd55d12c5c52714280e3ab3e79f461722e3ea78557b9fbc28c13` |
| 24 | `theorem` | [orientation_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-eq-or-eq-neg--81136a3ced57a96abf8692f8.md) | 241 | `result-track:81136a3ced57a96abf8692f837d4309bdb5d3c6181e5e425ca431f519aa3a2d0` |
| 25 | `theorem` | [orientation_ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-ne-iff-eq-neg--d2dc29f1703c3b3c15be7eb4.md) | 251 | `result-track:d2dc29f1703c3b3c15be7eb418026014e429ff2d3e9712fd07a1a895d483ad79` |
| 26 | `theorem` | [orientation_comp_linearEquiv_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-comp-linearequiv-eq-iff-det-pos--49a687a77ea0148247cd7d3c.md) | 258 | `result-track:49a687a77ea0148247cd7d3cf271eca3dfc0c9623a694f1adb2e7a3195c19897` |
| 27 | `theorem` | [orientation_comp_linearEquiv_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-comp-linearequiv-eq-neg-iff-det-neg--4335e29aa971b8b44a61aae3.md) | 265 | `result-track:4335e29aa971b8b44a61aae3c0ab1dab407e8cedcb14be02281c277d59a31d8c` |
| 28 | `theorem` | [orientation_neg_single](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-neg-single--c603f665408814ffdbfe2c26.md) | 273 | `result-track:c603f665408814ffdbfe2c262a40cc9399fb8f849c132f2f46e2063c969d9803` |
| 29 | `def` | [adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/adjusttoorientation--c988312bb5b43da661740897.md) | 280 | `declaration-track:c988312bb5b43da661740897b36b5442aba9fcb219bcdaf38f041e8fc6300d54` |
| 30 | `theorem` | [orientation_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/orientation-adjusttoorientation--beeaceef2a28dd656a40e2f9.md) | 287 | `result-track:beeaceef2a28dd656a40e2f950fc3077606a944ab8781a6bc9e6d5a7c689a664` |
| 31 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--13027f6eb7eb5019eddd0522.md) | 297 | `result-track:13027f6eb7eb5019eddd0522f04116292200c259bb114f9b5d193c29b9a0a3d5` |
| 32 | `theorem` | [det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/det-adjusttoorientation--795b8e29c01ca331b313b274.md) | 305 | `result-track:795b8e29c01ca331b313b2745a77a8a1d4c784dd2d285063f4d290be33a993f9` |
| 33 | `theorem` | [abs_det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/abs-det-adjusttoorientation--dc1259b19bc996691ab26cf1.md) | 319 | `result-track:dc1259b19bc996691ab26cf1e48b4295626a09366e70a8a18213a60c923b0cd9` |
| 34 | `theorem` | [eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/eq-or-eq-neg--d4059c7ed564b2c938ed61d7.md) | 341 | `result-track:d4059c7ed564b2c938ed61d788a29eac6c8d381be599e301dd89131a0e6632bd` |
| 35 | `theorem` | [ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/ne-iff-eq-neg--66a8f0199e237c4d5c29f246.md) | 350 | `result-track:66a8f0199e237c4d5c29f2463d2cf11e9577894333a7a5db4e5d109d8653803f` |
| 36 | `theorem` | [map_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/map-eq-det-inv-smul--19fe1e00266c2acb1640bb5f.md) | 357 | `result-track:19fe1e00266c2acb1640bb5fbb752a9c46c05d0bd7b0d68f92fe915028f4ee95` |
| 37 | `theorem` | [map_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/map-eq-iff-det-pos--de2d700ffb66c782a59f80aa.md) | 365 | `result-track:de2d700ffb66c782a59f80aab6a9f1abfc033b9a177d37157d4f75ebf9ca322a` |
| 38 | `theorem` | [map_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/map-eq-neg-iff-det-neg--de8a19e6bb82a82bb6381903.md) | 376 | `result-track:de8a19e6bb82a82bb6381903341c87c981dc409c0c46c9338f2db7ad0c787838` |
| 39 | `def` | [someBasis](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/somebasis--0ef6365f135fc6241798aa74.md) | 390 | `declaration-track:0ef6365f135fc6241798aa7418f84d7489908f3385483ea888d5a7065081bb13` |
| 40 | `theorem` | [someBasis_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/declarations/somebasis-orientation--531e1f099fe69107388483fd.md) | 396 | `result-track:531e1f099fe69107388483fd8cefea12eb14bcbdf5db4cbfd11a14165c70a24e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
