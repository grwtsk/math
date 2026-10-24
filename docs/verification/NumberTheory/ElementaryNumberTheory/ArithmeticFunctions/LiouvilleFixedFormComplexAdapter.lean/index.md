# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleFixedFormComplexAdapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d6501c4118d9795a840281520d2020789881349",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d6501c4118d9795a840281520d2020789881349`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleFixedShiftAffine`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouvilleComplex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/liouvillecomplex--c7d383dce3c4ba3ba095356c.md) | 45 | `declaration-track:c7d383dce3c4ba3ba095356c1538c412a1f9800b30062cd8109a4d3bc0eac596` |
| 2 | `def` | [complexLiouvilleAffineSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/complexliouvilleaffinesum--cf8bbcb557691a87c8be48e5.md) | 51 | `declaration-track:cf8bbcb557691a87c8be48e5ce1e57b6476651609fb038e80d039147c805eaae` |
| 3 | `theorem` | [complexLiouvilleAffineSum_eq_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/complexliouvilleaffinesum-eq-cast--1efcd8ea2c23350b5cc52722.md) | 59 | `result-track:1efcd8ea2c23350b5cc5272294ad63b9f333f268418eed4bc9b7391a10d26e5a` |
| 4 | `theorem` | [sum_shift_succ_eq_Icc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/sum-shift-succ-eq-icc--9757d5dd5e721c21c0e6a67f.md) | 74 | `result-track:9757d5dd5e721c21c0e6a67fafd3a75b8d9dd15a6bf16fae170ae7aae3297529` |
| 5 | `theorem` | [fixedShift_prefix_eq_affineIcc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/fixedshift-prefix-eq-affineicc--5b05e751280ad476321e4bc9.md) | 83 | `result-track:5b05e751280ad476321e4bc911194d32a5ecbe5977ddde1433a9666da79aa371` |
| 6 | `theorem` | [complexLiouvilleAffineSum_fixedShift](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/complexliouvilleaffinesum-fixedshift--a68d39580615b7d426a53477.md) | 95 | `result-track:a68d39580615b7d426a53477ad05a702717efaffec84a491a80aea824ccbdc7b` |
| 7 | `theorem` | [complexAffine_norm_eq_fixedShift_abs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/complexaffine-norm-eq-fixedshift-abs--585ada053103ae4095f254a8.md) | 106 | `result-track:585ada053103ae4095f254a8e804d80f81b5f41bd8d1eea12b1aec0ff24290c3` |
| 8 | `theorem` | [directAffine_nonproportional](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/directaffine-nonproportional--25efa877c341c2f4177b6d10.md) | 114 | `result-track:25efa877c341c2f4177b6d10ce804387f1a18406fdc40028cdbc16faa2bba097` |
| 9 | `def` | [FixedNonproportionalAffineLogSaving](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/fixednonproportionalaffinelogsaving--943be49306818db3f355f023.md) | 122 | `declaration-track:943be49306818db3f355f0235e3d4fcf8c7be116540e201508979928dd736c06` |
| 10 | `theorem` | [fixedShift_liouville_logSaving_of_affine](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/fixedshift-liouville-logsaving-of-affine--5c439a5ef579fd13163f8f5d.md) | 136 | `result-track:5c439a5ef579fd13163f8f5d507f2a5b178a228858ee599fa9477698a813cd9d` |
| 11 | `theorem` | [zeroShift_directAffine_obstruction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/declarations/zeroshift-directaffine-obstruction--a8bf7531bfa548d94bc6eaaa.md) | 158 | `result-track:a8bf7531bfa548d94bc6eaaaa91747de0f3047cfa0b5d5279d2880a4b11705b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
