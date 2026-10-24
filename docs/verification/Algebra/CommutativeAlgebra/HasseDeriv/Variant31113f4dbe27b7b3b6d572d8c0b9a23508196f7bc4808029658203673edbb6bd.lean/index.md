# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HasseDeriv.Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c273a9eb814f9518e5f4194ea0c73446c5d21be",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c273a9eb814f9518e5f4194ea0c73446c5d21be`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Vandermonde` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Derivative` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv--995f3fc265ffc2e202ea70f5.md) | 58 | `declaration-track:995f3fc265ffc2e202ea70f5b21d5d4be170eedf27c5f238b6601ceb0ed51b0d` |
| 2 | `theorem` | [hasseDeriv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-apply--07f1d4ede96b726228f611fd.md) | 62 | `result-track:07f1d4ede96b726228f611fd8ffcba8b0b573dd8e7245c5d5233f5e33b6f0b96` |
| 3 | `theorem` | [hasseDeriv_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-coeff--4ed87567a1adf0aca016291a.md) | 69 | `result-track:4ed87567a1adf0aca016291aad1f92926110bfb6a749c28d1e73812c5ba5a26c` |
| 4 | `theorem` | [hasseDeriv_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-zero--7928f3ae380dccbf91bb317c.md) | 85 | `result-track:7928f3ae380dccbf91bb317cce7afdb2a3dd688e23ef6cf43dd326b8e3242b34` |
| 5 | `theorem` | [hasseDeriv_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-zero--48e05e3c3faa0f97908d1da2.md) | 91 | `result-track:48e05e3c3faa0f97908d1da238b62c13f3cdf13639cc81f810e9ac2fe4b5282d` |
| 6 | `theorem` | [hasseDeriv_eq_zero_of_lt_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-eq-zero-of-lt-natdegree--5f06ffe2880dd69942b883a7.md) | 95 | `result-track:5f06ffe2880dd69942b883a7a94692f0722ae7255f82da567773bf6ba8cafa7f` |
| 7 | `theorem` | [hasseDeriv_one'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-one--43e1cadc009a3179cbc3711d.md) | 102 | `result-track:43e1cadc009a3179cbc3711d1d564504ea0d50dc4fd95be689873cb4da96c1f6` |
| 8 | `theorem` | [hasseDeriv_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-one--88b248ecc77fdafc7a920536.md) | 108 | `result-track:88b248ecc77fdafc7a920536468a3cf4cb4f364409abfc874f01effa86d09b46` |
| 9 | `theorem` | [hasseDeriv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-monomial--14bc9f1035a90dde7221ed4b.md) | 113 | `result-track:14bc9f1035a90dde7221ed4bf0b150ae703dd51f938d438107ea672035679d17` |
| 10 | `theorem` | [hasseDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-c--37c8f90190de86d11da84aa4.md) | 129 | `result-track:37c8f90190de86d11da84aa4702143bdcc00903e6ac90f8ed629033e93b59c4d` |
| 11 | `theorem` | [hasseDeriv_apply_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-apply-one--ceb74ef11c066da1637d2d56.md) | 135 | `result-track:ceb74ef11c066da1637d2d56c72ba2ae7ec339152a52deef7cc591be48f5bc2d` |
| 12 | `theorem` | [hasseDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-x--2abb3bffe94e0589e1fb18e5.md) | 139 | `result-track:2abb3bffe94e0589e1fb18e5d4b65f52331fff74b4a09e7c0ab53189945385db` |
| 13 | `theorem` | [factorial_smul_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/factorial-smul-hassederiv--6c51cb6c73cf14e19e59e1de.md) | 145 | `result-track:6c51cb6c73cf14e19e59e1de62ea6ffc5c44aea4e60b8f253d470b65897b6943` |
| 14 | `theorem` | [hasseDeriv_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-comp--12f7ef7ea35b408239197268.md) | 166 | `result-track:12f7ef7ea35b408239197268e5ffc14e1a149737396a2e8927c7e24fbd152821` |
| 15 | `theorem` | [natDegree_hasseDeriv_le](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/natdegree-hassederiv-le--b8c09f4498048f326a6d6e2d.md) | 194 | `result-track:b8c09f4498048f326a6d6e2df2008d40f3da7e8866f5cee236b1e5c44404d7e0` |
| 16 | `theorem` | [natDegree_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/natdegree-hassederiv--7f3f5f63deac0f031cf0f36e.md) | 212 | `result-track:7f3f5f63deac0f031cf0f36ed7d3a7305b0672df6aaf175bbb27bcaed8de91fd` |
| 17 | `theorem` | [hasseDeriv_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/declarations/hassederiv-mul--625ba8fcffed7b16b95937d9.md) | 230 | `result-track:625ba8fcffed7b16b95937d9eeff11a62a35319a7e4d16707c5eedf08425f422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
