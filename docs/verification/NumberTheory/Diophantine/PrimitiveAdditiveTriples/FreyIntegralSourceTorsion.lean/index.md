# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralSourceTorsion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5299ab052afad19075ef94d4167993d03c4e1cef",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5299ab052afad19075ef94d4167993d03c4e1cef`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOrderOneTorsion`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetIndex`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetIndex.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [fixedTriple](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixedtriple--258e4cbb6d10bebed8111845.md) | 22 | `declaration-track:258e4cbb6d10bebed8111845e2274ec9d628a0b43625b1273fd07c1173c52a87` |
| 2 | `theorem` | [fixed_coefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixed-coefficients--8947761ff1f2491d703b95df.md) | 25 | `result-track:8947761ff1f2491d703b95df7a2bbd0487aef50c85743879806fc30b50e24431` |
| 3 | `def` | [fixedSourceEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixedsourceequiv--f284a766500497c9f30c2dd9.md) | 31 | `declaration-track:f284a766500497c9f30c2dd9d8adbdf5eb60da00caa96409193e3d8f8f714e4d` |
| 4 | `def` | [fixedTorsionClass](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixedtorsionclass--9eef28192e383a5bfb330dc6.md) | 41 | `declaration-track:9eef28192e383a5bfb330dc6350937f4a6d1f76f2cc939fd880b1cf7ba88661c` |
| 5 | `theorem` | [fixedTorsionClass_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixedtorsionclass-ne-zero--745c81fdeaa17a2b02e358b5.md) | 45 | `result-track:745c81fdeaa17a2b02e358b543e9923f387ca317cb3f31b21c3a038cb1c9c28a` |
| 6 | `theorem` | [three_nsmul_fixedTorsionClass](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/three-nsmul-fixedtorsionclass--6b4c6172507c91fbe9972d1d.md) | 53 | `result-track:6b4c6172507c91fbe9972d1df3c7caaac89d7eba47227f291cbe472cbf9c081f` |
| 7 | `theorem` | [fixedTorsionClass_addOrder](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixedtorsionclass-addorder--552c195ef62613b2afc6ba1c.md) | 63 | `result-track:552c195ef62613b2afc6ba1c3125b96cb1e6d7a79ec67c6082038035159870e9` |
| 8 | `theorem` | [fixed_rational_branch_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixed-rational-branch-zero--2cddcf7aed8f11e1b9892892.md) | 69 | `result-track:2cddcf7aed8f11e1b98928920a207a9a7e2625ebaad70c08c41fb908ad5643cf` |
| 9 | `theorem` | [fixed_source_map_not_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixed-source-map-not-injective--9ec8bd60eddfeb19c2dc9980.md) | 74 | `result-track:9ec8bd60eddfeb19c2dc99801d4a1f4047904a5319a91ba88e1a2b8e8e4d283c` |
| 10 | `theorem` | [fixed_image_index_order_four](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/declarations/fixed-image-index-order-four--0e47d1dbff331200ca263234.md) | 91 | `result-track:0e47d1dbff331200ca2632343c01ea32ec1afbaaa056729179e9edcb46a28988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
