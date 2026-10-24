# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4801fb22fc35c411f53d831fc7a5fcad8c9c2bc0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4801fb22fc35c411f53d831fc7a5fcad8c9c2bc0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mvPolynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/declarations/mvpolynomialx--7dad7427aa964555878783ef.md) | 38 | `declaration-track:7dad7427aa964555878783ef7b763add144aacf7fd04979acef8418c2b39ef10` |
| 2 | `theorem` | [mvPolynomialX_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/declarations/mvpolynomialx-apply--98e9220f2dca134904c6f952.md) | 43 | `result-track:98e9220f2dca134904c6f952b12a7b2b46e00aff848e7dd8d5ab09d20519151d` |
| 3 | `theorem` | [mvPolynomialX_map_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/declarations/mvpolynomialx-map-eval--7f001c7546fe95f8f9e6e76a.md) | 54 | `result-track:7f001c7546fe95f8f9e6e76a5b1f30d516b6ef5de39cb2fecbca27a95f91c82e` |
| 4 | `theorem` | [mvPolynomialX_mapMatrix_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/declarations/mvpolynomialx-mapmatrix-eval--118ce36476938391549bf793.md) | 59 | `result-track:118ce36476938391549bf7938e8f9b3c98dccfcadd4225d47fbbfb042c9b5b55` |
| 5 | `theorem` | [mvPolynomialX_mapMatrix_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/declarations/mvpolynomialx-mapmatrix-aeval--14223615602550382649b14e.md) | 67 | `result-track:14223615602550382649b14eb28ab7d4140407fee0372317ba14b1667e3471de` |
| 6 | `theorem` | [det_mvPolynomialX_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813.lean/declarations/det-mvpolynomialx-ne-zero--87bcb81dea3fbfa662b5d405.md) | 75 | `result-track:87bcb81dea3fbfa662b5d40598bb44af745202ff3472cb0d9a779fa40301db7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
