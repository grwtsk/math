# Verification target: GRWTSK.Algebra.LinearAlgebra.Norm.Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12daca3406924e941496944e3d762231deb161d0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12daca3406924e941496944e3d762231deb161d0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PrimitiveElement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm--73078f206e41b284a2a7a3e4.md) | 71 | `declaration-track:73078f206e41b284a2a7a3e4b7d2f8ab536f68c15e3366ca4a5ac0d3ec389027` |
| 2 | `theorem` | [norm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-apply--1102c2446a69eef133dfc61e.md) | 75 | `result-track:1102c2446a69eef133dfc61e393f07c9d0f602d1481982c49b351ead96937464` |
| 3 | `theorem` | [norm_eq_one_of_not_exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-one-of-not-exists-basis--fcc1c49ffe6e8fc8bf98c0a7.md) | 78 | `result-track:fcc1c49ffe6e8fc8bf98c0a7938fb66d03f1a7284ea3b3f5e4b42bfe30e96285` |
| 4 | `theorem` | [norm_eq_one_of_not_module_finite](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-one-of-not-module-finite--4acc4ff22b295c8eba78ad31.md) | 84 | `result-track:4acc4ff22b295c8eba78ad31464c29f90314d767942cbb7ca094ce3cb356e62a` |
| 5 | `theorem` | [norm_eq_matrix_det](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-matrix-det--3f0689d30e76c115e592c887.md) | 91 | `result-track:3f0689d30e76c115e592c88744010b52989d85de52c7c25107bd8afb8dfba829` |
| 6 | `theorem` | [norm_algebraMap_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-algebramap-of-basis--771feeae35fe91c2000f4da6.md) | 97 | `result-track:771feeae35fe91c2000f4da66d9e406cef0e743d335643296022d656bb0846cd` |
| 7 | `theorem` | [norm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-algebramap--385aadca54ec018c9998441f.md) | 111 | `result-track:385aadca54ec018c9998441ffce29b972bfaac0a02334e6090e07e87cf43870e` |
| 8 | `theorem` | [PowerBasis.norm_gen_eq_coeff_zero_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/powerbasis-norm-gen-eq-coeff-zero-minpoly--6667cd034b2b57308f77d0f4.md) | 124 | `result-track:6667cd034b2b57308f77d0f4ef07e8e84dc1e976c43fd42c817a1299bcaeb808` |
| 9 | `theorem` | [PowerBasis.norm_gen_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/powerbasis-norm-gen-eq-prod-roots--d6932485ce7ab893e03b7cdf.md) | 132 | `result-track:d6932485ce7ab893e03b7cdf8328700358842e3bfc1b513f08f007ac1c867b3d` |
| 10 | `theorem` | [norm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-zero--e4ddbc466d58bf321b9fb15d.md) | 151 | `result-track:e4ddbc466d58bf321b9fb15da8e90d70fd5cf1a1b78baf71b3bb5a44f0936aea` |
| 11 | `theorem` | [norm_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-zero-iff--d7489712151f686c0a983fdf.md) | 157 | `result-track:d7489712151f686c0a983fdfeb25fbece57fe2368b2df612c88c414ed9dad771` |
| 12 | `theorem` | [norm_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-ne-zero-iff--1d7652cec25514ba3a5947fc.md) | 175 | `result-track:1d7652cec25514ba3a5947fc98e6f99404f8cf6ff807ced25580fe64325178bb` |
| 13 | `theorem` | [norm_eq_zero_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-zero-iff--702bd402fad0b17ac4ba578f.md) | 181 | `result-track:702bd402fad0b17ac4ba578f888c2c90e1a05d9cb2201a6e3f7dff97daa1ebb8` |
| 14 | `theorem` | [norm_eq_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-zero-iff-of-basis--7556ec59e3a591c36937a74f.md) | 185 | `result-track:7556ec59e3a591c36937a74fd22abd0fe730ed58755c922f62afd981cefe4653` |
| 15 | `theorem` | [norm_ne_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-ne-zero-iff-of-basis--a10aa1152c57caebff235cb2.md) | 192 | `result-track:a10aa1152c57caebff235cb249ae35e8edea2a2f28c059594bb4feb73b3e1b6e` |
| 16 | `theorem` | [norm_eq_norm_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-norm-adjoin--f369b724710b660fc7ec915d.md) | 203 | `result-track:f369b724710b660fc7ec915d85c37867127d5abc2061cd5a1e49c84a77f3dae0` |
| 17 | `theorem` | [_root_.IntermediateField.AdjoinSimple.norm_gen_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/root-intermediatefield-adjoinsimple-norm-gen-eq-one--5dc376bbabee40385e22e8bd.md) | 219 | `result-track:5dc376bbabee40385e22e8bde524494eb8a58cdcf14259613ef46e44ecb47d19` |
| 18 | `theorem` | [_root_.IntermediateField.AdjoinSimple.norm_gen_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/root-intermediatefield-adjoinsimple-norm-gen-eq-prod-roots--b5e9a3f0b27e998217b55323.md) | 229 | `result-track:b5e9a3f0b27e998217b55323dc629fcb251263f3140809bcc3316656a84f86dd` |
| 19 | `theorem` | [norm_eq_prod_embeddings_gen](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-prod-embeddings-gen--413f014b8e4c8557817cd3bb.md) | 253 | `result-track:413f014b8e4c8557817cd3bbe909672bff55ef55be7bf561e03acd4d07bf132a` |
| 20 | `theorem` | [norm_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-prod-roots--b63827ce3e8b1c6a9a11c5fc.md) | 268 | `result-track:b63827ce3e8b1c6a9a11c5fca67a74557aba75e56b6010b4f3e70c9a4a9fa153` |
| 21 | `theorem` | [prod_embeddings_eq_finrank_pow](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/prod-embeddings-eq-finrank-pow--88918d56565d2654d3f56b59.md) | 275 | `result-track:88918d56565d2654d3f56b5986995f4955be6e340bd7236c2d11efcf98340966` |
| 22 | `theorem` | [norm_eq_prod_embeddings](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-prod-embeddings--6786af6f8726616e793c9fa1.md) | 301 | `result-track:6786af6f8726616e793c9fa1baf9b9554139629c4259bc687a9610efc8a06316` |
| 23 | `theorem` | [norm_eq_prod_automorphisms](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-eq-prod-automorphisms--91cb0bd612c3623f378640e0.md) | 311 | `result-track:91cb0bd612c3623f378640e005de520a4b7295c0e7fe72621572cd30c31e23bd` |
| 24 | `theorem` | [isIntegral_norm](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/isintegral-norm--19b37cb9607626c20b220ac0.md) | 324 | `result-track:19b37cb9607626c20b220ac072f5e1fbd062f962a3433168cf7409a5b3070998` |
| 25 | `theorem` | [norm_norm](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/declarations/norm-norm--4f386b0ae94011f70223447e.md) | 339 | `result-track:4f386b0ae94011f70223447e47995e6d443b2357ec25b281258c64fa660dfd6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
