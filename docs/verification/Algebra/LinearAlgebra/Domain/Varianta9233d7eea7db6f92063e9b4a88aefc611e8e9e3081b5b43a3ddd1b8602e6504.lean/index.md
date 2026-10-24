# Verification target: GRWTSK.Algebra.LinearAlgebra.Domain.Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb894c33f458d1e9f623fcad509c125c0257c1c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb894c33f458d1e9f623fcad509c125c0257c1c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Localization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [TensorProduct.map_injective_of_flat_flat_of_isDomain](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean/declarations/tensorproduct-map-injective-of-flat-flat-of-isdomain--80048460cd439d5aa9fe18f4.md) | 28 | `result-track:80048460cd439d5aa9fe18f47bfda48deb6c91f02baa7177849ad702dc56f7c7` |
| 2 | `lemma` | [LinearIndependent.tmul_of_isDomain](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean/declarations/linearindependent-tmul-of-isdomain--2f6bfe1c2bd195d68c927cf9.md) | 58 | `result-track:2f6bfe1c2bd195d68c927cf9042c7d0a303991ddc78547feb894131720371f09` |
| 3 | `lemma` | [LinearIndepOn.tmul_of_isDomain](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Varianta9233d7eea7db6f92063e9b4a88aefc611e8e9e3081b5b43a3ddd1b8602e6504.lean/declarations/linearindepon-tmul-of-isdomain--e2729b3c3382bbe7cc348964.md) | 71 | `result-track:e2729b3c3382bbe7cc348964da2c48d7d68c675ddb9ce6e486550d38d42abf9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
