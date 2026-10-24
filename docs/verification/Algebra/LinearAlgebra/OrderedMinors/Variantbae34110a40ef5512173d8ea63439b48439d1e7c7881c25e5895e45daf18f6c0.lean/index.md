# Verification target: GRWTSK.Algebra.LinearAlgebra.OrderedMinors.Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "048371bd396a959a7487d4138bdd56e42fa151b3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `048371bd396a959a7487d4138bdd56e42fa151b3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [columnSubmatrix](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/columnsubmatrix--42703d1bf076964b72af6e51.md) | 21 | `declaration-track:42703d1bf076964b72af6e51a0de5f8f968d08f46abc6ab3ba5a2c61cdbe2b2a` |
| 2 | `def` | [columnMinor](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/columnminor--eed6c55e01657cff706f3058.md) | 26 | `declaration-track:eed6c55e01657cff706f30581e0f66fc77e6f6ceb9a9c5df5747954f84d4c974` |
| 3 | `def` | [orderedMinor](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/orderedminor--9905fee14be9027757f185fa.md) | 30 | `declaration-track:9905fee14be9027757f185fada13f24fa6b754a0dc7c10864259e4cdb1bdd98f` |
| 4 | `def` | [AllOrderedMinorsNonneg](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/allorderedminorsnonneg--dcab32d2476db5dfad334451.md) | 34 | `declaration-track:dcab32d2476db5dfad334451a309ab1747a6640bae70cd6d6dab23f082d815ea` |
| 5 | `def` | [AllOrderedMinorsPos](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/allorderedminorspos--6f58a167f68b9bea4dbd68f0.md) | 38 | `declaration-track:6f58a167f68b9bea4dbd68f0260b0796e0f0b4efe04b8c9ae559cf00d9a2049b` |
| 6 | `theorem` | [allOrderedMinorsNonneg_of_pos](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/allorderedminorsnonneg-of-pos--73c0fd1d645e80b428d74c72.md) | 42 | `result-track:73c0fd1d645e80b428d74c722670ac2f954bc214433def0bb8c19791a82262ba` |
| 7 | `theorem` | [columnSubmatrix_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/columnsubmatrix-mul-left--9258a56746d41dc3559f0dcd.md) | 48 | `result-track:9258a56746d41dc3559f0dcd20e806eddfc00486d400168c4237b90ed255a06a` |
| 8 | `theorem` | [columnMinor_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/columnminor-mul-left--ce428fe25508e1b97da7578d.md) | 55 | `result-track:ce428fe25508e1b97da7578d3c47f7e37c49fc95e757f587b1118d85e2d9ffcc` |
| 9 | `theorem` | [orderedMinor_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/orderedminor-mul-left--ce32a2c3ae06c079e3e04a99.md) | 62 | `result-track:ce32a2c3ae06c079e3e04a9928b380cd7dc9b452e6a380b8a7ffc2ed0ffddafa` |
| 10 | `theorem` | [orderedMinor_mul_left_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/orderedminor-mul-left-eq-zero-iff--88c5f636f824f5da9d1b8450.md) | 68 | `result-track:88c5f636f824f5da9d1b84506cb2969001c77c30bf42b04dec1addea3e956780` |
| 11 | `theorem` | [allOrderedMinorsPos_mul_left_iff](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/allorderedminorspos-mul-left-iff--688b17812904b1d68201b566.md) | 76 | `result-track:688b17812904b1d68201b5668577c8004591833d726c36acbd5b16cc5308e6bf` |
| 12 | `theorem` | [allOrderedMinorsNonneg_mul_left_iff](../../../../../mathematics/Algebra/LinearAlgebra/OrderedMinors/Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0.lean/declarations/allorderedminorsnonneg-mul-left-iff--ef17263e5b9aa7a7ffcab993.md) | 89 | `result-track:ef17263e5b9aa7a7ffcab993a6e049c6127c91c048f8716c781245ff7fc46fd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
