# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Cardinal.Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ff04d13c503b9a727430fe8f51fb58b81c79923",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinal/Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinal/Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinal/Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ff04d13c503b9a727430fe8f51fb58b81c79923`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Cardinal/Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Cardinal/Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finsupp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_max](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinal/Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16.lean/declarations/cardinalmk-eq-max--155020cc5e1e587a66d08390.md) | 26 | `result-track:155020cc5e1e587a66d08390bc9a43a49764c338c5561bedc0fe1896e64bcea9` |
| 2 | `theorem` | [cardinalMk_le_max](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinal/Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16.lean/declarations/cardinalmk-le-max--73936c6a4d1012ce4cdae23f.md) | 33 | `result-track:73936c6a4d1012ce4cdae23f445f0ff7f70d5e9c8333e250aa6cbc86bb3614ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
