# Verification target: GRWTSK.Geometry.AlgebraicGeometry.OrderOfVanishing.Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc8bac455be94110172258817678565c04b6c50f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc8bac455be94110172258817678565c04b6c50f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordHom](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ordhom--19291a1bf4daa97466be1e4e.md) | 35 | `declaration-track:19291a1bf4daa97466be1e4e18f4e5e63ec4a78f055f6147fb4d284691b3d771` |
| 2 | `lemma` | [ordHom_of_isUnit](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ordhom-of-isunit--6fc75fdc1e13107b637a2475.md) | 39 | `result-track:6fc75fdc1e13107b637a24753dd83674a1a0f056b5c69558ba958a8824d04e90` |
| 3 | `def` | [ord](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord--2b8213c0f57261e99e2fc635.md) | 52 | `declaration-track:2b8213c0f57261e99e2fc635504e5c23ee1a5b07be0af21e3874f404247ddba9` |
| 4 | `lemma` | [ord_eq_ordHom_of_coheight_eq_one](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-eq-ordhom-of-coheight-eq-one--a8c6598f8c54829c34fda97b.md) | 57 | `result-track:a8c6598f8c54829c34fda97b89f6878523f34761072f202ff62fb93e53d383f8` |
| 5 | `lemma` | [ord_eq_zero_of_coheight_neq_one](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-eq-zero-of-coheight-neq-one--2d9e20326bb9361409d32b99.md) | 61 | `result-track:2d9e20326bb9361409d32b990aede2a0125987a2173c2c0bb0f66895c7ee5b28` |
| 6 | `lemma` | [ord_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-zero--5865547f21464f6c89f2695f.md) | 65 | `result-track:5865547f21464f6c89f2695ffcecddaa9eabfe2633d542dcfcf0873f69fa2b43` |
| 7 | `lemma` | [ord_eq_unzero_ordHom](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-eq-unzero-ordhom--3c67fd78f22adc73daa9302a.md) | 71 | `result-track:3c67fd78f22adc73daa9302ad20fe8c17ab8862917fa9bf1d719e06f9e5a17a6` |
| 8 | `lemma` | [ord_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-eq-iff--cce46ec714b6e48b5d93e19e.md) | 75 | `result-track:cce46ec714b6e48b5d93e19efe411b3405bcec2a160a0418563c4d921bcb1675` |
| 9 | `lemma` | [ord_mul](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-mul--f3767210e9de413458ce305c.md) | 81 | `result-track:f3767210e9de413458ce305c14642d8dfb871df5c5d8703b548e1ad8755abf0f` |
| 10 | `lemma` | [ord_of_isUnit](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-of-isunit--b50797d6c29d4e483204f25d.md) | 88 | `result-track:b50797d6c29d4e483204f25dd0a8508aef4d90e7a829c4d4142aa951e2588363` |
| 11 | `lemma` | [ord_le_ord_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-le-ord-iff--56d462f046348d89878d9e3a.md) | 95 | `result-track:56d462f046348d89878d9e3a7363b2723269c0f6991159d58ff8ec675fae92c7` |
| 12 | `lemma` | [le_ord_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/le-ord-iff--229744c15a142ab260346ad7.md) | 100 | `result-track:229744c15a142ab260346ad79cbf86e67f19c572ed373703a1f6ae4a9b47cfb1` |
| 13 | `lemma` | [ord_add](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-add--8cc66c7e63908a67fb8b034e.md) | 107 | `result-track:8cc66c7e63908a67fb8b034ed4e8fc075a812632f697d9d58af66c6811e256f3` |
| 14 | `lemma` | [ord_le_smul](../../../../../mathematics/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant5f4960f76a6bb48a4eee1a3179059f449d3a2bca5e5313e3532489fcf55f6df1.lean/declarations/ord-le-smul--2610aa0d461c1b4ebeb0b3a7.md) | 119 | `result-track:2610aa0d461c1b4ebeb0b3a7e0e4f551b549fa07b7eed8730462dcfbeb5f2d7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
