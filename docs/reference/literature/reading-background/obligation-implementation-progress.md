# Implementation progress through the 36 obligations

Exact Lean source: `45cbbb6a85ae32c652839533b1db1ef3d444c1d6`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`; Lean 4.33.0.

Four optional/corrective obligations discharged, three conditional fragments implemented, 29 obligations unresolved. All seven manuscript-level claims remain unresolved. Both pairs of distinct PDF versions retain independent records. Earlier search-only reports remain unchanged.

Eight theorems elaborated successfully. The four-module `lake build … --wfail` and external `Audit.lean` commands (full commands in JSON) exited 0. `#print axioms` reports only `propext`, `Classical.choice`, `Quot.sound` for all eight: no `sorryAx`, and no claim of choice-free proofs. Runtime logs stay outside Git.

## Algebra

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## GeometryTopology

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## LogicAndComputation

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

| Obligation | Result | Remaining scope |
|---|---|---|
| P1, PDF pp. 1, 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| P2, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P3, PDF pp. 2 | kernel-verified-optional-specialization | Exact primesBelow contract, uniqueness and endpoint update proved. Assistant-proposed task; not a theorem asserted by the roadmap. No complexity or analytic estimate. |
| P4, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.NumberTheory.Primes.primesBelow_contract`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L12); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_unique`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L17); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.
- [`GRWTSK.NumberTheory.Primes.enumeration_step`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean#L24); blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

| Obligation | Result | Remaining scope |
|---|---|---|
| B1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B3, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B4, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| B6, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).


### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline: `[]`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

| Obligation | Result | Remaining scope |
|---|---|---|
| E1, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E3, PDF pp. 1, 2 | kernel-verified-conditional-fragment | For finite square matrices over a commutative ring, UV=VU=1 and AU=UB imply det(1−tA)=det(1−tB) for every scalar t. Actual good-place parameters, representation, intertwiner and residue-field interpretation remain missing. |
| E4, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| E5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.LinearAlgebra.Matrix.pencil_conjugate`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.
- [`GRWTSK.LinearAlgebra.Matrix.det_pencil_eq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L23); blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

| Obligation | Result | Remaining scope |
|---|---|---|
| K1, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K2, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K3, PDF pp. 3 | kernel-verified-correction-check | In ℤ[q], q² ≠ 1 by constant coefficients; normalized diagonal cannot equal q². Detects inconsistency, does not repair KL recurrence or compute G2. |
| K4, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| K5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Algebra.Polynomial.X_sq_ne_one`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L9); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.
- [`GRWTSK.Algebra.Polynomial.normalized_diagonal_ne_X_sq`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean#L15); blob `c39a19783791dd1f7592c05d624bed05cf51204e`.

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline: `['grwtsk contributors']`. Publication date/DOI/arXiv not established; manuscript dates remain separately typed in JSON.

PDF SHA-256: `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`.

[Exact paper version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

| Obligation | Result | Remaining scope |
|---|---|---|
| S1, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S2, PDF pp. 1 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S3, PDF pp. 1, 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S4, PDF pp. 2 | kernel-verified-conditional-fragment | For supplied paths on one finite channel type, nonnegative weights, 0≤r<1, weighted absolute column bound and vanishing net defect, weighted source-minus-model residual vanishes. Source construction, conditioning, bounds, readouts and changing channels remain missing. |
| S5, PDF pp. 2 | unresolved | No construction discharged; original specification and dependency gaps retained. |
| S6, PDF pp. 2, 3 | unresolved | No construction discharged; original specification and dependency gaps retained. |

Exact original hypotheses, dependency order, acceptance checks, page anchors and page-text hashes are retained per obligation in [the structured record](obligation-implementation-progress.json).

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.source_residual_vanishes`](https://github.com/grwtsk/math/blob/45cbbb6a85ae32c652839533b1db1ef3d444c1d6/GRWTSK/Analysis/ErrorBounds/SourceResidualConvergence.lean#L12); blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96`.

## Hypotheses and unresolved suppliers

Prime enumeration is an assistant-proposed finite specialization, with strict p < N; P1 bibliography binding and P4 analytic source/model estimates remain open. E3 retains a commutative coefficient ring, finite decidable square index type, two inverse identities and an actual intertwining equality; no representation, L-group transfer, infinite product, continuation or divisor comparison is constructed. K3 is a correction check in ℤ[q], not a KL theory. S4 retains nonnegative weights, a common fixed finite channel type, 0 ≤ r < 1, every weighted column estimate and vanishing net source/model defect. Positivity of weights alone does not give channel separation, and no actual arithmetic forcing or readout is supplied.

B1–B6 remain unresolved: compactification, cohomological comparison, completed zero detector, off-line-zero class, vanishing in the same degree/sheaf and their actual composition are missing. S1–S3 and S5–S6 retain exact version-binding, arithmetic error/rate, independence and noncircularity gaps from the original plan. Imported mathlib infrastructure and prior source-only candidates are not newly classified as source-specific suppliers.
