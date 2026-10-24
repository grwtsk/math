# Verification target: GRWTSK.Algebra.FieldTheory.AbelRuffini.Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa55cb792a8c141ee4bff880e3d529ac4d62e9a7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa55cb792a8c141ee4bff880e3d529ac4d62e9a7`.

Source path: `GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Solvable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/macro-rules--f2181388f81d75e7042138e1.md) | 31 | `declaration-track:f2181388f81d75e7042138e146216d591b4279c43b84e797756f2b4ff173e9f6` |
| 2 | `theorem` | [gal_zero_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-zero-issolvable--4e43b3b74a305ecfe2843d6e.md) | 41 | `result-track:4e43b3b74a305ecfe2843d6ea4e0bbe003c64bf3c3835d4d932a631274cf312b` |
| 3 | `theorem` | [gal_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-one-issolvable--73b6e7e9a03cc5078d391978.md) | 44 | `result-track:73b6e7e9a03cc5078d3919786286d4a3b0da7c45986e1112915132360cd3410f` |
| 4 | `theorem` | [gal_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-c-issolvable--d523476cdaf2162396b8d6b6.md) | 47 | `result-track:d523476cdaf2162396b8d6b6c9e64c2972a3b8c1c0f02452aad55302aa7a7e6b` |
| 5 | `theorem` | [gal_X_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-x-issolvable--acb3c1b0f438b01a80fb5c0e.md) | 51 | `result-track:acb3c1b0f438b01a80fb5c0edfd444d3e5b0c45fddf5e7e1cf9e15a24fe65690` |
| 6 | `theorem` | [gal_X_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-x-sub-c-issolvable--154fce355f6e60c5276aba06.md) | 55 | `result-track:154fce355f6e60c5276aba064548d94a05a08d907227bd018569095b6e55ff8d` |
| 7 | `theorem` | [gal_X_pow_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-x-pow-issolvable--1561f048507482b64490e25a.md) | 59 | `result-track:1561f048507482b64490e25a6d9a9b18286127eb7e54ee8f0b784bc1f2b0aa49` |
| 8 | `theorem` | [gal_mul_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-mul-issolvable--65cec995a2cce8b2d72d96e9.md) | 63 | `result-track:65cec995a2cce8b2d72d96e9c89d713bd213d7c1744f7d8bab6f47dc68345e82` |
| 9 | `theorem` | [gal_prod_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-prod-issolvable--5af358c109ac3ad81ca3a933.md) | 68 | `result-track:5af358c109ac3ad81ca3a933752a1bb9e416c7c58c079a5724e5f3b13c77f88c` |
| 10 | `theorem` | [gal_isSolvable_of_splits](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-issolvable-of-splits--adcca38b0ccc4224fb9cab64.md) | 77 | `result-track:adcca38b0ccc4224fb9cab64afa3ca1a707fe90abd3085a211fa36d64f2b6557` |
| 11 | `theorem` | [gal_isSolvable_tower](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-issolvable-tower--2924fd0d0b3be57f8cfa2bb2.md) | 84 | `result-track:2924fd0d0b3be57f8cfa2bb22042149904f5483cf5f958fc7ca2e1ac485ea549` |
| 12 | `theorem` | [gal_X_pow_sub_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-x-pow-sub-one-issolvable--3b25aae5446a77f95065a948.md) | 100 | `result-track:3b25aae5446a77f95065a948b3fb74157b88c386a066982a4ce76deaa3dccec1` |
| 13 | `theorem` | [gal_X_pow_sub_C_isSolvable_aux](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-x-pow-sub-c-issolvable-aux--06e489a24bb67ebbb6458485.md) | 121 | `result-track:06e489a24bb67ebbb64584852969cdfb1244512d15c384e928092ff09a5d499f` |
| 14 | `theorem` | [splits_X_pow_sub_one_of_X_pow_sub_C](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/splits-x-pow-sub-one-of-x-pow-sub-c--a51ce3c3280d9577db60a380.md) | 161 | `result-track:a51ce3c3280d9577db60a380d089e73cc5cc21db30e89de0a646ca32610672bc` |
| 15 | `theorem` | [gal_X_pow_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/gal-x-pow-sub-c-issolvable--a76c477d7c1f7484d6924286.md) | 202 | `result-track:a76c477d7c1f7484d69242869d90ea58386ff653b3e71069358a8dcd87c6e6df` |
| 16 | `inductive` | [IsSolvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/issolvablebyrad--6d2bcca96fde2fc15cafab3f.md) | 222 | `declaration-track:6d2bcca96fde2fc15cafab3f8050d58f3f86ec163756bf3bb509f14e03302230` |
| 17 | `def` | [solvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/solvablebyrad--d526159e2e2aef6df1e799f3.md) | 234 | `declaration-track:d526159e2e2aef6df1e799f38f920c496771b25c9c1556df9d4fa9d9481ef224` |
| 18 | `theorem` | [induction](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/induction--7641d3341201a4a6a1f2847c.md) | 252 | `result-track:7641d3341201a4a6a1f2847c494913a8f8102dd77bd74329b8d3842d9db622d0` |
| 19 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/isintegral--616a1a2f832d713b852236fb.md) | 287 | `result-track:616a1a2f832d713b852236fbb09e9928a3bab71ced2ba91a8ec7db409b62adf1` |
| 20 | `def` | [P](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/p--ee3e0c04a920a479beebda53.md) | 307 | `declaration-track:ee3e0c04a920a479beebda536c1bd882178dd2ae45ac1e92b7a1c9419ea6e470` |
| 21 | `theorem` | [induction3](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/induction3--165fab2e1da2047ef8c39b86.md) | 314 | `result-track:165fab2e1da2047ef8c39b86323869be8e4b5f08fa6662b57faf5ec23b38f749` |
| 22 | `theorem` | [induction2](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/induction2--1c39b3c9c93bd8001c36c81d.md) | 341 | `result-track:1c39b3c9c93bd8001c36c81d57c137237e2463a90aad5c7bac99cc08978d14e4` |
| 23 | `theorem` | [induction1](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/induction1--8630d1024097e4153a474b41.md) | 373 | `result-track:8630d1024097e4153a474b41664eb10e7b2720276b2bf65f90571b5ad03afac3` |
| 24 | `theorem` | [isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/issolvable--eb7cb651013c83ad29c51c0a.md) | 377 | `result-track:eb7cb651013c83ad29c51c0ad7b72c24861a1baf29e7e6cd99cadf55bafb8fa1` |
| 25 | `theorem` | [isSolvable'](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/declarations/issolvable--34490711b48d5b66b4630ec1.md) | 392 | `result-track:34490711b48d5b66b4630ec1d927f5b313d112147f28622a918ce455b9cae389` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
