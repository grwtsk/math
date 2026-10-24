# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerProduct.Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2f346d6acb9694953f8252cb72946e85cb2e438",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2f346d6acb9694953f8252cb72946e85cb2e438`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Euclid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finprod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteEulerFactor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/declarations/finiteeulerfactor--fa25c2ea9db0969e52dd9803.md) | 24 | `declaration-track:fa25c2ea9db0969e52dd98036f4c324911dea72903d72e0e2791194d47aecb3b` |
| 2 | `def` | [finiteEulerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/declarations/finiteeulerproduct--c6888c43026214ebafddf41c.md) | 30 | `declaration-track:c6888c43026214ebafddf41c9dc3edcb6e07a024a9846da2c27ee5fe3e719659` |
| 3 | `def` | [exponentVectors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/declarations/exponentvectors--a164a4a65617cbed92af6e3f.md) | 37 | `declaration-track:a164a4a65617cbed92af6e3f1569bfd6f8085afb5f56d9bfa8c39c17fb0efabe` |
| 4 | `theorem` | [finite_euler_product_expands_as_sum_over_exponents](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant040c31be5ffdf6b5b04e8557b6f6a5c9b8edfb673e0be831532f38e004a7cfc1.lean/declarations/finite-euler-product-expands-as-sum-over-exponents--e8cc4a6148e3a54bf4ebdeee.md) | 48 | `result-track:e8cc4a6148e3a54bf4ebdeee736c4089c3732648e1d496563633a622530746ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
