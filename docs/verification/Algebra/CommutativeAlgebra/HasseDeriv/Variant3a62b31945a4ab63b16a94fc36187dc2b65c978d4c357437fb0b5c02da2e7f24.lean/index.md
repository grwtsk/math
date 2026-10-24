# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HasseDeriv.Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ff758e1c35717df510b59ffa25701ac7eaddeb4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ff758e1c35717df510b59ffa25701ac7eaddeb4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Vandermonde` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv--376b49d13bcef2eb748f0d41.md) | 55 | `declaration-track:376b49d13bcef2eb748f0d419151128fabe05f41d00ed8a4272fc79426d2d660` |
| 2 | `theorem` | [hasseDeriv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-apply--0c7cca668d9d13d95b0a2712.md) | 58 | `result-track:0c7cca668d9d13d95b0a2712e47ed4a78971443313a5b5122bd3498a6837ae96` |
| 3 | `theorem` | [hasseDeriv_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-coeff--ffb8930e68d5321025e95fc8.md) | 64 | `result-track:ffb8930e68d5321025e95fc824dc86ca6b656a4c391cd05f939ac0d9d6cbec6b` |
| 4 | `theorem` | [hasseDeriv_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-zero--fa2f8d73334d49a61b07ab0d.md) | 79 | `result-track:fa2f8d73334d49a61b07ab0d8a56ec5906203603fa33f3e60ce2febe5158e9f8` |
| 5 | `theorem` | [hasseDeriv_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-zero--f156a6b5a8b9c57bd9e746a5.md) | 84 | `result-track:f156a6b5a8b9c57bd9e746a5aa3d417b34230cbbdb96c708241f4951bed1111e` |
| 6 | `theorem` | [hasseDeriv_eq_zero_of_lt_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-eq-zero-of-lt-natdegree--424196c3f4e80d42c289a68e.md) | 87 | `result-track:424196c3f4e80d42c289a68e6d3c69797bc5ad7869d74d90ed4eadec71c12dce` |
| 7 | `theorem` | [hasseDeriv_one'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-one--94936a83d43571fd83df93ca.md) | 93 | `result-track:94936a83d43571fd83df93caa914ae211a10db896d9cd06a1e9dcffeb5ae4aef` |
| 8 | `theorem` | [hasseDeriv_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-one--1d625e145ae482085845bb23.md) | 98 | `result-track:1d625e145ae482085845bb23f6e4228af8ca9d913ec3ffde39b6aca655e98449` |
| 9 | `theorem` | [hasseDeriv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-monomial--ffd16acf7b40fd78f3ea78c5.md) | 102 | `result-track:ffd16acf7b40fd78f3ea78c5ab748b63d5038138af63b9a81f4cdaeec97d0fbd` |
| 10 | `theorem` | [hasseDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-c--f7b9474261dce77570d08c54.md) | 117 | `result-track:f7b9474261dce77570d08c54030e90e0ca1f3b82345745a379f0fb6b5161af9d` |
| 11 | `theorem` | [hasseDeriv_apply_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-apply-one--1f2c16a5b8b78a185549d5fa.md) | 121 | `result-track:1f2c16a5b8b78a185549d5fa148abbae9132f0b5b9d7754c3f0eb0a1068b3a36` |
| 12 | `theorem` | [hasseDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-x--2f51dfaa9709efa139132509.md) | 124 | `result-track:2f51dfaa9709efa139132509adb51945dbbc1eeafafb557cd0760af9293e2109` |
| 13 | `theorem` | [factorial_smul_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/factorial-smul-hassederiv--f5f72588c41ae429b7661550.md) | 128 | `result-track:f5f72588c41ae429b76615508a076fa9aaa93737ec6da967870913d4f21cd31a` |
| 14 | `theorem` | [hasseDeriv_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-comp--36af9b6fccd441b7f6c44396.md) | 148 | `result-track:36af9b6fccd441b7f6c44396164f94dc98582520bed7334616970d3ba68e6d17` |
| 15 | `theorem` | [natDegree_hasseDeriv_le](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/natdegree-hassederiv-le--2d64bf262c77ca18e8bc1863.md) | 175 | `result-track:2d64bf262c77ca18e8bc18636b4ba16df04125aa56a131a2edf6738bd246de2c` |
| 16 | `theorem` | [natDegree_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/natdegree-hassederiv--a4f01c0005245adabd5903e1.md) | 192 | `result-track:a4f01c0005245adabd5903e1edcc8bbb5db962537efe10c087aabf2cdcd91a6f` |
| 17 | `theorem` | [hasseDeriv_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/declarations/hassederiv-mul--b4a3723c7ed110223e7d8448.md) | 211 | `result-track:b4a3723c7ed110223e7d844842f9a854670130dadbccf9482c2ec26c74a667f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
