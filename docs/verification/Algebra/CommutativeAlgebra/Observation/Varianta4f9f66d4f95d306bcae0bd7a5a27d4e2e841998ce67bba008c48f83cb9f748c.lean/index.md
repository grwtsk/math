# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Observation.Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2636aaf1299560bcc8d8264e034f637753fb99b7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2636aaf1299560bcc8d8264e034f637753fb99b7`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialSource](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/polynomialsource--1e91345d24cf6b15d44eb0f4.md) | 27 | `declaration-track:1e91345d24cf6b15d44eb0f4ad67e62a8a92c8ba89ec76fca96f62b79f865505` |
| 2 | `structure` | [RootPreservingCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/rootpreservingcompilation--651a430f54ead2bb209ea696.md) | 39 | `declaration-track:651a430f54ead2bb209ea696a97e00f205754656b1c20e2fac472bc911a8ca84` |
| 3 | `def` | [scaleCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/scalecompilation--b875a4ddd55a03572c73593a.md) | 48 | `declaration-track:b875a4ddd55a03572c73593add91526e84be6794b20975fada267dab0ac60896` |
| 4 | `theorem` | [scale_compilation_sound](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/scale-compilation-sound--43e704e18eeffd28796287a6.md) | 55 | `result-track:43e704e18eeffd28796287a6f68a4571a0e2f3e0d81c76bdedc663e83ab4ee7b` |
| 5 | `theorem` | [square_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/square-preserves-integer-roots--9019bc549b6379e69aea66f3.md) | 60 | `result-track:9019bc549b6379e69aea66f3eee054521c956e97479fef77dad1a815151855dc` |
| 6 | `theorem` | [positive_power_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/positive-power-preserves-integer-roots--aa0fb911cd2a02c9555681b0.md) | 65 | `result-track:aa0fb911cd2a02c9555681b0d097249a1ab2a08df5b1fde810df07d39a2f30a5` |
| 7 | `theorem` | [arbitrary_degree_inflation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/arbitrary-degree-inflation--cb694e50f508a290688f11d6.md) | 71 | `result-track:cb694e50f508a290688f11d643d7d6eaf0fb28422de6cf9331601f742ae7896d` |
| 8 | `theorem` | [root_equivalence_does_not_determine_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/declarations/root-equivalence-does-not-determine-degree--bff13fc27088f34ba4980161.md) | 80 | `result-track:bff13fc27088f34ba49801616326c99e75a17463e9c981837a3c8d5e4927ed2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
