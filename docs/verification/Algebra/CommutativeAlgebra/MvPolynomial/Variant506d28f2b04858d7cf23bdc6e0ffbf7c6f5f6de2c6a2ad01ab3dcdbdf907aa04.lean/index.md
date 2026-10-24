# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "197b0715e6b17644957a49778d01069d86707c1c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `197b0715e6b17644957a49778d01069d86707c1c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mvPolynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/declarations/mvpolynomialx--b86ffe060d0b50ced5a8a762.md) | 30 | `declaration-track:b86ffe060d0b50ced5a8a76209bfb45a1dee2a34272f22bab4df6781128c39b7` |
| 2 | `theorem` | [mvPolynomialX_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/declarations/mvpolynomialx-apply--f634f9affdc0e005650becb8.md) | 35 | `result-track:f634f9affdc0e005650becb8aa87eb7dd7171da6e26363483da2e88e96d91d66` |
| 3 | `theorem` | [mvPolynomialX_map_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/declarations/mvpolynomialx-map-eval--9fa66d18695a313eee43e277.md) | 46 | `result-track:9fa66d18695a313eee43e27725271b845981a3fff0383519c72aeec0466a6395` |
| 4 | `theorem` | [mvPolynomialX_mapMatrix_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/declarations/mvpolynomialx-mapmatrix-eval--a6ec088ddfd016e109ff8037.md) | 51 | `result-track:a6ec088ddfd016e109ff80373dc1dcedf01226544c803a78ed652148d4e758d6` |
| 5 | `theorem` | [mvPolynomialX_mapMatrix_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/declarations/mvpolynomialx-mapmatrix-aeval--a2d15ddf0d9d26939d39c6d5.md) | 59 | `result-track:a2d15ddf0d9d26939d39c6d53194596f1c46bbaea2a0c2385e7563651e090e16` |
| 6 | `theorem` | [det_mvPolynomialX_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04.lean/declarations/det-mvpolynomialx-ne-zero--4901cb3f442a7a828eb37b97.md) | 67 | `result-track:4901cb3f442a7a828eb37b97301af3dc338e0be923b1ec8705700ba7a105affa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
