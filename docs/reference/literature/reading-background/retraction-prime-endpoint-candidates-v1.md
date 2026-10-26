# Equivariant retraction and strict prime-endpoint candidates

Local attribution: **grwtsk contributors**. **SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.** The user explicitly keeps native verification on hold. No Lean, Lake, native admission or Noe replay command was run.

Source commit `e3909dc6656c2a3e433969e2b3f0b613116dd9cb`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. [Structured record](retraction-prime-endpoint-candidates-v1.json). [Original source-review plans](unresolved-bridge-review-v1.md). There are **21 theorem candidates, five definitions and 16 unexecuted semantic interface examples**. These counts are source inventories, not accepted results.

The implementation strengthens proposed conditional fragments only. All affected manuscript claims and original acceptance conditions stay open; the baseline remains **17 unresolved, 15 partial and four optional/corrective completions**. Historical receipts do not certify changed names, bytes or dependencies.

## Exact paper versions

All five records below are owner-designated unpublished research. Local attribution is **grwtsk contributors**, an owner-directed privacy display, not a literal transcription of historical bylines. Publication dates, DOI and arXiv IDs are unestablished; exact typed manuscript/repository dates are preserved in JSON. Copy counters imply no chronology. No reading/understanding date or historical influence is inferred.

| Title | Original PDF SHA-256 | Pinned source |
|---|---|---|
| A Holistic Strategy for Deriving Properties of Prime Numbers | `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f` | [version-bound PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c` |
| Refinement of Axiom 1: Bounded Error Growth Without Conjectures | `d5030fdf24961a5522e8d09b7806225ccff237b519b7f0471411a30834964783` | [version-bound PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory%20%281%29.pdf); blob `24db3692fb3576de7120803ee0deb4552c84e498` |
| Refinement of Axiom 1: Bounded Error Growth Without Conjectures | `019052dca83c69d0810a7cf16c92f9f0b13e77754ce4ff526a8f26c2c727608d` | [version-bound PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory%20%282%29.pdf); blob `3a8bd081a81421e553fc257bca58bc97c715b019` |
| Updated Verification of Recursive Refinement Framework | `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b` | [version-bound PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b` |
| Boundary Regularization: A Framework for High-Rank Elimination | `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362` | [version-bound PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); blob `a6b1384d8b682feabc705eee0e058eb50c61df39` |

### R1 paper anchors

- Asset `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`, PDF p. 1, “Residue Suppression via Localization”; layout-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.

- Asset `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`, PDF p. 2, “Positivity Constraints”; layout-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.

### R7 paper anchors

- Asset `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`, PDF p. 1, “Analytic Number Theory”; layout-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.

- Asset `d5030fdf24961a5522e8d09b7806225ccff237b519b7f0471411a30834964783`, PDF p. 2, “Prime Gaps”; layout-text SHA-256 `37bd9a7be90b2bf900db478cf56150606850391795122b15999cfc1da5be07d5`.

- Asset `019052dca83c69d0810a7cf16c92f9f0b13e77754ce4ff526a8f26c2c727608d`, PDF p. 2, “Prime Gaps”; layout-text SHA-256 `37bd9a7be90b2bf900db478cf56150606850391795122b15999cfc1da5be07d5`.

The prime roadmap date is May 23, 2025; both Axiom 1 candidates and the status note have January 2025 manuscript dates. Boundary Regularization has May 23, 2025 as its printed manuscript date. These are manuscript dates, not publication/access dates. The two Axiom 1 assets have equal extracted text but distinct original byte identities; neither is selected as the definite January reference.

## GeometryTopology — B2: equivariant splitting

Over any commutative ring R and additive-group R-modules M,B, retain actual linear i:B→M and r:M→B with r∘i=id. For T on M and S on B require BOTH T∘i=i∘S and r∘T=S∘r. Kernel stability is derived from the second identity. The implementation constructs the actual R-linear restriction Tker on ker r and the block S×Tker on B×ker r.

For E=retractionSplitEquiv i r, written proof candidates give E(Tx)=(S×Tker)(Ex), the equality of the composed linear maps, and the inverse identity T(E⁻¹y)=E⁻¹((S×Tker)y). No kernel-invariance or desired equivariance conclusion is assumed.

The family result is pointwise for an arbitrary index type. Separately, actual semiring representations ρM and ρB with the same intertwiners restrict to a ring homomorphism A→+*End_R(ker r); zero, one, addition and multiplication laws are derived by evaluating the supplied representation laws. This is not a constructed geometric action or an R-algebra representation claim.

**Still missing:** actual geometry, coefficients, localization/excision, geometric retraction and Hecke suppliers. B1 and B4–B6 are untouched.

### Exact mathematical declarations

- [`GRWTSK.Algebra.LinearAlgebra.retractionKernel_stable`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L36) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionKernelEnd`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L45) — unverified-definition; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionKernelEnd_apply`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L56) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionBlockEnd`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L62) — unverified-definition; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionBlockEnd_apply`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L68) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionSplitEquiv_intertwines`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L74) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionSplitEquiv_comp`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L87) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionSplitEquiv_inverse_intertwines`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L97) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionSplitEquiv_family_intertwines`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L109) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionKernelRepresentation`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L122) — unverified-definition; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionKernelRepresentation_apply`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L152) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.Algebra.LinearAlgebra.retractionSplitEquiv_representation_intertwines`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/Algebra/LinearAlgebra/EquivariantRetractionSplitting.lean#L158) — source-proof-candidate; **NOT_RUN**.

Source blob `eaf28f4ec10fe58cfc254ae9f8432a9978e77576`, SHA-256 `c0cc7759633d2461f559720d8626d0ca9a9b491fab995f8215081764802b0a9c`.

## NumberTheory — P4; LogicAndComputation — S2: strict endpoints

The actual sequence is p_n=Nat.nth Nat.Prime n, with p_0=2. The strict count π′ excludes its input prime and satisfies π′(p_n)=n; the inclusive count satisfies π(p_n)=n+1. The finite EnumeratesBelow contract is connected by cardinality to this exact strict count. This prevents a silent endpoint/index shift.

For a named deterministic comparison M define R(x)=(π′(x):ℝ)−M(x). The written identity is (M(p_(n+1))−M(p_n))−1=R(p_n)−R(p_(n+1)). Two endpoint estimates give the complete bound by E(p_n)+E(p_(n+1)). The global adapter retains E≥0, a threshold x0, the independently supplied estimate on x≥x0, and BOTH endpoint/domain hypotheses. A further adapter keeps the named C≥0 and nonnegative bound function in a C*bound estimate.

**Still missing:** the actual quantitative counting estimate and a named comparison/envelope suitable for the manuscript. A bound on the comparison increment is not by itself a prime-gap bound; a verified comparison-growth/derivative supplier is additional work. A growing error envelope is not a constant bound. No PNT, gap asymptotic, independence, arithmetic bias, RH or GRH theorem is supplied.

The relevant public upstream source is preserved: Mathlib `Nat.primeCounting'_nth_eq` and `Nat.primesBelow_card_eq_primeCounting'` in [PrimeCounting.lean](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/PrimeCounting.lean#L79), with `Nat.count_succ` and `Nat.nth_prime_zero_eq_two`. Exact imported file blobs/hashes are in JSON.

### Exact mathematical declarations

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.primeAt`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L32) — unverified-definition; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.primeAt_zero`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L34) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.primeAt_prime`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L36) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.strict_count_primeAt`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L39) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.inclusive_count_primeAt`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L43) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.enumeration_card_eq_strict_count`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L51) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.enumeration_card_primeAt`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L57) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.strictCountResidual`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L63) — unverified-definition; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.strictCountResidual_primeAt`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L66) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.endpoint_discrepancy_eq`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L71) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.endpoint_discrepancy_bound`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L80) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.endpoint_budget_of_counting_estimate`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L99) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.endpoint_discrepancy_bound_of_counting_estimate`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L110) — source-proof-candidate; **NOT_RUN**.

