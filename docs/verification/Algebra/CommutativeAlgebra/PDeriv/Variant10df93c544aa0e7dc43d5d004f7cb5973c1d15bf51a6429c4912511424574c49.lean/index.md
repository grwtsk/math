# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PDeriv.Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "608a6f5fabb3eb2f58f4d8aa42063f5aebd78528",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `608a6f5fabb3eb2f58f4d8aa42063f5aebd78528`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Derivation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv--ff6aff04d19431bb5d47022c.md) | 65 | `declaration-track:ff6aff04d19431bb5d47022c4c73c1cbcf0b1fe7693320ff657f30799bdee255` |
| 2 | `theorem` | [pderiv_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-def--699baf40420b7cc9f1cc3ea7.md) | 69 | `result-track:699baf40420b7cc9f1cc3ea73c9023ce1df0547c541814905640a62e910dc9e3` |
| 3 | `theorem` | [pderiv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-monomial--2156b9f4bf53e6cf1e929f23.md) | 73 | `result-track:2156b9f4bf53e6cf1e929f23a35a167450a84da885fd152b6bd0c89bf2b1346c` |
| 4 | `lemma` | [X_mul_pderiv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/x-mul-pderiv-monomial--93eec865a3479cb7f4080710.md) | 83 | `result-track:93eec865a3479cb7f4080710c763179e84af8de7dce78cc2172e124fc8c3236a` |
| 5 | `theorem` | [pderiv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-c--627a36952747227bd1151a11.md) | 90 | `result-track:627a36952747227bd1151a110329b56fbb367008e7b19085a794f4d14f1f4297` |
| 6 | `theorem` | [pderiv_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-one--93bb50e83a7c6141a41e8724.md) | 93 | `result-track:93bb50e83a7c6141a41e87242f67ceaec0705aac82e63aebe6be1709b50e6416` |
| 7 | `theorem` | [pderiv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-x--26e47d7c2605899620e43f5d.md) | 96 | `result-track:26e47d7c2605899620e43f5d2001657605453dbf8e4d08b905a22fdc5b7dd652` |
| 8 | `theorem` | [pderiv_X_self](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-x-self--b9a5d41df207f4c962e66f9c.md) | 101 | `result-track:b9a5d41df207f4c962e66f9c70340ff52a332adc9267f05a313375e93b5ff780` |
| 9 | `theorem` | [pderiv_X_of_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-x-of-ne--585e26ce04798fadcc94f23a.md) | 104 | `result-track:585e26ce04798fadcc94f23a76bedf50800f450c6cc5286fb832bc6c0e3534c1` |
| 10 | `theorem` | [pderiv_eq_zero_of_notMem_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-eq-zero-of-notmem-vars--a00b084b75e404e6f38c4170.md) | 107 | `result-track:a00b084b75e404e6f38c41703ba6d0a0529ca07de5f6e68e04a5cd6592d77c98` |
| 11 | `theorem` | [pderiv_monomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-monomial-single--4032d3b18e06425c2cd0b845.md) | 114 | `result-track:4032d3b18e06425c2cd0b845024fe32130874ac3125fd8d7cdec67cf96297e30` |
| 12 | `theorem` | [pderiv_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-mul--bbbe245fe260930bb1af47fd.md) | 117 | `result-track:bbbe245fe260930bb1af47fdb8e603e9f0c0e74a23b2563ed368194adc6208ee` |
| 13 | `theorem` | [pderiv_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-pow--cc653d6008aac4484336f061.md) | 121 | `result-track:cc653d6008aac4484336f061266ca6a9b0363c79ea9cb4316cf3cc45c21d45c3` |
| 14 | `theorem` | [pderiv_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-c-mul--77b446b73ecaeac039e2fd2f.md) | 125 | `result-track:77b446b73ecaeac039e2fd2f52ed5448916239cd2d0c6372d5f48a9ccae546b8` |
| 15 | `theorem` | [pderiv_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-map--20efed108ee48c985eaa83d6.md) | 128 | `result-track:20efed108ee48c985eaa83d608329ec17ffbb8fa165f9841f92f3d83d24441c0` |
| 16 | `lemma` | [pderiv_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/pderiv-rename--da175461e7f829dd2cc421a5.md) | 135 | `result-track:da175461e7f829dd2cc421a5f9c249fa4bd40968e045a133eee87c4ceef36c00` |
| 17 | `lemma` | [aeval_sumElim_pderiv_inl](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/declarations/aeval-sumelim-pderiv-inl--64c7cfd32ba45c6b5ac8278f.md) | 147 | `result-track:64c7cfd32ba45c6b5ac8278f57db52829912fcd4cc4064626a9c2e7cdbd4b620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
