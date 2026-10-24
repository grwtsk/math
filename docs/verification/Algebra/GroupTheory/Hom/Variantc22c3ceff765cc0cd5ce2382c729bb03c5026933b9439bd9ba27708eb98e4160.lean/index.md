# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "315b59213745b1665e80d11a65950818be2ebf2f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `315b59213745b1665e80d11a65950818be2ebf2f`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUnit.eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/isunit-eq-on-inv--60a95ff1d87ff726d9ac8b60.md) | 55 | `result-track:60a95ff1d87ff726d9ac8b605a7dc4ab37cba00421ed3119d29886a69ec22334` |
| 2 | `theorem` | [eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/eq-on-inv--a75a0daec925d45709454b0f.md) | 64 | `result-track:a75a0daec925d45709454b0ffb9770e098e9ab033416f302d193cbdcf0e8f491` |
| 3 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/map--5ce748870534c93765d69c26.md) | 76 | `declaration-track:5ce748870534c93765d69c268a2a890fdad05f807042058a171ba2579282e91a` |
| 4 | `theorem` | [coe_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/coe-map--dcf7807aad28afa87dc7b459.md) | 84 | `result-track:dcf7807aad28afa87dc7b459f6e260f7694b7ffa5bf2ffe3183f54a2d8c72c65` |
| 5 | `theorem` | [coe_map_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/coe-map-inv--c204add3db32e863d43acf24.md) | 87 | `result-track:c204add3db32e863d43acf24fecc9711f0fa4ae51d7ca103b483617c916d6164` |
| 6 | `lemma` | [map_mk](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/map-mk--0635be406504a5fe60934085.md) | 90 | `result-track:0635be406504a5fe6093408539b676faaf99d5deb01af2ea0dc953fdf461c2d5` |
| 7 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/map-comp--6c86d612a928a59ba29c264f.md) | 95 | `result-track:6c86d612a928a59ba29c264f56609da35a3849a26cf58c3051d23335a53df9fa` |
| 8 | `lemma` | [map_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/map-injective--859dd37441166817eaa95f78.md) | 98 | `result-track:859dd37441166817eaa95f7837f0994de69bd2554c9fcba31c628f40b988ec03` |
| 9 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/map-id--98ff9ba8d5d963f82ae433ba.md) | 104 | `result-track:98ff9ba8d5d963f82ae433ba5604c3167d1ad88b23d1da0b3c6a220f344172ed` |
| 10 | `def` | [coeHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/coehom--627e715b1ad1a0ff5d5ff693.md) | 108 | `declaration-track:627e715b1ad1a0ff5d5ff693abd89f6be117ae9c4d86b4ca18958955e10537f6` |
| 11 | `theorem` | [coeHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/coehom-apply--f5f3be39b27934f32fcfdd09.md) | 114 | `result-track:f5f3be39b27934f32fcfdd090a4532b57c54083523edbad02c8d01b0315d3c51` |
| 12 | `theorem` | [val_zpow_eq_zpow_val](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/val-zpow-eq-zpow-val--3c0cf0970549af0a18160edf.md) | 121 | `result-track:3c0cf0970549af0a18160edf61c2c2768b3e29b06b7009eee1c9ca85f51b7877` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.IsLocalHom.Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.map_units_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/root-grwtsk-algebra-grouptheory-islocalhom-variant3dddbddc5dd0ebaf3f1c02--b8a0c26cc76e68d8ccfea1e2.md) | 125 | `result-track:b8a0c26cc76e68d8ccfea1e2c257bec808cb3a561677ba5dfd1601ad96c1f875` |
| 14 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/liftright--242885558881ba3465f84cbb.md) | 136 | `declaration-track:242885558881ba3465f84cbb599156d9a471e5a79f5ed06aee1b192841240459` |
| 15 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/coe-liftright--d84e6ef9e9cc6c2385dad794.md) | 142 | `result-track:d84e6ef9e9cc6c2385dad7944a3e9c67f8822c67e50c208355106d7f24903201` |
| 16 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/mul-liftright-inv--c16195edf984cf9aeeee18a1.md) | 146 | `result-track:c16195edf984cf9aeeee18a173e481c74fe866cca0c26874019899e184f629e3` |
| 17 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/liftright-inv-mul--f34c106102586ce126bc1dcf.md) | 151 | `result-track:f34c106102586ce126bc1dcf12fae6778bda82b28149cfea31aa2521466797e3` |
| 18 | `def` | [toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/tohomunits--b6228b940728d86844da2a52.md) | 166 | `declaration-track:b6228b940728d86844da2a52cf831b56195d953cb9fedc308ab2e4ddaf5f8b6e` |
| 19 | `theorem` | [coe_toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/coe-tohomunits--b58b88e39aaa678e7d3b2bef.md) | 172 | `result-track:b58b88e39aaa678e7d3b2bef8128727b6018f0f32749789dcb0399b4b8534190` |
| 20 | `theorem` | [map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/map--cb66e51bb98ac22e646be480.md) | 186 | `result-track:cb66e51bb98ac22e646be480403e48556da09d3912ecc126ea27e1093785cf30` |
| 21 | `theorem` | [of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/of-leftinverse--a4f99a404d038c1612ab859c.md) | 190 | `result-track:a4f99a404d038c1612ab859c63da54ca2dd0a19a16bf55fb26f7542d060fb360` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.IsLocalHom.Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.isUnit_map_of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/root-grwtsk-algebra-grouptheory-islocalhom-variant3dddbddc5dd0ebaf3f1c02--be0e2a1ad11463881de9d67b.md) | 196 | `result-track:be0e2a1ad11463881de9d67be0cc5cdf8315991addd46e72bcedc2104320eafb` |
| 23 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/liftright--99bcf934aaad1515bc67bc35.md) | 205 | `declaration-track:99bcf934aaad1515bc67bc35f609d4478ac249acb6c13a220c24b8fb56054a76` |
| 24 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/coe-liftright--2ca4a911bf4a5e75644118d5.md) | 209 | `result-track:2ca4a911bf4a5e75644118d558ff6f6544b0e4a67d712ca960f9f4a55ebe88b9` |
| 25 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/mul-liftright-inv--6e53e1dc59a743092e23e757.md) | 213 | `result-track:6e53e1dc59a743092e23e757350be9ddaa3f2b86bbf290ff2f7adf929c9ccbe3` |
| 26 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/liftright-inv-mul--afbc09499ef6068412852089.md) | 217 | `result-track:afbc09499ef6068412852089f5b6b9600d8a884270a839456a79b18cb4c2eaaf` |
| 27 | `class` | [IsLocalHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/islocalhom--1baf2df60db8a4cb0248171c.md) | 233 | `declaration-track:1baf2df60db8a4cb0248171c8ed5c6494039706ede17fea87035350004e3e5d8` |
| 28 | `theorem` | [IsUnit.of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/isunit-of-map--7d849f6fc809c882f58c00e1.md) | 238 | `result-track:7d849f6fc809c882f58c00e1fba3140109f574e5dd8b84998b5dc2063443d844` |
| 29 | `theorem` | [isUnit_map_iff](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/isunit-map-iff--12d8105694c1ef203342ab9a.md) | 247 | `result-track:12d8105694c1ef203342ab9a765acb1f5a943ef2f3909280cf75c2dcabc562b6` |
| 30 | `theorem` | [isLocalHom_of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/islocalhom-of-leftinverse--b71c8a4f328ee19a03db0c2e.md) | 250 | `result-track:b71c8a4f328ee19a03db0c2eeb2c2fe405c5bc279e71dfa9faf4d09f3e6fd6f7` |
| 31 | `theorem` | [MonoidHom.isLocalHom_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/monoidhom-islocalhom-comp--fdc4b3ed0c02e5444bd11055.md) | 255 | `result-track:fdc4b3ed0c02e5444bd1105529103fd91399012401c2879b475b0dabbca7a3e4` |
| 32 | `theorem` | [isLocalHom_toMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/islocalhom-tomonoidhom--d3189b75bbf636aa39e3b88b.md) | 261 | `result-track:d3189b75bbf636aa39e3b88ba6d99f8b57b5667ddb432339802dee2c1f118781` |
| 33 | `theorem` | [MonoidHom.isLocalHom_of_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantc22c3ceff765cc0cd5ce2382c729bb03c5026933b9439bd9ba27708eb98e4160.lean/declarations/monoidhom-islocalhom-of-comp--61e5b32e106255142dc31994.md) | 265 | `result-track:61e5b32e106255142dc319940bb02de9cf81a226f7f66030be2438aee91c5955` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
