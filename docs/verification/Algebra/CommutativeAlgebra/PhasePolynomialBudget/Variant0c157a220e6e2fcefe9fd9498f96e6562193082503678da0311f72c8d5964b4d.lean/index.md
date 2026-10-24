# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PhasePolynomialBudget.Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e456ed616077533de431f8a2aee449960302716",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e456ed616077533de431f8a2aee449960302716`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Prototype` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phasePolynomialCoefficient](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/declarations/phasepolynomialcoefficient--94a0ce3d7b4b9f3929ab7067.md) | 30 | `declaration-track:94a0ce3d7b4b9f3929ab70674535ccd8a472e3ea1e0fcd0d01cb638c45a129f3` |
| 2 | `theorem` | [phasePolynomialCoefficient_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/declarations/phasepolynomialcoefficient-pos--d75d85b42bf46cd771d9ae7b.md) | 33 | `result-track:d75d85b42bf46cd771d9ae7b91682a486482b06e1dd71aaa531ef3135c6363b3` |
| 3 | `theorem` | [positiveMass_ge_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/declarations/positivemass-ge-taylor--ea85097152bcee55b993fea8.md) | 38 | `result-track:ea85097152bcee55b993fea871876e28e1ee99b90b1c861f26fc6d39a0abad5c` |
| 4 | `theorem` | [positiveMass_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/declarations/positivemass-gt-polynomial--af2535b09d42b36b735f2ae1.md) | 53 | `result-track:af2535b09d42b36b735f2ae1953de63a0edadeb210fd74098c5e7e765683d1c6` |
| 5 | `theorem` | [positiveMass_eventually_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/declarations/positivemass-eventually-gt-polynomial--e53c33ff7186a0fc30eb5646.md) | 70 | `result-track:e53c33ff7186a0fc30eb564625a99198bbd504f3208e74bc296b7104ead0bc43` |
| 6 | `theorem` | [positiveMass_not_eventually_polynomial_bounded](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d.lean/declarations/positivemass-not-eventually-polynomial-bounded--bb24f889cdc7ce86015d0d5d.md) | 78 | `result-track:bb24f889cdc7ce86015d0d5d92de54549e6ad72b7ba8fc455ad5431f2e45b38c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
