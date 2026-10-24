# Verification target: GRWTSK.Algebra.CommutativeAlgebra.EquationSystem.Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab761e409b9cdb0943b34a0cefcffa5f1d32eb3b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab761e409b9cdb0943b34a0cefcffa5f1d32eb3b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EquationSystem](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationsystem--5a857d432195ef9c339a9bd8.md) | 17 | `declaration-track:5a857d432195ef9c339a9bd8d9e61aad09cf549a262ff61119aa2c96148720f5` |
| 2 | `def` | [EquationSystem.IsSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationsystem-issolution--e2d8febf5c4fa76011862952.md) | 22 | `declaration-track:e2d8febf5c4fa7601186295259a4ae99f46ee9da03cc10c140810f975518cb22` |
| 3 | `abbrev` | [EquationSystem.SolutionSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationsystem-solutionspace--603ddc8c6872ab0b7ac72827.md) | 30 | `declaration-track:603ddc8c6872ab0b7ac72827a3852a0995c4eecd4b94fa0bb3ebb50e92ffc10e` |
| 4 | `def` | [EquationSystem.SolutionSpace.coordinates](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationsystem-solutionspace-coordinates--3a182e6eb4835df6a7108e73.md) | 36 | `declaration-track:3a182e6eb4835df6a7108e73652b746875a66209c2b25c649cf1c83fe3ce543b` |
| 5 | `def` | [EquationSystem.VanishesOn](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationsystem-vanisheson--fa431548b4a0f3c82a81f7c4.md) | 43 | `declaration-track:fa431548b4a0f3c82a81f7c4f28510d22ba2e717446915107ea9311ce30d32fa` |
| 6 | `theorem` | [EquationSystem.SolutionSpace.ext](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationsystem-solutionspace-ext--69dcfa2a3a54704488744c74.md) | 51 | `result-track:69dcfa2a3a54704488744c749c7434f840fb7d59163389327f4351c932a7b195` |
| 7 | `structure` | [EquationFamily](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationfamily--5598f5569f7dd5cd78569e92.md) | 67 | `declaration-track:5598f5569f7dd5cd78569e928a94ce9559973d97b9936b402e8d2b95a7e6c368` |
| 8 | `def` | [EquationFamily.transportSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/declarations/equationfamily-transportsolution--0b13f98e7551887702a2297b.md) | 79 | `declaration-track:0b13f98e7551887702a2297b92889e8a8a4742657cf507db578ccd6c52fdedd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
