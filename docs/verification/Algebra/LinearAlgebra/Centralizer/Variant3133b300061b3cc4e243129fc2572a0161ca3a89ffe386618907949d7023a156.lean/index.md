# Verification target: GRWTSK.Algebra.LinearAlgebra.Centralizer.Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da5f3a968408284b5adc8cac0a458f0195353aec",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da5f3a968408284b5adc8cac0a458f0195353aec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_centralizer_iff](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/le-centralizer-iff--3ffbccbacc60f4dc63bbc928.md) | 34 | `result-track:3ffbccbacc60f4dc63bbc928a5bf7d72c848e4b9fec10484af059a049620fc90` |
| 2 | `lemma` | [centralizer_coe_sup](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-coe-sup--197df2d9f1e5029329e705d6.md) | 37 | `result-track:197df2d9f1e5029329e705d6e1661b8bc810876c4a2c78948d48bb148458b8e7` |
| 3 | `lemma` | [centralizer_coe_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-coe-isup--28437d8a264b49589557ee08.md) | 42 | `result-track:28437d8a264b49589557ee08935197b9f607220121acfa9395b4cd2790079b77` |
| 4 | `lemma` | [centralizer_coe_image_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-coe-image-includeleft-eq-center-tensorproduct--223ba255383c8eb705a6fd29.md) | 62 | `result-track:223ba255383c8eb705a6fd296bf78d1be726ba472d2680204da50c3a4d8b05a9` |
| 5 | `lemma` | [centralizer_coe_image_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-coe-image-includeright-eq-center-tensorproduct--66701840d4e28c925790ab1b.md) | 103 | `result-track:66701840d4e28c925790ab1b34243ea100ce6ffbae4cbd4e64175b62cbc5f39a` |
| 6 | `lemma` | [centralizer_coe_map_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-coe-map-includeleft-eq-center-tensorproduct--74b6f43b1a9a31f6ed942ed0.md) | 131 | `result-track:74b6f43b1a9a31f6ed942ed09e482f499d7a779725d9ba6ae6cd74d6fb2bdad8` |
| 7 | `lemma` | [centralizer_coe_map_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-coe-map-includeright-eq-center-tensorproduct--65a50ad40aa70ec1795ce0bc.md) | 144 | `result-track:65a50ad40aa70ec1795ce0bc167b01d0f3893df5bcbf6f65c2a1ea08dfce6597` |
| 8 | `lemma` | [centralizer_coe_range_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-coe-range-includeleft-eq-center-tensorproduct--b2f2fcffff00711b0ebee9dd.md) | 156 | `result-track:b2f2fcffff00711b0ebee9dd0348f65f3f6390fc77cfa1560415ffa3f00f7cae` |
| 9 | `lemma` | [centralizer_range_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-range-includeright-eq-center-tensorproduct--81fb515e64bd2013ccc20a70.md) | 169 | `result-track:81fb515e64bd2013ccc20a703f13416149ebe79b40c5607aa56c557b3eaec0ab` |
| 10 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_left](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-left--fb2536c0cd768350d43111a2.md) | 178 | `result-track:fb2536c0cd768350d43111a208e3310305944657170735b49140b6928440ff93` |
| 11 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_right](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant3133b300061b3cc4e243129fc2572a0161ca3a89ffe386618907949d7023a156.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-right--3b1c7b4b35a5c086243c6244.md) | 185 | `result-track:3b1c7b4b35a5c086243c6244372aa47ccfcef27c54c728ec1fceac8862ddffc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
