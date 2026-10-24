# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Vieta.Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f730c0b9b103ca720f7504c4dbb6bbaf32d46a0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f730c0b9b103ca720f7504c4dbb6bbaf32d46a0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_X_add_C_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/prod-x-add-c-eq-sum-esymm--ab52f7a8e6488725e8a5710d.md) | 44 | `result-track:ab52f7a8e6488725e8a5710de35536c0596a6f5d7fa611b4a1f7d69ab43a5d52` |
| 2 | `theorem` | [prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/prod-x-add-c-coeff--d5e4ffe2953623f9f8b99263.md) | 60 | `result-track:d5e4ffe2953623f9f8b9926344836313078cbac3b78a341d1c94383a8eb3af92` |
| 3 | `theorem` | [prod_X_add_C_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/prod-x-add-c-coeff--81716c7bd77e4fd49d035c68.md) | 74 | `result-track:81716c7bd77e4fd49d035c68bf30bda9a0b3dfe9cb025082353ca368899c4e77` |
| 4 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.Finset.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/root-grwtsk-algebra-commutativealgebra-prodxaddceqsumesymm-variant94eb62--e1e948aa2d1eddc747f0efc3.md) | 79 | `result-track:e1e948aa2d1eddc747f0efc31de72d09cb498466f69fa1944254bea38a95b488` |
| 5 | `theorem` | [esymm_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/esymm-neg--24ec24d42f0fa871722df7f5.md) | 90 | `result-track:24ec24d42f0fa871722df7f5e6567b40ca4af326ddf05144e006572c3d5ba17c` |
| 6 | `theorem` | [prod_X_sub_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/prod-x-sub-x-eq-sum-esymm--21224d96956757a7804ec13d.md) | 99 | `result-track:21224d96956757a7804ec13dea488264bb45ac142778128955956769c82e3c44` |
| 7 | `theorem` | [prod_X_sub_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/prod-x-sub-c-coeff--20f2f37ef9940eb94c7b6148.md) | 113 | `result-track:20f2f37ef9940eb94c7b61482ec5363da19a468dbd06e94e28f66b51be8dead3` |
| 8 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.Polynomial.coeff_eq_esymm_roots_of_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/root-grwtsk-algebra-commutativealgebra-prodxaddceqsumesymm-variant94eb62--1e2d5e843a2fd32a78675657.md) | 130 | `result-track:1e2d5e843a2fd32a78675657712d0e169bfbc914c59e067bd994403706847a12` |
| 9 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.Polynomial.coeff_eq_esymm_roots_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/root-grwtsk-algebra-commutativealgebra-prodxaddceqsumesymm-variant94eb62--d3b29cc89f95d3cf963a5bcc.md) | 139 | `result-track:d3b29cc89f95d3cf963a5bcca15c54d9a3099d7e8f24459f3579f84086065298` |
| 10 | `theorem` | [MvPolynomial.prod_C_add_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/mvpolynomial-prod-c-add-x-eq-sum-esymm--ef25211032ff7306d0f483cd.md) | 157 | `result-track:ef25211032ff7306d0f483cd090548341b0a557f8706d42b9dbc84ee40c5e82f` |
| 11 | `theorem` | [MvPolynomial.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/declarations/mvpolynomial-prod-x-add-c-coeff--a01cb533fd235f9f9bc91ee0.md) | 168 | `result-track:a01cb533fd235f9f9bc91ee07536a06bcb5dac736bf444d62bee6ab63c8262c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
