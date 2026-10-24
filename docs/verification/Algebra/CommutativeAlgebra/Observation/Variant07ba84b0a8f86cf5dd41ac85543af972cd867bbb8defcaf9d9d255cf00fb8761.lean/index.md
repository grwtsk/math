# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Observation.Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b3f5f7bd3a99222e3963a9b858fefc382308002",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b3f5f7bd3a99222e3963a9b858fefc382308002`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialSource](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/polynomialsource--e26f67036d2bd72af8200481.md) | 19 | `declaration-track:e26f67036d2bd72af8200481751342ea70a73af87344691f413054720fca783c` |
| 2 | `structure` | [RootPreservingCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/rootpreservingcompilation--e2657e972fc56d39b28cf027.md) | 31 | `declaration-track:e2657e972fc56d39b28cf027efa73b5edea6e5dffbf5f8f0cfbf5845c3aa60be` |
| 3 | `def` | [scaleCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/scalecompilation--890662bc8c63972457efcbd9.md) | 40 | `declaration-track:890662bc8c63972457efcbd9d9f8a6a228aedf42ee4279f9fbaeaf3b0cd67855` |
| 4 | `theorem` | [scale_compilation_sound](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/scale-compilation-sound--ada1fdb50d317b5ca4dcf0c2.md) | 47 | `result-track:ada1fdb50d317b5ca4dcf0c2ae419a8e648d5165337edeb953d3da88bfdd9c94` |
| 5 | `theorem` | [square_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/square-preserves-integer-roots--307c999a357df3a6a6f512a8.md) | 52 | `result-track:307c999a357df3a6a6f512a860660bc86e00521773937b4660ee63b835322e6c` |
| 6 | `theorem` | [positive_power_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/positive-power-preserves-integer-roots--00a7e821d0b5ed9892c1923e.md) | 57 | `result-track:00a7e821d0b5ed9892c1923e54b716265dc2425ccb2f87623495629c22e031f8` |
| 7 | `theorem` | [arbitrary_degree_inflation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/arbitrary-degree-inflation--aba72cd3e56ead22a4eda4de.md) | 63 | `result-track:aba72cd3e56ead22a4eda4de9beff543cd3b02418b56bde6ce567acdcb1f8635` |
| 8 | `theorem` | [root_equivalence_does_not_determine_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/declarations/root-equivalence-does-not-determine-degree--ded570e34b023f50c1771ff6.md) | 72 | `result-track:ded570e34b023f50c1771ff6901457986e62d1046821cfea7328fa6237ee467f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
