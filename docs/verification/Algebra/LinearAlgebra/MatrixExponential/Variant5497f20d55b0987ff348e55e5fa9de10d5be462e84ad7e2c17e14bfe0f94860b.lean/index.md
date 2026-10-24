# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixExponential.Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb9b189c743c8cd281272999a43ea1330dd75db",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb9b189c743c8cd281272999a43ea1330dd75db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ZPow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Matrix` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-diagonal--8fdd8c901948e158a62754ab.md) | 79 | `result-track:8fdd8c901948e158a62754abef455a1ca0f6b4e42739551020c051c66e1f34a2` |
| 2 | `theorem` | [exp_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-blockdiagonal--33f015f6c0cff6b59b787e79.md) | 82 | `result-track:33f015f6c0cff6b59b787e79a1986abc30e3331659d53ebbc02a2384757dd497` |
| 3 | `theorem` | [exp_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-blockdiagonal--76cf6f620c1a12cceee8dee5.md) | 86 | `result-track:76cf6f620c1a12cceee8dee5dc4a44b39157e6862f799a4feaa3911b2fa4a0ee` |
| 4 | `theorem` | [exp_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-conjtranspose--19cfc25dbe76b812d64eb9e7.md) | 90 | `result-track:19cfc25dbe76b812d64eb9e7d3db2550fd0222c034f9b8baa5d2ce994cbe6801` |
| 5 | `theorem` | [IsHermitian.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/ishermitian-exp--daacf8cb5dd85b8f852e6110.md) | 94 | `result-track:daacf8cb5dd85b8f852e6110f199b02f5d077b92bb6cdecfa5553cc634bd8e8d` |
| 6 | `theorem` | [exp_transpose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-transpose--e26098993468cc5f14b530da.md) | 105 | `result-track:e26098993468cc5f14b530dafb5e84f015375a48957576be6f443cb894cd6880` |
| 7 | `theorem` | [IsSymm.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/issymm-exp--52cc324adb727b110aaf0074.md) | 108 | `result-track:52cc324adb727b110aaf0074c1e3f1a250edb8bd0adacfb2c1593dfc7989cbff` |
| 8 | `theorem` | [exp_add_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-add-of-commute--30f10141ccd10523c8c231d6.md) | 120 | `result-track:30f10141ccd10523c8c231d68c27ca428575c0e47ff43f36a9fe3eba01023412` |
| 9 | `theorem` | [exp_sum_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-sum-of-commute--5598c4cf116ff8ad48dbfe51.md) | 128 | `result-track:5598c4cf116ff8ad48dbfe51e834eedd098e80d9124cf57a624568e23ac96ca3` |
| 10 | `theorem` | [exp_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-nsmul--1280d80a61f301626863e50f.md) | 137 | `result-track:1280d80a61f301626863e50f97ab241ae7ef4926dde26a731bc97aa7e5d6e050` |
| 11 | `theorem` | [isUnit_exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/isunit-exp--782ed76798eadeef15632e8b.md) | 143 | `result-track:782ed76798eadeef15632e8b3b58b41b3dcb14b9caf65ebe3a3afbdd76db4809` |
| 12 | `theorem` | [exp_units_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-units-conj--64ce440b6c908bd5e172ee35.md) | 149 | `result-track:64ce440b6c908bd5e172ee35fdfa389fd23377685baf73ee95e85ad50816067c` |
| 13 | `theorem` | [exp_units_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-units-conj--f910643355072ee38692e665.md) | 156 | `result-track:f910643355072ee38692e665418d6df0121e3389011ed58e525f42c506b95953` |
| 14 | `theorem` | [exp_neg](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-neg--7a442c5d87f6d301eb7c027e.md) | 167 | `result-track:7a442c5d87f6d301eb7c027e30eb715e747d0569f26a584828cb00f887a31877` |
| 15 | `theorem` | [exp_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-zsmul--1b0c36c1d90cefe4c0520238.md) | 174 | `result-track:1b0c36c1d90cefe4c05202389053705b8b42ad66ffd0e7ce52f09f847081ac67` |
| 16 | `theorem` | [exp_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-conj--d2a169c38c5a2cfba547168a.md) | 180 | `result-track:d2a169c38c5a2cfba547168ae0cc438ccb58a7bf12914794272c8faa792872a0` |
| 17 | `theorem` | [exp_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant5497f20d55b0987ff348e55e5fa9de10d5be462e84ad7e2c17e14bfe0f94860b.lean/declarations/exp-conj--86db71dc3a1be505525d5ae9.md) | 185 | `result-track:86db71dc3a1be505525d5ae928d3435b9234c69b119d3210ae50dc89253691fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