- [`GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint.endpoint_discrepancy_bound_of_scaled_estimate`](https://github.com/grwtsk/math/blob/e3909dc6656c2a3e433969e2b3f0b613116dd9cb/GRWTSK/NumberTheory/Primes/StrictPrimeEndpoint.lean#L119) — source-proof-candidate; **NOT_RUN**.

Source blob `4be6dca05ddced32e5f6c4524b8d1784d8f76629`, SHA-256 `36ba3b0b4697aad79a385e93ca0504daf296782fe5e9146c903bc33123b32310`.

## Static acceptance requirements; no execution evidence

The two static audit manifests require all 26 public source declarations plus any additional compiler-owned private/generated/instance roots. Allowed transitive axioms remain propext, Classical.choice and Quot.sound; sorryAx or any other forbidden axiom rejects. Actual axiom sets are unknown. No choice-free claim is made.

The two independently specified importing sources contain eight semantic examples each, covering the actual kernel action, block coordinates, inverse/family/representation interfaces, strict/inclusive conventions, arithmetic endpoints and supplied error hypotheses. They are **uncompiled**. They do not provide an exhaustive type audit of every public declaration.

| Static requirement | Exact source pin | Examples |
|---|---|---|
| [EquivariantRetractionSplittingAudits.json](../../../../verification/Algebra/EquivariantRetractionSplittingAudits.json) | `e3909dc6656c2a3e433969e2b3f0b613116dd9cb`; consumer `verification/Algebra/EquivariantRetractionSplittingTypes.lean`, blob `bae8fbc02beb7ecd3cf0bfb16b3a1f216a84b2ad`, SHA-256 `3bb0420165fb0aebf4a66f5508edb7e9e2049eb9a9c65ddb47645ab260a5df36` | 8, NOT_RUN |
| [StrictPrimeEndpointAudits.json](../../../../verification/NumberTheory/Primes/StrictPrimeEndpointAudits.json) | `e3909dc6656c2a3e433969e2b3f0b613116dd9cb`; consumer `verification/NumberTheory/Primes/StrictPrimeEndpointTypes.lean`, blob `e47f8a78fad07f970e8252bab57c550e5adcaf3a`, SHA-256 `1e98fa4931097b392cf46128238caf9e45d126aa32456ff2f44f14f64dca7337` | 8, NOT_RUN |

Future acceptance needs fresh supported Noe source/runtime bindings, the required source rebuild, complete strict axiom census, both importing consumers, final drift gates and proper owner admission/cleanup after the user releases the hold. No old registry, passing dependency prefix, textual inspection, source commit or static manifest is a successful replay.

The existing 36 obligation records and their manuscript/page identities are unchanged. These implementations are assistant-proposed algebraic/arithmetic bridges, not proofs of the unpublished manuscripts’ stronger claims.
