# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MulP.Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f239ad00aabdcc2ef2aae1902c5dc1b9395e9eb6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f239ad00aabdcc2ef2aae1902c5dc1b9395e9eb6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.IsPoly` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittMulN](../../../../../mathematics/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/declarations/wittmuln--f9d55fe5d93a0f1a6527fd22.md) | 48 | `declaration-track:f9d55fe5d93a0f1a6527fd22dd2f29b4f49d3ed7cd8cc262016b59f865edf61c` |
| 2 | `theorem` | [mulN_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/declarations/muln-coeff--3217b98c443d9ab368cd13df.md) | 52 | `result-track:3217b98c443d9ab368cd13df424a24fa6d23637bb0c25a34d9777b55a6dcb320` |
| 3 | `theorem` | [mulN_isPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/declarations/muln-ispoly--4e9f8d80923b76d1506cc91f.md) | 67 | `result-track:4e9f8d80923b76d1506cc91f7e5dfa23914437455579f0d470f40cfaa1ac8b7d` |
| 4 | `theorem` | [bind₁_wittMulN_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/declarations/bind-wittmuln-wittpolynomial--cabeed8b5deeb8630108d572.md) | 71 | `result-track:cabeed8b5deeb8630108d572e3de8ca766b7b2f52e951e826eb31d8c3f26504b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
