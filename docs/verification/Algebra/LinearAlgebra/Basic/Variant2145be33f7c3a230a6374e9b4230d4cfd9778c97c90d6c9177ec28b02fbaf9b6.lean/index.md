# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac7514701ceeb4314a92c662833bfcb9d742d16b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac7514701ceeb4314a92c662833bfcb9d742d16b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Adjugate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [charmatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/charmatrix--4e9a512628f5d9ea6336b984.md) | 47 | `declaration-track:4e9a512628f5d9ea6336b9844a7809da36aaea356f7656cb3325e19f1b6c6a9d` |
| 2 | `theorem` | [charmatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/charmatrix-apply--d9608068b802eade2261d67f.md) | 51 | `result-track:d9608068b802eade2261d67fde95ddfc06daea61e4ceae44f510a9a9024237ab` |
| 3 | `theorem` | [charmatrix_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/charmatrix-apply-eq--6b096130d7c4ec12c58bb41e.md) | 57 | `result-track:6b096130d7c4ec12c58bb41e251242172207f847f7ac2cd55c9768ef92a23bb1` |
| 4 | `theorem` | [charmatrix_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/charmatrix-apply-ne--8057d1fd324fcc00b33b7599.md) | 64 | `result-track:8057d1fd324fcc00b33b7599f075f13941297421de640b5b196f93e8d1830b2c` |
| 5 | `theorem` | [matPolyEquiv_charmatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/matpolyequiv-charmatrix--a465753c7afebf57180ed044.md) | 70 | `result-track:a465753c7afebf57180ed04453b95414d41d68db0b275801c544d5b35721706d` |
| 6 | `theorem` | [charmatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/charmatrix-reindex--9e543efd168f2e478d43d15f.md) | 82 | `result-track:9e543efd168f2e478d43d15f403d31bcad80b763dfb289d48f4483db86d78c42` |
| 7 | `def` | [Matrix.charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/matrix-charpoly--89da1a1469ccf180a6887321.md) | 91 | `declaration-track:89da1a1469ccf180a6887321ea16898db1aedcee3cf50feee65bb8b58046f72a` |
| 8 | `theorem` | [Matrix.charpoly_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/matrix-charpoly-reindex--003df7000abc3d1f188e4b7e.md) | 95 | `result-track:003df7000abc3d1f188e4b7e4297d70bb13a3edf347a37431ee42c5b791e52d8` |
| 9 | `theorem` | [Matrix.aeval_self_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2145be33f7c3a230a6374e9b4230d4cfd9778c97c90d6c9177ec28b02fbaf9b6.lean/declarations/matrix-aeval-self-charpoly--1ff39bb6627f27e2398abf88.md) | 109 | `result-track:1ff39bb6627f27e2398abf8833d9d6503bd59f71240f21b0e210b5d960b0b89f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
