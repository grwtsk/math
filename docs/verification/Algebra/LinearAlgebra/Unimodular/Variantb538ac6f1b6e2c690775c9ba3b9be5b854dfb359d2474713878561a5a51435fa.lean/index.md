# Verification target: GRWTSK.Algebra.LinearAlgebra.Unimodular.Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49d19f9f5cf468e57cd08601fec23e8288816c1a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49d19f9f5cf468e57cd08601fec23e8288816c1a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean.json)

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
| 1 | `def` | [IsUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/declarations/isunimodular--f5b429dc93e980ba4bdff908.md) | 47 | `declaration-track:f5b429dc93e980ba4bdff90869ad020bad51b830043fbda6507341250bb79ea5` |
| 2 | `theorem` | [isUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/declarations/isunimodular-iff--5afe16848ca2de8edafe51e7.md) | 51 | `result-track:5afe16848ca2de8edafe51e7b713921fcc5110bcde4b0f244200e98d86fab160` |
| 3 | `theorem` | [isUnimodular_of_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/declarations/isunimodular-of-apply-eq-one--4d32a6cbf9417c8efc0665ac.md) | 53 | `result-track:4d32a6cbf9417c8efc0665ac00aa52b9e18c93eba48ded857b8006790b6575dc` |
| 4 | `theorem` | [span_repr_eq_range_applyₗ](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/declarations/span-repr-eq-range-apply--487141c1805971af8971ddd5.md) | 65 | `result-track:487141c1805971af8971ddd5db9766373e2674b88c6a8caa254e610aa137fa02` |
| 5 | `theorem` | [isUnimodular_iff_span_repr_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/declarations/isunimodular-iff-span-repr-eq-top--f39ce9d004bc1f8fdd1a063c.md) | 78 | `result-track:f39ce9d004bc1f8fdd1a063c50a1e70856dba5be6ef0cf5566e2be280e8b4357` |
| 6 | `theorem` | [_root_.Module.Free.isUnimodular_one](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/declarations/root-module-free-isunimodular-one--77287d63dd61cc3a9304622f.md) | 89 | `result-track:77287d63dd61cc3a9304622f32a2a07e618a081d51b379bf094bd8b200a71f6d` |
| 7 | `theorem` | [exists_basis_zero_eq](../../../../../mathematics/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/declarations/exists-basis-zero-eq--63328f751ae3de9ebc1c0a98.md) | 102 | `result-track:63328f751ae3de9ebc1c0a98bca00587b6deaff7ed0a0525a611cf13608f2484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
