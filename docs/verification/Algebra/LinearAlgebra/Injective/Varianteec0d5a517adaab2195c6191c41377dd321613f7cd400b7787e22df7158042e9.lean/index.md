# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddb87942d8d1cea0278c1bff73692362b2ded6dc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddb87942d8d1cea0278c1bff73692362b2ded6dc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Injective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_object_of_injective_module](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/declarations/injective-object-of-injective-module--064e9ca4d2dfdf2c1e999767.md) | 28 | `result-track:064e9ca4d2dfdf2c1e999767dcee0e022cbff53d5cbf86f2d1b9457ec6b691aa` |
| 2 | `theorem` | [injective_module_of_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/declarations/injective-module-of-injective-object--3b7a4c216dd94ad313e764d9.md) | 34 | `result-track:3b7a4c216dd94ad313e764d9a431a30fc37fdd8f1688eab67ed56b8ce2cdd5ac` |
| 3 | `theorem` | [injective_iff_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/declarations/injective-iff-injective-object--319e09798fc5e0a18b8827e4.md) | 43 | `result-track:319e09798fc5e0a18b8827e476dc82eda06d34b40714a5d5461d60c3a515a7d9` |
| 4 | `instance` | [ModuleCat.ulift_injective_of_injective.](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/declarations/modulecat-ulift-injective-of-injective--503ec15b9e68d918ec62d87c.md) | 52 | `declaration-track:503ec15b9e68d918ec62d87cabc063b401a02840071bfa460bccc794f881904c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
