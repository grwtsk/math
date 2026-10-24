# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PDeriv.Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d38bb58ad3126e815d7c7c5db19129810e8c7b59",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d38bb58ad3126e815d7c7c5db19129810e8c7b59`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Derivation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv--41742ecc14254b72513cc9d6.md) | 57 | `declaration-track:41742ecc14254b72513cc9d6e7624abea940a9ea3260f000640325844bc97881` |
| 2 | `theorem` | [pderiv_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-def--01f44c369fa03ee12ed8a720.md) | 61 | `result-track:01f44c369fa03ee12ed8a720352c0e02903c9d8222f11644c1f6c83902bf3b31` |
| 3 | `theorem` | [pderiv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-monomial--94b31d7c13f8f24b1e88f9de.md) | 65 | `result-track:94b31d7c13f8f24b1e88f9dee419a63f151ca8b8df1c90df8b710f07fd77c938` |
| 4 | `lemma` | [X_mul_pderiv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/x-mul-pderiv-monomial--33da94c04488d8de92212fab.md) | 75 | `result-track:33da94c04488d8de92212fab500e4fc08d9be323a12d41a53972013042e38182` |
| 5 | `theorem` | [pderiv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-c--d3961d2dd01f643556b287fc.md) | 82 | `result-track:d3961d2dd01f643556b287fc33999a4ede885691212f85dfa4f09c95ddb32cf0` |
| 6 | `theorem` | [pderiv_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-one--c4b989e869f3872808ce419a.md) | 85 | `result-track:c4b989e869f3872808ce419a017c052191b97034c6c570ab5df31b90e8fdc591` |
| 7 | `theorem` | [pderiv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-x--8c85f73fdfb0868d75c49006.md) | 88 | `result-track:8c85f73fdfb0868d75c4900686e9ddb3a951c6cbd149abe46249d271ccab750a` |
| 8 | `theorem` | [pderiv_X_self](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-x-self--916fd7d29ed8132a6b448fb1.md) | 93 | `result-track:916fd7d29ed8132a6b448fb19fb5bc15a1f25a3a048d8718a13f6624516c4e33` |
| 9 | `theorem` | [pderiv_X_of_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-x-of-ne--b06a4a22ae9a95d31d2b36d0.md) | 96 | `result-track:b06a4a22ae9a95d31d2b36d0a38342036dc5c6fd0887ba5fb0cd96153f6ab967` |
| 10 | `theorem` | [pderiv_eq_zero_of_notMem_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-eq-zero-of-notmem-vars--f030a61646d214a0beff1414.md) | 99 | `result-track:f030a61646d214a0beff14144b1d1c26de114cdf4e72429abc84506073c997c4` |
| 11 | `theorem` | [pderiv_monomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-monomial-single--1f2876c60e770a0eb2caf9d8.md) | 106 | `result-track:1f2876c60e770a0eb2caf9d82212b673bb7c8c1e251733f2d3c04964930f60e1` |
| 12 | `theorem` | [pderiv_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-mul--0f43fe65195ad1159f8e2edc.md) | 109 | `result-track:0f43fe65195ad1159f8e2edc62867be8e57194e69e6b4ad299f4261660bd2a3e` |
| 13 | `theorem` | [pderiv_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-pow--06467685cd4305456af81a1f.md) | 113 | `result-track:06467685cd4305456af81a1f681e9c97656219a40e3a22528277970ef4310b32` |
| 14 | `theorem` | [pderiv_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-c-mul--b9d1dd5a420ecf573c51384b.md) | 117 | `result-track:b9d1dd5a420ecf573c51384b7f0d179464944859b9b00a33b0579229cc7303cb` |
| 15 | `theorem` | [pderiv_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-map--21e792b2f6446496a6b9d66b.md) | 120 | `result-track:21e792b2f6446496a6b9d66b5b7cba048c04b8d1e55f96ea01f724263ed807f4` |
| 16 | `lemma` | [pderiv_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/pderiv-rename--5ba641527e37251d93a7547f.md) | 127 | `result-track:5ba641527e37251d93a7547f2cc8367f5380df7b7274669c5b9480e95df8a50b` |
| 17 | `lemma` | [aeval_sumElim_pderiv_inl](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant88760565fc8897eef7b0d251558768ea219e30dc5b21ac9ad532539443b2ebf1.lean/declarations/aeval-sumelim-pderiv-inl--5960cff197b01ae71789d16e.md) | 139 | `result-track:5960cff197b01ae71789d16eda0169f7f58a4e1d8ce32fb1193a6a1273fe09b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
