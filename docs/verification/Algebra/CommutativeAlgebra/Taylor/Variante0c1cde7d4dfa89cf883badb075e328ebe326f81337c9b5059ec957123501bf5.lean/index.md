# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Taylor.Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10c076bd32a43814fc6e92536905cf9778c1de94",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10c076bd32a43814fc6e92536905cf9778c1de94`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.HasseDeriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor--16227d71bd8daa0439af5a4f.md) | 32 | `declaration-track:16227d71bd8daa0439af5a4f59505b8ad59a216353b553e11c8020fc98d0993a` |
| 2 | `theorem` | [taylor_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-apply--851160e0832f00a9a064b10c.md) | 37 | `result-track:851160e0832f00a9a064b10ca1521e3fd519bf2fc192d91493bd5aa894cf77bf` |
| 3 | `theorem` | [taylor_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-x--49c88498f29609277fe368e7.md) | 41 | `result-track:49c88498f29609277fe368e7a594fd333ed77c147767f9bca95e8d4d7faf304e` |
| 4 | `theorem` | [taylor_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-c--a70c7970d134a201b7ad3e24.md) | 44 | `result-track:a70c7970d134a201b7ad3e243fa71cb459362e0e998f8dda46b4e64a30b46c9c` |
| 5 | `theorem` | [taylor_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-zero--5fac0c00b5edc253228761d6.md) | 47 | `result-track:5fac0c00b5edc253228761d6524905f2b570f62364e7b4d0b8bcb74cb06dcc5d` |
| 6 | `theorem` | [taylor_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-zero--2e1dfae5e4e7b159ad08d8a7.md) | 52 | `result-track:2e1dfae5e4e7b159ad08d8a78e7c61b88d67e343046a448e6ea2d712241ebeb6` |
| 7 | `theorem` | [taylor_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-one--cb4b03f5dd400ff1b78f2bff.md) | 55 | `result-track:cb4b03f5dd400ff1b78f2bffcefcde99d8706ff885b19f6f2039417c51ac0b9c` |
| 8 | `theorem` | [taylor_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-monomial--c554f728b6290127b6267662.md) | 58 | `result-track:c554f728b6290127b6267662e6ea997422c4dae58f6bcc51d7913008dca81c36` |
| 9 | `theorem` | [taylor_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-coeff--703d49fb69e159bc2e1ba845.md) | 62 | `result-track:703d49fb69e159bc2e1ba8458fe779d6e7054423248a28313204e5deb30b8a6c` |
| 10 | `theorem` | [taylor_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-coeff-zero--65368740c02dbf8996603421.md) | 74 | `result-track:65368740c02dbf8996603421933876b83bcde1ef1157720f10d7e3802605daca` |
| 11 | `theorem` | [taylor_coeff_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-coeff-one--e734390dd5db5b72ca32f449.md) | 78 | `result-track:e734390dd5db5b72ca32f449370fbdf76a47278a19ba204ebe1f9d61a0f320a4` |
| 12 | `theorem` | [natDegree_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/natdegree-taylor--b9dcbf257435d699268bc2a4.md) | 82 | `result-track:b9dcbf257435d699268bc2a42a99dba516a34432da158ed261ebd21def330342` |
| 13 | `theorem` | [taylor_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-mul--abdd7126cd67ca4fecb32559.md) | 89 | `result-track:abdd7126cd67ca4fecb32559c52cbd4e68eba0a51aed6db024bf2d52e541211a` |
| 14 | `def` | [taylorAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/tayloralghom--e31bcfede9a4670324eeb502.md) | 94 | `declaration-track:e31bcfede9a4670324eeb502ca6db59ad8268e2e46f70998ee4c5f99562eff00` |
| 15 | `theorem` | [taylor_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-taylor--e58b0a56aa5ff7c1e0df89f6.md) | 97 | `result-track:e58b0a56aa5ff7c1e0df89f646a008163c9ae5d578e06645cfe43be4f40b4703` |
| 16 | `theorem` | [taylor_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-eval--ed13a6f99eb55f0a081aed9f.md) | 101 | `result-track:ed13a6f99eb55f0a081aed9f0b7d9c884a0a6f0779f8966d0c3900edeba544df` |
| 17 | `theorem` | [taylor_eval_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-eval-sub--4342f42992765eb9f7866ab2.md) | 105 | `result-track:4342f42992765eb9f7866ab2fe81ee4559c1eaa82c3d5dd735ba5b0d6f143792` |
| 18 | `theorem` | [taylor_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/taylor-injective--4c14c2f64a894f62665fb5ef.md) | 108 | `result-track:4c14c2f64a894f62665fb5ef4a8731cb83d486083aab08644266f21af64b9186` |
| 19 | `theorem` | [eq_zero_of_hasseDeriv_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/eq-zero-of-hassederiv-eq-zero--a256e8ea1d4de66aa6b031d9.md) | 114 | `result-track:a256e8ea1d4de66aa6b031d964edb257b492b9f58707d239f809f9de3178425d` |
| 20 | `theorem` | [sum_taylor_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/sum-taylor-eq--23226116f0fc21f418d43820.md) | 122 | `result-track:23226116f0fc21f418d438200ae02f6ca2e5928212bc25e4f603190240ddbff8` |
| 21 | `theorem` | [eval_add_of_sq_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variante0c1cde7d4dfa89cf883badb075e328ebe326f81337c9b5059ec957123501bf5.lean/declarations/eval-add-of-sq-eq-zero--c854942974741ab8ff5ccfad.md) | 127 | `result-track:c854942974741ab8ff5ccfad1c2e7ddb979ab91ce21d458e54aff82c94bcdc7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
