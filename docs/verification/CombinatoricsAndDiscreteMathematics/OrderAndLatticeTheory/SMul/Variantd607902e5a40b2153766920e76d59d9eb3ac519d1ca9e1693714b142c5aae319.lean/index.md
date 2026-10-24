# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SMul.Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cccd6aaffa5efd1b533e9b6cec1cbb8996223dd",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cccd6aaffa5efd1b533e9b6cec1cbb8996223dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/orderedsmul--2551e9e755e599d3773248c9.md) | 56 | `declaration-track:2551e9e755e599d3773248c906a0e7e193e50ab7260a8db251598d26a7d43f9c` |
| 2 | `instance` | [instSMulWithZeroOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/instsmulwithzeroorderdual--e3150326dcfdeaffa425560a.md) | 68 | `declaration-track:e3150326dcfdeaffa425560aba0cc139072d1b1a35c4d216c1fbc69856aaf17a` |
| 3 | `instance` | [instMulActionOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/instmulactionorderdual--f9a68540ddbe1d7d2cc5ad1e.md) | 74 | `declaration-track:f9a68540ddbe1d7d2cc5ad1e614cf04196d56ead824e1f8278fa597eee44094f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/instance--71b648f81f92d0d1e97a0085.md) | 79 | `declaration-track:71b648f81f92d0d1e97a008573f9e2dae308bdfcce513c57a31495c13c2b3d70` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/instance--7c24ea2f05f32cb957a1fb8a.md) | 82 | `declaration-track:7c24ea2f05f32cb957a1fb8aad394b17777061f82a0bc9dfcc97ecbd447b05eb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/instance--db5327e59e78ae539b76dbbd.md) | 86 | `declaration-track:db5327e59e78ae539b76dbbdb2f2ab044ac7009daf1d5ef9d7ca376d3f42fa35` |
| 7 | `theorem` | [smul_lt_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-lt-smul-of-pos--75a7a5df497073772adf6c0b.md) | 98 | `result-track:75a7a5df497073772adf6c0b75554e20e10ab7619c5119eb3f745f7ba24e9021` |
| 8 | `theorem` | [smul_le_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-le-smul-of-nonneg--f48388dde4c1e58ebc061635.md) | 102 | `result-track:f48388dde4c1e58ebc061635ca56832b89cf4bde114d59b95529ea04fdf54ee3` |
| 9 | `theorem` | [smul_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-nonneg--e9b1e87b7618275c664d03e9.md) | 110 | `result-track:e9b1e87b7618275c664d03e9e1e7bf82abe8196ebd7412ef8b95d85f9fb1d8f4` |
| 10 | `theorem` | [smul_nonpos_of_nonneg_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-nonpos-of-nonneg-of-nonpos--99cee5df299be320973f4155.md) | 116 | `result-track:99cee5df299be320973f41556ac532fc097eeffab0a56a6eb08bc0df495b275c` |
| 11 | `theorem` | [eq_of_smul_eq_smul_of_pos_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/eq-of-smul-eq-smul-of-pos-of-le--c8c01d78606b3a42071c5c57.md) | 120 | `result-track:c8c01d78606b3a42071c5c5796320e2fa857dfaa52ebf3fa50ada69f2881a040` |
| 12 | `theorem` | [lt_of_smul_lt_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/lt-of-smul-lt-smul-of-nonneg--0c8c60d95da421321077da60.md) | 124 | `result-track:0c8c60d95da421321077da60dfa9d5f78a7cce34800a10147582b90cf92c5802` |
| 13 | `theorem` | [smul_lt_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-lt-smul-iff-of-pos--7da74ef9fc77f296922bb56d.md) | 130 | `result-track:7da74ef9fc77f296922bb56d6d2ced9e3f83f15718b692f31c840921be65cf70` |
| 14 | `theorem` | [smul_pos_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-pos-iff-of-pos--6b883447d69e70a3c43dd71b.md) | 134 | `result-track:6b883447d69e70a3c43dd71b914672f99af87419717ec4c5bed1ea99597a6c8c` |
| 15 | `theorem` | [monotone_smul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/monotone-smul-left--b7886ef11e1775d4d7e40cb1.md) | 143 | `result-track:b7886ef11e1775d4d7e40cb1fdfeade0a5f8806757fe7f049a352bc523f2365c` |
| 16 | `theorem` | [strictMono_smul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/strictmono-smul-left--88ecbe25208cfaf68a4d9ca5.md) | 147 | `result-track:88ecbe25208cfaf68a4d9ca556ff996154159256d0bd2b461f42d9645d19d729` |
| 17 | `theorem` | [smul_lowerBounds_subset_lowerBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-lowerbounds-subset-lowerbounds-smul--e45d510a65374b0b40c852b1.md) | 151 | `result-track:e45d510a65374b0b40c852b11271edcaf44081328c29119e01f2481ba5488330` |
| 18 | `theorem` | [smul_upperBounds_subset_upperBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-upperbounds-subset-upperbounds-smul--6fbb478a7237b8c86bc3ce4c.md) | 156 | `result-track:6fbb478a7237b8c86bc3ce4c77e5dda1170354f8fc8d98a04ca9e621792a4a30` |
| 19 | `theorem` | [BddBelow.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/bddbelow-smul-of-nonneg--192d1780efbaadd7692bc05f.md) | 161 | `result-track:192d1780efbaadd7692bc05feba07c4f254e453131c5a6018c31c295092ff57b` |
| 20 | `theorem` | [BddAbove.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/bddabove-smul-of-nonneg--bccb9b370857b982d5c8bfeb.md) | 165 | `result-track:bccb9b370857b982d5c8bfebc7614a5fa08b187dbbe2c0ba5d047e44d49c1419` |
| 21 | `theorem` | [OrderedSMul.mk''](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/orderedsmul-mk--c3684f3fb9b066c96d0cc6cc.md) | 173 | `result-track:c3684f3fb9b066c96d0cc6cced2d10544dd4b2f9919212bff054f90a2e62871f` |
| 22 | `instance` | [Nat.orderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/nat-orderedsmul--79669ef292fb569cd657c2ba.md) | 179 | `declaration-track:79669ef292fb569cd657c2ba57ebe1ff3d1fbb8249def3b487d79ce05a68dc56` |
| 23 | `instance` | [Int.orderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/int-orderedsmul--78dbe7bd9bd23da3a66e2863.md) | 189 | `declaration-track:78dbe7bd9bd23da3a66e2863d972238bca1b0b6d95117d57ab33539281eae345` |
| 24 | `instance` | [LinearOrderedSemiring.toOrderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/linearorderedsemiring-toorderedsmul--6798bc6a8bfdf88159860607.md) | 198 | `declaration-track:6798bc6a8bfdf8815986060764e80ec1d53ab3fa3014ec20051c7a301f4edbac` |
| 25 | `theorem` | [OrderedSMul.mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/orderedsmul-mk--780c66aeb8d251b4efad50ac.md) | 210 | `result-track:780c66aeb8d251b4efad50ac63a6d7c7929c88614e8dc8dc3d885c97f9ef6d03` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/instance--f706e08ab9cd375affa4f2cf.md) | 224 | `declaration-track:f706e08ab9cd375affa4f2cfedf15d72ec77c99b817727dd15eac07ad92e1848` |
| 27 | `instance` | [Pi.orderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/pi-orderedsmul--b542da42c06155113e7cc9c2.md) | 228 | `declaration-track:b542da42c06155113e7cc9c28bb383bcfbb9accc05d91636bf70b95e9c437869` |
| 28 | `instance` | [Pi.orderedSMul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/pi-orderedsmul--517a8b08ad24e56c7bb46128.md) | 235 | `declaration-track:517a8b08ad24e56c7bb46128d6c7d3d2864fafd63aa875d1c84e8adbc3c50128` |
| 29 | `instance` | [Pi.orderedSMul''](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/pi-orderedsmul--cc0f1685310d0e6844a770a0.md) | 240 | `declaration-track:cc0f1685310d0e6844a770a068f73fb67c428e6167dfdac8976402a957b5af76` |
| 30 | `theorem` | [smul_le_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-le-smul-iff-of-pos--66a5e90b66b4ba336725565f.md) | 246 | `result-track:66a5e90b66b4ba336725565f1294ff8a047bfef41ff6975759cedbdc72c555b2` |
| 31 | `theorem` | [inv_smul_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/inv-smul-le-iff--508d463dd6d8201f481052e0.md) | 253 | `result-track:508d463dd6d8201f481052e05132fe2299c46a6f941a4ddf8b511c6d609663d5` |
| 32 | `theorem` | [inv_smul_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/inv-smul-lt-iff--df4826d1483fb32b20dbc255.md) | 257 | `result-track:df4826d1483fb32b20dbc255b48c25e25e82c6fc8672158df731aecefde55ec4` |
| 33 | `theorem` | [le_inv_smul_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/le-inv-smul-iff--537c9025be2ac09cbecefaa8.md) | 261 | `result-track:537c9025be2ac09cbecefaa842d6a29fe5c33924b0af6e7db00ace7ec8204382` |
| 34 | `theorem` | [lt_inv_smul_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/lt-inv-smul-iff--ed13b293d309ae530f775240.md) | 265 | `result-track:ed13b293d309ae530f7752400c9a8cceea284f8597377bca76297be9d5cfbcec` |
| 35 | `def` | [OrderIso.smulLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/orderiso-smulleft--64728639e20cb6f73df98ee5.md) | 273 | `declaration-track:64728639e20cb6f73df98ee5ce7dbff3306c29b79bac3c6f1e411a97209d5de3` |
| 36 | `theorem` | [lowerBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/lowerbounds-smul-of-pos--8e0a8ec220568946e04ecf61.md) | 286 | `result-track:8e0a8ec220568946e04ecf612bf702ea03fab5ea9968de53daced99f8fd558e8` |
| 37 | `theorem` | [upperBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/upperbounds-smul-of-pos--24501e90117067af5804234a.md) | 291 | `result-track:24501e90117067af5804234ac2637bf3192d90d2ee07ba345ff3cd9e5fb02f62` |
| 38 | `theorem` | [bddBelow_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/bddbelow-smul-iff-of-pos--7d1c90aa61c9089a3fb6dd9f.md) | 296 | `result-track:7d1c90aa61c9089a3fb6dd9fbab5ebb868555902cf83675e9dbacad7e26734d4` |
| 39 | `theorem` | [bddAbove_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/bddabove-smul-iff-of-pos--72da94f699fea0935a4c0961.md) | 301 | `result-track:72da94f699fea0935a4c09610fae5aeeb330f1cdd6e026a0849b0abf1b3c5750` |
| 40 | `theorem` | [smul_nonneg_of_pos_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-nonneg-of-pos-of-nonneg--c226d3949305ba59a5b7734c.md) | 314 | `result-track:c226d3949305ba59a5b7734cfe1250a557200e9f553b893ffaad2d4b947ca818` |
| 41 | `theorem` | [smul_nonneg_of_nonneg_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-nonneg-of-nonneg-of-pos--40349ec4177ee54151f902de.md) | 317 | `result-track:40349ec4177ee54151f902de51b2da1ea18648ed13c6fb62079907d29423e71c` |
| 42 | `theorem` | [smul_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-ne-zero-of-pos-of-ne-zero--58fc657d99b7df0c4320242f.md) | 326 | `result-track:58fc657d99b7df0c4320242f14e88a2e0d45be482aef82add3d76a2c5b387281` |
| 43 | `theorem` | [smul_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variantd607902e5a40b2153766920e76d59d9eb3ac519d1ca9e1693714b142c5aae319.lean/declarations/smul-ne-zero-of-ne-zero-of-pos--ef2aea85c91bda890c5e45ea.md) | 329 | `result-track:ef2aea85c91bda890c5e45ea596303e0393225d083ea44e40d0982ce443e6482` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
