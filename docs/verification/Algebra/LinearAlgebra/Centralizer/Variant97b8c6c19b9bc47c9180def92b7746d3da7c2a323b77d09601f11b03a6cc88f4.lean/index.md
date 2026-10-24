# Verification target: GRWTSK.Algebra.LinearAlgebra.Centralizer.Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "122454d0ae1418f5f8bb9f6938a2ed867b07a712",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `122454d0ae1418f5f8bb9f6938a2ed867b07a712`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean.json)

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
| 1 | `lemma` | [le_centralizer_iff](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/le-centralizer-iff--2d9718a692806e61ed32881a.md) | 38 | `result-track:2d9718a692806e61ed32881a2b7597775abd78e0dc90abf1a26987ee3e6dd9cd` |
| 2 | `lemma` | [centralizer_coe_sup](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-coe-sup--914fa29c6c3097f017bc39af.md) | 41 | `result-track:914fa29c6c3097f017bc39aff1c65e1816a9ec132d14b10e5d47d2f480bbcc78` |
| 3 | `lemma` | [centralizer_coe_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-coe-isup--2c42d09329e0b4f68020e03e.md) | 46 | `result-track:2c42d09329e0b4f68020e03e4cbdadd4300c3d84a473c4d48a39406b7b3421df` |
| 4 | `lemma` | [centralizer_coe_image_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-coe-image-includeleft-eq-center-tensorproduct--657bf24cf6afa285d7c49df3.md) | 66 | `result-track:657bf24cf6afa285d7c49df3c657fe6e37025c835b98c945ab76a05cc0de853f` |
| 5 | `lemma` | [centralizer_coe_image_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-coe-image-includeright-eq-center-tensorproduct--2c88256b42b28ad33f3a4920.md) | 104 | `result-track:2c88256b42b28ad33f3a4920c45fb29b8f1c585658842bdc721d886871a39317` |
| 6 | `lemma` | [centralizer_coe_map_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-coe-map-includeleft-eq-center-tensorproduct--9c387a06ce5691bccd6093f3.md) | 132 | `result-track:9c387a06ce5691bccd6093f31f03c778d8575917db309379edf6433655e3d274` |
| 7 | `lemma` | [centralizer_coe_map_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-coe-map-includeright-eq-center-tensorproduct--da3c9959b80af71a9e80dfd1.md) | 145 | `result-track:da3c9959b80af71a9e80dfd192eae539b0dae8e073c5a1fb1bdd56a0d4737535` |
| 8 | `lemma` | [centralizer_coe_range_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-coe-range-includeleft-eq-center-tensorproduct--e282ba3c81b776f9384f625f.md) | 157 | `result-track:e282ba3c81b776f9384f625f52eb2e84977cfd43f7ce0b359622735724a3775c` |
| 9 | `lemma` | [centralizer_range_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-range-includeright-eq-center-tensorproduct--f7d63b437efd9bd222427de3.md) | 170 | `result-track:f7d63b437efd9bd222427de3efafcbbe703ea6b62a8f01b5dd9b7c6c24e66bcb` |
| 10 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_left](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-left--7487054b3e9c0245f2476777.md) | 179 | `result-track:7487054b3e9c0245f2476777a8725efef7dd4f6f89711bc135eb3ea55a20d24f` |
| 11 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_right](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-right--c5c923b1d4ae994df42fe043.md) | 186 | `result-track:c5c923b1d4ae994df42fe043637ca8a57503f580f17843992806e0a18cdae393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
