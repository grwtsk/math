# Ideas and Lean formalizations by taxonomy

43 passage-level idea records across 41 unpublished PDF versions, with 35 pinned code links. The [unpublished-source inventory](unpublished-mapping-coverage.md) separately covers all 274 versions, including 233 screened passages with no established mathematical code match.

These are assistant-proposed interpretations, not statements of what grwtsk contributors understood or when. Owner statements and understanding dates remain null. Mathematical correspondence does not establish influence, priority or attribution. Attribution clarification remains tracked in [issue #254](https://github.com/grwtsk/math/issues/254).

A **matched-subclaim** covers only the named finite lemma or data contract. A **conditional-correspondence** needs the explicit source instantiation and remaining theorems. An **analogy-only** link asserts no theorem equivalence. An **unresolved** idea has no established Lean target. Source inspection is not compilation or an independent kernel audit. Source titles claiming proofs remain bibliographic titles.

Expanded code baseline: `fa27fde9b4df2aedd203679e832c0956c3e12889`. The original four links retain their earlier pinned commit and evidence unchanged. Exact PDF SHA-256 identities distinguish every version; page numbers below are physical PDF pages. Hypothesis lists are passage-level transcriptions or scoped summaries, not complete formal restatements.

- [Analysis (15 ideas)](#taxonomy-analysis)
- [Geometry and topology (4 ideas)](#taxonomy-geometrytopology)
- [Logic and computation (8 ideas)](#taxonomy-logicandcomputation)
- [Number theory (13 ideas)](#taxonomy-numbertheory)
- [Review queue (3 ideas)](#taxonomy-reviewqueue)

<a id="taxonomy-analysis"></a>

## Analysis

### A Canonical Spectral Determinant and Spectral Equivalence Formulation of the Riemann Hypothesis — `8c4694e05d77`

**analogy-only** · filename v0.99.87 · `idea:unpublished-v2:8c4694e05d7749bd`

Paper: [PDF page 5](<https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/spectral_determinant_RH_equivalence_v0.99.87.pdf#page=5>) — Operator/determinant summary on the cited physical PDF page.

Exact PDF SHA-256: `8c4694e05d7749bdee26abffead83e60e06b66340ad6bdf9e05201761cae9de8`.

Paper idea (assistant reading): The manuscript proposes a compact self-adjoint source operator and a determinant correspondence to xi.

Proposed interpretation: The finite rational determinant is only a finite algebraic analogue of the proposed infinite spectral determinant.

Paper hypotheses and scope:

- The manuscript asserts a weighted Hilbert-space realization and compact self-adjoint/trace-class operator with its determinant comparison; these analytic assertions are not verified by this map.

Code: [`GRWTSK.Spectral.Sheaf.RationalMomentFredholmBridge.FiniteFredholmBridge.determinant`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Spectral/Sheaf/RationalMomentFredholmBridge.lean#L127-L133), lines 127–133; Git blob `ab0a7854f9941fa0378d30ef19dcbcd13a22844d`.

Finite-dimensional rational det(I−qT); no analytic determinant or xi comparison. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the actual infinite operator and domain, prove the appropriate trace-ideal properties and settle the determinant convention.
- Prove the multiplicity-preserving determinant–xi comparison and limits. Do not inherit claims or defects from another byte-distinct revision without checking it.

### A Canonical Spectral Determinant and Spectral Equivalence Formulation of the Riemann Hypothesis — `b86baa113c56`

**analogy-only** · filename v0.99.0 · `idea:unpublished-v2:b86baa113c56857c`

Paper: [PDF page 5](<https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/spectral_determinant_RH_equivalence_v0.99.0.pdf#page=5>) — Operator/determinant summary on the cited physical PDF page.

Exact PDF SHA-256: `b86baa113c56857c50076ca25c9587bda07fb24273e9dff5e72b71956e095e24`.

Paper idea (assistant reading): The manuscript proposes a compact self-adjoint source operator and a determinant correspondence to xi.

Proposed interpretation: The finite rational determinant is only a finite algebraic analogue of the proposed infinite spectral determinant.

Paper hypotheses and scope:

- The manuscript asserts a weighted Hilbert-space realization and compact self-adjoint/trace-class operator with its determinant comparison; these analytic assertions are not verified by this map.

Code: [`GRWTSK.Spectral.Sheaf.RationalMomentFredholmBridge.FiniteFredholmBridge.determinant`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Spectral/Sheaf/RationalMomentFredholmBridge.lean#L127-L133), lines 127–133; Git blob `ab0a7854f9941fa0378d30ef19dcbcd13a22844d`.

Finite-dimensional rational det(I−qT); no analytic determinant or xi comparison. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the actual infinite operator and domain, prove the appropriate trace-ideal properties and settle the determinant convention.
- Prove the multiplicity-preserving determinant–xi comparison and limits. Do not inherit claims or defects from another byte-distinct revision without checking it.

### A Modular Proof of the Riemann Hypothesis via Recursive Refinement and Geometric Representations — `8702e1618a32`

**conditional-correspondence** · unlabeled version · `idea:unpublished-v2:8702e1618a329ee1`

Paper: [PDF page 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8702e1618a32--A_Modular_Proof_of_the_Riemann_Hypothesis_via_Recursive_Refinement_and_Geometric_Representations (3).pdf#page=2>) — §2.2–3.1, recursive refinement and fixed-point claim.

Exact PDF SHA-256: `8702e1618a329ee15d9f6b4d86deb4a5e7b7535fb3bfcf784f4a29f3d8cadca4`.

Paper idea (assistant reading): The paper iterates a refinement operator and then invokes fixed-point convergence in its RH program.

Proposed interpretation: Lean has a conditional convergence theorem for a nonnegative scalar budget with strict contraction and vanishing forcing, not for this arithmetic operator.

Paper hypotheses and scope:

- A declared refinement operator and approximants; its required contraction, domain preservation and source identification are additional unproved inputs.

Code: [`GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget.variable_budget_vanishes`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean#L80-L110), lines 80–110; Git blob `753f3162d343c67447cd2f8681291821b50b785d`.

A nonnegative scalar budget vanishes under a supplied strict contraction and vanishing forcing. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Define the actual source/model residual and prove a complete norm comparison.
- Supply 0≤r<1, a valid recurrence and vanishing net forcing uniformly in the required source variables.
- Identify the limiting source with the intended zeta object and independently prove the positivity/zero-location bridge.

### A Modular Proof of the Riemann Hypothesis via Recursive Refinement and Geometric Representations — `d5dfdf34f37e`

**conditional-correspondence** · unlabeled version · `idea:unpublished-v2:d5dfdf34f37e2d87`

Paper: [PDF page 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5dfdf34f37e--A_Modular_Proof_of_the_Riemann_Hypothesis_via_Recursive_Refinement_and_Geometric_Representations (2).pdf#page=2>) — §2.2–3.1, recursive refinement and fixed-point claim.

Exact PDF SHA-256: `d5dfdf34f37e2d87c189ed1a18c5a7fe6ac0c078059c4eca1fda96d9a1754e50`.

Paper idea (assistant reading): The paper iterates a refinement operator and then invokes fixed-point convergence in its RH program.

Proposed interpretation: Lean has a conditional convergence theorem for a nonnegative scalar budget with strict contraction and vanishing forcing, not for this arithmetic operator.

Paper hypotheses and scope:

- A declared refinement operator and approximants; its required contraction, domain preservation and source identification are additional unproved inputs.

Code: [`GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget.variable_budget_vanishes`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean#L80-L110), lines 80–110; Git blob `753f3162d343c67447cd2f8681291821b50b785d`.

A nonnegative scalar budget vanishes under a supplied strict contraction and vanishing forcing. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Define the actual source/model residual and prove a complete norm comparison.
- Supply 0≤r<1, a valid recurrence and vanishing net forcing uniformly in the required source variables.
- Identify the limiting source with the intended zeta object and independently prove the positivity/zero-location bridge.

### Bourbaki: A Canonical Spectral Determinant and Equivalence Formulation of the Riemann Hypothesis — `e600bc97e764`

**analogy-only** · filename v0.99.98 · `idea:determinant-v1`

Paper: [PDF page 206](<https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/spectral_determinant_RH_equivalence_v0.99.98.pdf#page=206>) — Appendix H; Fredholm and Carleman Determinants.

Exact PDF SHA-256: `e600bc97e764ff03a2ba2d47755a4e92dc7ea864a33fcb4fab79009a9453c3f3`.

Paper idea (assistant reading): The manuscript writes det(I−λT) as a product over eigenvalues and relates operator determinants to xi.

Proposed interpretation: A finite rational determinant has the same I−parameter·transfer shape.

Paper hypotheses and scope:

- Trace-class complex operator and a separately justified choice of regularization/normalization.

Code: [`FiniteFredholmBridge.determinant`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/Spectral/Sheaf/RationalMomentFredholmBridge.lean#L127-L134), lines 127–134; Git blob `ab0a7854f9941fa0378d30ef19dcbcd13a22844d`.

Pinned Lean source inspected against the cited PDF pages; no build or independent kernel audit performed.

Missing bridges and uncertainty:

- Code is finite dimensional over ℚ; manuscript is infinite dimensional over ℂ.
- No trace-ideal convergence, regularization comparison, analytic continuation, or determinant–xi identity follows.
- Different determinant conventions within the manuscript need reconciliation before identifying a target.

### Bourbaki: A Canonical Spectral Determinant and Equivalence Formulation of the Riemann Hypothesis — `e600bc97e764`

**analogy-only** · filename v0.99.98 · `idea:heat-v1`

Paper: [PDF page 64](<https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/spectral_determinant_RH_equivalence_v0.99.98.pdf#page=64>), [PDF page 65](<https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/spectral_determinant_RH_equivalence_v0.99.98.pdf#page=65>) — Lemma 2.18; heat-semigroup claims.

Exact PDF SHA-256: `e600bc97e764ff03a2ba2d47755a4e92dc7ea864a33fcb4fab79009a9453c3f3`.

Paper idea (assistant reading): The manuscript uses exp(−t Lsym²) and claims trace-class heat smoothing for a compact trace-class operator.

Proposed interpretation: The scalar exponential mode obeys a semigroup law. This is a finite-mode fragment, not a construction of the manuscript operator.

Paper hypotheses and scope:

- Infinite-dimensional weighted L² space; claimed compact self-adjoint trace-class Lsym.

Code: [`modeHeat_add`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean#L54-L62), lines 54–62; Git blob `0b4a9f940f2ec1ac1cfd6cd21e22c5b2a92ef7e9`.

Pinned Lean source inspected against the cited PDF pages; no build or independent kernel audit performed.

Missing bridges and uncertainty:

- No weighted Hilbert-space operator, trace-class heat theorem, or xi identification is supplied by this declaration.
- Blocking manuscript issue: page 64 says nonzero eigenvalues accumulate at zero, yet sums exp(−t μ_n²). For infinitely many eigenvalues these terms tend to one, so this displayed sum diverges. It later asserts incompatible eigenvalue growth. Requires operator/normalization correction, not a formal bridge.

### Fredholm–Hodge Comparator Naturality and Endpoint Reversal — `82f838ae5214`

**conditional-correspondence** · Revision 1.1 · `idea:unpublished-v2:82f838ae5214a4e5`

Paper: [PDF page 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/82f838ae5214--P10.pdf#page=8>) — Theorem 6.1 (P10-T03).

Exact PDF SHA-256: `82f838ae5214a4e5699c952b7b5871ffb0137a5a2deb5986d67bfd61cc2c9f93`.

Paper idea (assistant reading): Comparator normalization must use an independently nowhere-zero gauge and preserve the same endpoint data.

Proposed interpretation: Lean has actual holomorphic units and gauge transport of sections on a fixed cover. This is a related geometric interface, not an identification of the paper’s Fredholm and Hodge endpoints.

Paper hypotheses and scope:

- Both endpoint expressions and normalizers have the stated common domain; the gauge is independently holomorphic and nowhere zero.

Code: [`GRWTSK.Analysis.Complex.HolomorphicLineGauge.Gauge.familyEquiv`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean#L137-L153), lines 137–153; Git blob `02bce81ab498f01b07b51b41e21eed45bcc2e742`.

Supplied holomorphic unit gauges transport twisted families on the same indexed cover. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct endpoint sections, their common domains and normalizers as actual holomorphic units.
- Prove the quotient and dense-core endpoint identities and align the same cocycles and source.
- Gauge transport does not prove endpoint reversal, equality of zero loci or RH.

### Fredholm–Hodge Comparator Naturality and Endpoint Reversal — `fd60a933105e`

**conditional-correspondence** · Revision 1.0 · `idea:unpublished-v2:fd60a933105e48a0`

Paper: [PDF page 10](</Users/local/Desktop/MathematicsLibrary/NumberTheory/fd60a933105e--P10.pdf#page=10>) — §6.2, Proposition 6.2 (P10-T06).

Exact PDF SHA-256: `fd60a933105e48a09a21fac76d148c1ee4338e59d0055a02f96d1f336e49270a`.

Paper idea (assistant reading): Comparator normalization must use an independently nowhere-zero gauge and preserve the same endpoint data.

Proposed interpretation: Lean has actual holomorphic units and gauge transport of sections on a fixed cover. This is a related geometric interface, not an identification of the paper’s Fredholm and Hodge endpoints.

Paper hypotheses and scope:

- Both endpoint expressions and normalizers have the stated common domain; the gauge is independently holomorphic and nowhere zero.

Code: [`GRWTSK.Analysis.Complex.HolomorphicLineGauge.Gauge.familyEquiv`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean#L137-L153), lines 137–153; Git blob `02bce81ab498f01b07b51b41e21eed45bcc2e742`.

Supplied holomorphic unit gauges transport twisted families on the same indexed cover. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct endpoint sections, their common domains and normalizers as actual holomorphic units.
- Prove the quotient and dense-core endpoint identities and align the same cocycles and source.
- Gauge transport does not prove endpoint reversal, equality of zero loci or RH.

### From Theta Averages to a Positive Xi Determinant: Uniform positive models, gauge-invariant obstructions, and a formal-source status atlas — `1da080c60c76`

**conditional-correspondence** · Version 3.1 · `idea:budget-v1`

Paper: [PDF page 30](</Users/local/Desktop/MathematicsLibrary/ReviewQueue/1da080c60c76--Theta_Correlations_Formal_Source_Atlas_v3_1_prerelease.pdf#page=30>) — §14.2, equation (14.3); printed page 27.

Exact PDF SHA-256: `1da080c60c761d9f72d0eca9c33d4c9daea0f3bf9239f7d5b75220542a647b86`.

Paper idea (assistant reading): Preconditioned source error must retain arithmetic tails, gluing, weights, overlap and discarded-label errors.

Proposed interpretation: A supplied complete signed discrepancy decomposition is bounded by the sum of independently supplied component bounds.

Paper hypotheses and scope:

- An actual source comparison and all estimates at every rank; admissible correction radius.

Code: [`reconstruction_error_bound`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean#L36-L65), lines 36–65; Git blob `967215531015cb5ad57c4458b5cc7c7b29df00c0`.

Pinned Lean source inspected against the cited PDF pages; no build or independent kernel audit performed.

Missing bridges and uncertainty:

- The code needs an exact five-term decomposition and five norm estimates; none is obtained from a citation.
- No supplied instantiation identifies the consumer with J_R⁻¹ or matches its five channels to (14.3).
- No decay exponent, all-rank bound, or correction-radius inequality is established here.

### Global No-Disappearance and Boundary Adequacy — `5d78840a4167`

**analogy-only** · Revision 1.1 · `idea:unpublished-v2:5d78840a4167367c`

Paper: [PDF page 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/5d78840a4167--P07-v1.1.pdf#page=6>) — Theorems 2.2–2.3 (P07-T01–T02).

Exact PDF SHA-256: `5d78840a4167367c8515a9f4113cecf178e9891ab9218e6d8653983d37d780ee`.

Paper idea (assistant reading): Compatible orthogonal finite sections of a finite-dimensional source yield a bounded global decoder and convergence of the minimum moduli.

Proposed interpretation: Finite source-preserving aggregation has a nearby Lean identity, but it does not build the paper’s global inverse limit.

Paper hypotheses and scope:

- Finite-dimensional source K, a common Hilbert target, increasing exhaustive orthogonal projections, exact section compatibility and a uniform operator-norm bound.

Code: [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement.encode_aggregate`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L122-L129), lines 122–129; Git blob `41f7a04bb098acfb983e57254e161dad556caa39`.

Exact finite coverage gives exact encoded aggregation; no inverse limit is constructed. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct a common Hilbert target, increasing orthogonal projections, exact compatibility and uniform boundedness.
- Prove convergence using the finite-dimensional source hypothesis; the finite sum identity alone supplies neither the limit decoder nor its positive floor.

### Prime-Complete Logarithmic Frame Faithfulness — `3e667d873ecf`

**analogy-only** · Revision 1.2 · `idea:unpublished-v2:3e667d873ecf5260`

Paper: [PDF page 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3e667d873ecf--P09 (2).pdf#page=8>) — Theorems 4.1–4.3 (P09-T01–T03).

Exact PDF SHA-256: `3e667d873ecf526057217b7a0737b0d4aa4f0be3945e7b7bf333c998c3fe1c32`.

Paper idea (assistant reading): Bessel upper control and positive Gram form do not by themselves ensure a faithful observation on the reconstruction image; a restricted lower frame floor is needed.

Proposed interpretation: The Lean empty-family counterexample makes the upper-bound/lower-reconstruction distinction explicit. It is a scope guard, not the manuscript’s frame equivalence.

Paper hypotheses and scope:

- A finite-dimensional nonzero represented source, an injective reconstruction J with image M, and an independently defined Bessel observation W.
- The claimed equivalences concern W restricted to M; a lower frame bound is not supplied by the Bessel upper bound.

Code: [`EulerP04RH.ResearchObstructions.upper_bessel_does_not_imply_reconstruction`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean#L253-L261), lines 253–261; Git blob `db2cb85bcb679383a4a4b7664fb6fbe644ed2422`.

An empty-family counterexample separates upper Bessel control from lower reconstruction. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Identify the actual P07 image and independently defined prime observation.
- Prove restricted injectivity and a positive lower frame bound, then the finite-prefix/dimension and decoder statements in the correct spaces.
- The finite logarithmic orbit is not Haar orthogonality and no all-window prime completeness theorem follows from this guard.

### Prime-Complete Logarithmic Frame Faithfulness — `7314fd796114`

**analogy-only** · Version 1.0 · `idea:unpublished-v2:7314fd7961144788`

Paper: [PDF page 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7314fd796114--P09.pdf#page=9>) — Theorem 5.2 and Corollary 5.3 (P09-T08–T09).

Exact PDF SHA-256: `7314fd7961144788490a0f8756f0e4b843380fb9ba5599fd313538d123735e04`.

Paper idea (assistant reading): Bessel upper control and positive Gram form do not by themselves ensure a faithful observation on the reconstruction image; a restricted lower frame floor is needed.

Proposed interpretation: The Lean empty-family counterexample makes the upper-bound/lower-reconstruction distinction explicit. It is a scope guard, not the manuscript’s frame equivalence.

Paper hypotheses and scope:

- A finite-dimensional nonzero represented source, an injective reconstruction J with image M, and an independently defined Bessel observation W.
- The claimed equivalences concern W restricted to M; a lower frame bound is not supplied by the Bessel upper bound.

Code: [`EulerP04RH.ResearchObstructions.upper_bessel_does_not_imply_reconstruction`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean#L253-L261), lines 253–261; Git blob `db2cb85bcb679383a4a4b7664fb6fbe644ed2422`.

An empty-family counterexample separates upper Bessel control from lower reconstruction. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Identify the actual P07 image and independently defined prime observation.
- Prove restricted injectivity and a positive lower frame bound, then the finite-prefix/dimension and decoder statements in the correct spaces.
- The finite logarithmic orbit is not Haar orthogonality and no all-window prime completeness theorem follows from this guard.

### Prime-Complete Logarithmic Frame Faithfulness — `7d13a6d60790`

**analogy-only** · Revision 1.1 · `idea:unpublished-v2:7d13a6d60790c964`

Paper: [PDF page 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7d13a6d60790--P09 (1).pdf#page=7>) — Theorem 4.2 (P09-T02).

Exact PDF SHA-256: `7d13a6d60790c9648400b2b46e7681acaae46c17bb6889e186378774a5c529ae`.

Paper idea (assistant reading): Bessel upper control and positive Gram form do not by themselves ensure a faithful observation on the reconstruction image; a restricted lower frame floor is needed.

Proposed interpretation: The Lean empty-family counterexample makes the upper-bound/lower-reconstruction distinction explicit. It is a scope guard, not the manuscript’s frame equivalence.

Paper hypotheses and scope:

- A finite-dimensional nonzero represented source, an injective reconstruction J with image M, and an independently defined Bessel observation W.
- The claimed equivalences concern W restricted to M; a lower frame bound is not supplied by the Bessel upper bound.

Code: [`EulerP04RH.ResearchObstructions.upper_bessel_does_not_imply_reconstruction`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean#L253-L261), lines 253–261; Git blob `db2cb85bcb679383a4a4b7664fb6fbe644ed2422`.

An empty-family counterexample separates upper Bessel control from lower reconstruction. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Identify the actual P07 image and independently defined prime observation.
- Prove restricted injectivity and a positive lower frame bound, then the finite-prefix/dimension and decoder statements in the correct spaces.
- The finite logarithmic orbit is not Haar orthogonality and no all-window prime completeness theorem follows from this guard.

### Quantitative Reconstruction Norm-Floor Compiler — `8090de7e2acf`

**unresolved** · Version 1.2 · `idea:unpublished-v2:8090de7e2acfd435`

Paper: [PDF page 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8090de7e2acf--P06 (3).pdf#page=5>) — Theorem 3.2 (P06-T01); detector quotient floor continues on PDF page 6.

Exact PDF SHA-256: `8090de7e2acfd435f88540286bebcd5bec34169b42fd8f220dc9359d93613dfe`.

Paper idea (assistant reading): A detector floor and detector norm give a reconstruction floor; composition must restrict each factor to the preceding image.

Proposed interpretation: No matching minimum-modulus compiler declaration was established in the inspected maintained modules. The source-error budget is a nearby estimate in the opposite direction, not this lower-bound theorem.

Paper hypotheses and scope:

- Bounded linear factors with norms fixed in advance and nonzero declared source/preceding image.
- A detector pairing floor b and detector norm ceiling B>0; any additional Hodge/transport lower factors must be separately certified.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- Formalize minimum modulus on the declared nonzero image and prove its restricted composition law.
- Supply the actual arithmetic detector, quotient norm and positive transport factors before claiming a nonzero reconstruction floor.

### Quantitative Reconstruction Norm-Floor Compiler — `effab6e7692e`

**unresolved** · Version 1.1 · `idea:unpublished-v2:effab6e7692ecce7`

Paper: [PDF page 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/effab6e7692e--P06 (1).pdf#page=5>) — Theorems 3.1–3.2 (P06-T01–T02).

Exact PDF SHA-256: `effab6e7692ecce7f8c0f4b5dd6c8bcebdfa15503356e672802e033b3b8f2bff`.

Paper idea (assistant reading): A detector floor and detector norm give a reconstruction floor; composition must restrict each factor to the preceding image.

Proposed interpretation: No matching minimum-modulus compiler declaration was established in the inspected maintained modules. The source-error budget is a nearby estimate in the opposite direction, not this lower-bound theorem.

Paper hypotheses and scope:

- Bounded linear factors with norms fixed in advance and nonzero declared source/preceding image.
- A detector pairing floor b and detector norm ceiling B>0; any additional Hodge/transport lower factors must be separately certified.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- Formalize minimum modulus on the declared nonzero image and prove its restricted composition law.
- Supply the actual arithmetic detector, quotient norm and positive transport factors before claiming a nonzero reconstruction floor.

<a id="taxonomy-geometrytopology"></a>

## Geometry and topology

### Projective Equality and Two-Fiber Geometry — `dc23aae7df72`

**unresolved** · Version 1.0 · `idea:unpublished-v2:dc23aae7df721289`

Paper: [PDF page 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/dc23aae7df72--Projective-Equality-and-Two-Fiber-Geometry-Monograph-v1.0.pdf#page=13>) — Theorem 1.3 (Abelian two-fiber quotient).

Exact PDF SHA-256: `dc23aae7df721289b4be31f312512678a48b72a26ddf6bcf01411d49fe0f8a5e`.

Paper idea (assistant reading): The diagonal quotient of a kernel pair is identified with the kernel by taking endpoint difference.

Proposed interpretation: No matching formalization established in this pass.

Paper hypotheses and scope:

- A homomorphism q:A→B of abelian groups; compare its kernel pair modulo simultaneous diagonal translation.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- Formalize the actual fiber product, diagonal action and quotient equivalence with the specified abelian hypotheses. A generic observation-recovery record does not prove this quotient theorem.

### Relative Trace, Ground, Gauge, and Boundary Quotient Stability — `7ca107df41bb`

**analogy-only** · Version 1.0 · `idea:unpublished-v2:7ca107df41bb1142`

Paper: [PDF page 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7ca107df41bb--P08.pdf#page=6>) — Theorem 3.1 (P08-T01).

Exact PDF SHA-256: `7ca107df41bb11423b8a56f83294fb405613edf140d063747942c80e12539d1e`.

Paper idea (assistant reading): Null spaces must be transported correctly before a map descends to a Hilbert quotient, and closed ranges are needed for the stated Hodge/pseudoinverse claims.

Proposed interpretation: The existing rational-Hodge transport theorem only transports surjectivity through a supplied exact linear equivalence. It is not a quotient construction or a closed-range theorem.

Paper hypotheses and scope:

- Closed subspaces N⊆H and M⊆K of the specified Hilbert spaces and a bounded linear T:H→K. The claimed descent criterion is T(N)⊆M.

Code: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), lines 73–75; Git blob `ce90366d81cf18384db557b2d66b3734b33d6f28`.

Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the trace-relative graph domains and aggregate closed null space with the exact norms.
- Prove null annihilation/transport and closed-range conditions. Supply the geometric cycle-class comparison rather than inferring it from dimensions or strings.

### Relative Trace, Ground, Gauge, and Boundary Quotient Stability — `a951ebf04f79`

**analogy-only** · Revision 1.1 · `idea:unpublished-v2:a951ebf04f797d1d`

Paper: [PDF page 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a951ebf04f79--P08 (1).pdf#page=5>) — §3, Definition 3.1 (P08-D02); Theorem 3.2 (P08-T02).

Exact PDF SHA-256: `a951ebf04f797d1d52dd22446d83792a42e621036164ffcc7f643c44c16143d5`.

Paper idea (assistant reading): Null spaces must be transported correctly before a map descends to a Hilbert quotient, and closed ranges are needed for the stated Hodge/pseudoinverse claims.

Proposed interpretation: The existing rational-Hodge transport theorem only transports surjectivity through a supplied exact linear equivalence. It is not a quotient construction or a closed-range theorem.

Paper hypotheses and scope:

- Bounded graph traces and closed differential operators on declared domains; closed exact/coexact or aggregate ranges for the pseudoinverse branch.

Code: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), lines 73–75; Git blob `ce90366d81cf18384db557b2d66b3734b33d6f28`.

Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the trace-relative graph domains and aggregate closed null space with the exact norms.
- Prove null annihilation/transport and closed-range conditions. Supply the geometric cycle-class comparison rather than inferring it from dimensions or strings.

### Ricci Flow with Surgery & The Poincaré Conjecture: Overview — `8199c88c1e77`

**unresolved** · unlabeled version · `idea:unpublished-v2:8199c88c1e77c74c`

Paper: [PDF page 1](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/8199c88c1e77--Perelman_Surgery_Math.pdf#page=1>) — Overview; Ricci flow, singularities and surgery.

Exact PDF SHA-256: `8199c88c1e77c74cc58533cd83eec8b3609f8566a8651100951e2f06edaf9702`.

Paper idea (assistant reading): This overview describes Ricci flow with surgery and Poincaré/Geometrization.

Proposed interpretation: No matching formalization established in this pass.

Paper hypotheses and scope:

- A Ricci-flow/surgery geometric setting as described in the overview; no precise analytic surgery hypotheses are transcribed or formalized in this pass.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- No Ricci-flow PDE, canonical-neighborhood or surgery theorem was established in the inspected Lean modules. Finite heat-mode analogies cannot supply these geometric theorems.

<a id="taxonomy-logicandcomputation"></a>

## Logic and computation

### Decomposition, Recomposition, and the Proof of P ̸= NP — `90632c77bb67`

**unresolved** · unlabeled version · `idea:unpublished-v2:90632c77bb67f087`

Paper: [PDF page 4](</Users/local/Desktop/MathematicsLibrary/LogicAndComputation/90632c77bb67--Resolution_of_the_PNP_Problem__A_Rigorous_Mathematical_Proof (1).pdf#page=4>) — Theorem 2 and its use of §2.3.

Exact PDF SHA-256: `90632c77bb67f0871a65e1ddb9dfee94123618102b74f744da6ec5307d24d75c`.

Paper idea (assistant reading): The manuscript claims that exponential recomposition separates P from NP.

Proposed interpretation: No matching formalization established in this pass.

Paper hypotheses and scope:

- A chosen decomposition/recomposition procedure for NP-complete instances; no universal machine-model lower-bound premise has been supplied.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- The displayed O(2^n) is an algorithmic upper-bound shape, not a lower bound against every polynomial algorithm. Supply a universal model-correct lower-bound theorem; no matching P≠NP Lean declaration was established.

### Fibered Higher-History Authority for Frobenius–Hodge Reconstruction — `eb72e67be7cb`

**analogy-only** · unlabeled version · `idea:unpublished-v2:eb72e67be7cbe0dd`

Paper: [PDF page 19](</Users/local/Desktop/MathematicsLibrary/NumberTheory/eb72e67be7cb--fibered-higher-history-authority.pdf#page=19>) — §7, Definition 7.1 (Fibered higher history, Proposed).

Exact PDF SHA-256: `eb72e67be7cbe0dd77f6ad0c5caa541b0c51779081da79ae634ca46c84ece129`.

Paper idea (assistant reading): The proposed history object retains ordered compositions and higher cells, rather than merely an unordered collection of endpoints.

Proposed interpretation: Lean’s checked append-only list prefix supplies a finite ordered-history fragment only.

Paper hypotheses and scope:

- A declared dependent context and ordered history; higher-dimensional coherence and descent hypotheses are proposed, not constructed by list data.

Code: [`GRWTSK.Logic.FiniteSequences.AppendOnlyHistory.checkPrefix_iff_suffix`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Logic/FiniteSequences/AppendOnlyHistory.lean#L44-L46), lines 44–46; Git blob `0dedfadfff35d08d0361835a68680fd3cd70c91b`.

Boolean ordered-prefix acceptance is equivalent to an exact appended suffix of a list. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the dependent higher-cell carrier, coherences, descent and proof fibration.
- Prove byte-level and execution refinement independently. A list prefix is not a bisimplicial homotopy totalization or a Frobenius–Langlands realization.

### Numerical Validation and Reproducibility of a Modular Proof Framework for the Generalized Riemann Hypothesis — `2b7a45268e2c`

**conditional-correspondence** · unlabeled version · `idea:unpublished-v2:2b7a45268e2c3828`

Paper: [PDF page 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7a45268e2c--A (10).pdf#page=3>) — §3, Numerical Techniques.

Exact PDF SHA-256: `2b7a45268e2c3828bb2f77301c57ee907d99088771ae99b8716c54ab2135d312`.

Paper idea (assistant reading): The manuscript proposes high-precision fixed-point and quadrature checks for zeros and prime-counting functions.

Proposed interpretation: Lean’s finite-cover-and-tail theorem states the missing domain-exhaustion obligation. It does not certify the paper’s numerical runs.

Paper hypotheses and scope:

- A specified computation domain and numerical scheme; the cited page supplies no all-height interval certificate or complete omitted-tail theorem.

Code: [`GRWTSK.Logic.FiniteCoverage.forall_on_of_finite_cover_and_tail`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Logic/FiniteCoverage.lean#L43-L52), lines 43–52; Git blob `744c846e977e06f8dd38962e70e96b47c0149d77`.

Finite coverage plus independently proved local propositions and a full tail theorem cover the declared domain. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Provide validated enclosures and local propositions on an explicit cover of the declared domain.
- Prove the entire omitted tail separately; arbitrary precision or a finite sample does not establish an all-height theorem.

### Numerical Validation and Reproducibility of a Modular Proof Framework for the Generalized Riemann Hypothesis — `6e8e7b6fea13`

**conditional-correspondence** · unlabeled version · `idea:unpublished-v2:6e8e7b6fea13a5da`

Paper: [PDF page 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/6e8e7b6fea13--A (7).pdf#page=3>) — §3, Numerical Techniques.

Exact PDF SHA-256: `6e8e7b6fea13a5da1d48009dd2afa7b3a9af22395cab44334b7d39fdfd81510a`.

Paper idea (assistant reading): The manuscript proposes high-precision fixed-point and quadrature checks for zeros and prime-counting functions.

Proposed interpretation: Lean’s finite-cover-and-tail theorem states the missing domain-exhaustion obligation. It does not certify the paper’s numerical runs.

Paper hypotheses and scope:

- A specified computation domain and numerical scheme; the cited page supplies no all-height interval certificate or complete omitted-tail theorem.

Code: [`GRWTSK.Logic.FiniteCoverage.forall_on_of_finite_cover_and_tail`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Logic/FiniteCoverage.lean#L43-L52), lines 43–52; Git blob `744c846e977e06f8dd38962e70e96b47c0149d77`.

Finite coverage plus independently proved local propositions and a full tail theorem cover the declared domain. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Provide validated enclosures and local propositions on an explicit cover of the declared domain.
- Prove the entire omitted tail separately; arbitrary precision or a finite sample does not establish an all-height theorem.

### Proof-Carrying Symbol–Syntax–Grammar Kernel — `e19a42c2d74c`

**matched-subclaim** · unlabeled version · `idea:unpublished-v2:e19a42c2d74c178f`

Paper: [PDF page 1](</Users/local/Desktop/MathematicsLibrary/LogicAndComputation/e19a42c2d74c--Proof-Carrying Symbol–Syntax–Grammar Kernel.pdf#page=1>) — Executive summary; proposer/trusted-kernel separation.

Exact PDF SHA-256: `e19a42c2d74c178fcd131d11a477fda53423c728cf287421c4503ba7b5b1b442`.

Paper idea (assistant reading): Heuristic syntax proposals acquire authority only through a separately sound checker for the exact claim.

Proposed interpretation: The Lean checker contract separates accept/reject/unknown and proves meaning only for the checker’s accepted exact conclusion.

Paper hypotheses and scope:

- A fixed exact claim semantics, sound local rules/checkers and all declared side conditions.
- Any completion theorem additionally assumes effective descent, recognition equivalence and an authority-preserving backward decoder.

Code: [`GRWTSK.Logic.Inference.CertificateChecker.meaning_of_accepts`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Logic/Inference/RuleSoundness.lean#L97-L105), lines 97–105; Git blob `69bb43bef1f38716e3f5d17aa3b1cee41ac91e57`.

A sound checker proves the meaning of its exact accepted judgment; acceptance is a premise. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Instantiate the judgment semantics, checker and byte parser.
- No neural grammar-learning theorem, Crochemore–Perrin implementation or runtime refinement is supplied by the abstract contract.

### Reconstruction-First Publication Atlas: From Typed Syntax through Descent Grammar to Obstruction Rings — `1113859d6d1f`

**analogy-only** · Version 1.0 · `idea:unpublished-v2:1113859d6d1fe43d`

Paper: [PDF page 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1113859d6d1f--reconstruction-first-publication-atlas.pdf#page=5>) — §1.1–1.2, syntax and grammar boundaries.

Exact PDF SHA-256: `1113859d6d1fe43d336e1350d390564c03133b8545a06494b5dd0c50d979f5f0`.

Paper idea (assistant reading): The publication atlas requires typed symbols and explicit reconstruction, detector, comparator and provenance data before downstream inference.

Proposed interpretation: Lean sound-rule composition is a related finite inference contract; the atlas is a roadmap, not a proof that its proposed arithmetic objects exist.

Paper hypotheses and scope:

- A fixed exact claim semantics, sound local rules/checkers and all declared side conditions.
- Any completion theorem additionally assumes effective descent, recognition equivalence and an authority-preserving backward decoder.

Code: [`GRWTSK.Logic.Inference.grounded_rules_meaning`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Logic/Inference/RuleSoundness.lean#L62-L75), lines 62–75; Git blob `69bb43bef1f38716e3f5d17aa3b1cee41ac91e57`.

Grounded finite support and sound rule/side-condition premises yield the exact judgment meaning. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Instantiate all typed maps and their semantic side conditions.
- Provide actual detector and source-recognition theorems; a workflow or publication order does not discharge them.

### Sustained Expression and Interstitial Completion — `655492306cf5`

**conditional-correspondence** · unlabeled version · `idea:unpublished-v2:655492306cf582d5`

Paper: [PDF page 32](</Users/local/Desktop/MathematicsLibrary/NumberTheory/655492306cf5--Sustained_Expression_and_Interstitial_Completion.pdf#page=32>) — Theorem 10.2 (Conservative completion theorem).

Exact PDF SHA-256: `655492306cf582d5b66125a8ca058cda438d8682d4fccaf9da298bccfec91bb2`.

Paper idea (assistant reading): Completion requires checked local fillers, descent, protected-semantics equivalence and a backward decoder.

Proposed interpretation: Lean’s sound-checker theorem covers only the exact accepted-claim component of this larger conditional completion architecture.

Paper hypotheses and scope:

- A fixed exact claim semantics, sound local rules/checkers and all declared side conditions.
- Any completion theorem additionally assumes effective descent, recognition equivalence and an authority-preserving backward decoder.

Code: [`GRWTSK.Logic.Inference.CertificateChecker.meaning_of_accepts`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Logic/Inference/RuleSoundness.lean#L97-L105), lines 97–105; Git blob `69bb43bef1f38716e3f5d17aa3b1cee41ac91e57`.

A sound checker proves the meaning of its exact accepted judgment; acceptance is a premise. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Formalize effective descent, recognition equivalence and maximality in the declared reachable-state order.
- Provide the authority-preserving backward decoder; acceptance alone is not completeness, maximality or an off-critical exclusion theorem.

### The Cache–Potential Hypothesis: Certified Residual Geometry, Boundary Factorization, and Cache-Amortized Computation — `b7798efb57d0`

**matched-subclaim** · unlabeled version · `idea:unpublished-v2:b7798efb57d0b33a`

Paper: [PDF page 4](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/b7798efb57d0--cache_potential_hypothesis.pdf#page=4>) — §2.1, Definition 2.2; theorem 2.1 provides the preceding predicate-descent criterion.

Exact PDF SHA-256: `b7798efb57d0b33a332d8e426673ee587836f66da076b7be4c4f1423378ad257`.

Paper idea (assistant reading): A retained shadow and residual must recover the declared task profile; exact source recovery is stronger.

Proposed interpretation: The Lean sufficient-representation structure stores an observation family, compression and exact recovery equations. This matches the task-conservative data contract, without constructing the representation.

Paper hypotheses and scope:

- Declared source X, shadow map P, retained residual r, task family Q and a decoder recovering exactly the task profile.

Code: [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ObservationFactorization.SufficientRepresentation`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/RecoverableObservationRepresentations.lean#L20-L25), lines 20–25; Git blob `cf105a90af920f423bb43451c430544b4f797600`.

Abstract observation compression with supplied recovery equations; no representation is constructed. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Instantiate the carrier with shadow–residual pairs and identify the same task family.
- The predicate-descent iff, bit lower bound, geometric lifting and amortized query bounds are not proved by this structure.

<a id="taxonomy-numbertheory"></a>

## Number theory

### A Universal Framework for Residue Suppression and Critical Line Alignment of L-Functions — `1a0dc300601a`

**analogy-only** · unlabeled version · `idea:unpublished-v2:1a0dc300601a5d3a`

Paper: [PDF page 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1a0dc300601a--B (7).pdf#page=2>) — §2.1, Proposition 1 (Residue Symmetry).

Exact PDF SHA-256: `1a0dc300601a5d3a2fa42ef3cbd2a3f4601ebfadc5b3cb463292158a016be740`.

Paper idea (assistant reading): The manuscript infers off-line residue vanishing from functional-equation symmetry.

Proposed interpretation: Lean proves that nontrivial Riemann zeta zeros are transported by reflection. This records a symmetry subclaim in a narrower source, not off-line vanishing.

Paper hypotheses and scope:

- An L-function with the asserted functional-equation/contragredient normalization; the meaning of residue versus zero needs separate source verification.

Code: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), lines 74–95; Git blob `5f465139ee895a99b79af84ee0866aa5f637bdfa`.

The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- General automorphic L-functions, residues of L versus poles of its logarithmic derivative, and contragredient normalization must first be defined consistently.
- Symmetry permits paired off-line locations. A separate exclusion or positivity theorem is needed; reflection alone does not imply support on the critical line.

### A Universal Framework for Residue Suppression and Critical Line Alignment of L-Functions — `b028d25bef27`

**analogy-only** · unlabeled version · `idea:unpublished-v2:b028d25bef27bdc3`

Paper: [PDF page 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b028d25bef27--B (5).pdf#page=2>) — §2.1, Proposition 1 (Residue Symmetry).

Exact PDF SHA-256: `b028d25bef27bdc3a1f2e8deb4eaaf3228cce7a2d6418e44e85de891df6ed5e2`.

Paper idea (assistant reading): The manuscript infers off-line residue vanishing from functional-equation symmetry.

Proposed interpretation: Lean proves that nontrivial Riemann zeta zeros are transported by reflection. This records a symmetry subclaim in a narrower source, not off-line vanishing.

Paper hypotheses and scope:

- An L-function with the asserted functional-equation/contragredient normalization; the meaning of residue versus zero needs separate source verification.

Code: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), lines 74–95; Git blob `5f465139ee895a99b79af84ee0866aa5f637bdfa`.

The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- General automorphic L-functions, residues of L versus poles of its logarithmic derivative, and contragredient normalization must first be defined consistently.
- Symmetry permits paired off-line locations. A separate exclusion or positivity theorem is needed; reflection alone does not imply support on the critical line.

### A01: Period-Anchored Automorphic Observation and Cohomological Left Inversion — `9884a6a5efb7`

**conditional-correspondence** · Revision 1.3 · `idea:unpublished-v2:9884a6a5efb7ed3e`

Paper: [PDF page 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/9884a6a5efb7--A01-v1.3.pdf#page=12>) — Theorem 6.1 (A01-T07).

Exact PDF SHA-256: `9884a6a5efb7ed3ed5664efec96e84251f7d00d459da75ec33d9952d2650a2f1`.

Paper idea (assistant reading): Period observation must retain the represented source; a later faithful period bank cannot repair a kernel in the source-to-automorphic transfer.

Proposed interpretation: The bounded encoder/decoder interface requires an actual left inverse. It is a possible target for a faithful composite, not a construction of the automorphic transfer.

Paper hypotheses and scope:

- Pinned arithmetic quotient and represented source; a bounded source-to-automorphic transfer and the declared period bank.
- Kernel preservation requires the period bank to be faithful on the transfer image; actual construction remains unproved.

Code: [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement.Code.decode_encode_apply`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L91-L93), lines 91–93; Git blob `41f7a04bb098acfb983e57254e161dad556caa39`.

A bounded encoder/decoder with an assumed left inverse recovers its source. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the actual prime-path quotient, cochain transfer and automorphic realization with their domains and normalization.
- Prove that the selected period composite has a bounded left inverse on the represented source. A left inverse on an added external witness factor does not prove faithfulness of the original arithmetic transfer.
- The four PDF revisions have separately inspected locators; their different external-product and canonical-transfer claims are not identified.

### A01: Period-Anchored Automorphic Observation and Cohomological Left Inversion — `cbbfa2c78fda`

**conditional-correspondence** · Version 1.0 · `idea:unpublished-v2:cbbfa2c78fda23e0`

Paper: [PDF page 11](</Users/local/Desktop/MathematicsLibrary/NumberTheory/cbbfa2c78fda--A01.pdf#page=11>) — Theorem 4.4 (A01-T04).

Exact PDF SHA-256: `cbbfa2c78fda23e05b1c6e457eebdf033f1cca66d3ba4d9ebd9d4f18f3948a05`.

Paper idea (assistant reading): An independently fixed nonzero automorphic witness with a nonzero period vector gives an explicit left inverse for an external-product observation.

Proposed interpretation: The bounded encoder/decoder interface requires an actual left inverse. It is a possible target for a faithful composite, not a construction of the automorphic transfer.

Paper hypotheses and scope:

- A fixed automorphic cohomology witness η and a period vector p≠0 in the declared finite period bank; the observation is defined on the external-product source.

Code: [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement.Code.decode_encode_apply`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L91-L93), lines 91–93; Git blob `41f7a04bb098acfb983e57254e161dad556caa39`.

A bounded encoder/decoder with an assumed left inverse recovers its source. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Identify the bounded external-product map with the Lean encoder/decoder and prove the same normed-space recovery equation.
- A left inverse on an added automorphic witness factor does not construct or prove injectivity of the original prime-path-to-automorphic transfer.
- Do not transfer the canonical-transfer conclusions of revisions 1.1–1.3 to this distinct version 1.0.

### A01: Period-Anchored Automorphic Observation and Cohomological Left Inversion — `cda859bfce64`

**conditional-correspondence** · Revision 1.2 · `idea:unpublished-v2:cda859bfce642e94`

Paper: [PDF page 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/cda859bfce64--A01-v1.2 (1).pdf#page=6>) — Definition 2.2 (A01-D02).

Exact PDF SHA-256: `cda859bfce642e9454bd9d357d79a46c329546da797ab255e65936b0ab64bafa`.

Paper idea (assistant reading): Period observation must retain the represented source; a later faithful period bank cannot repair a kernel in the source-to-automorphic transfer.

Proposed interpretation: The bounded encoder/decoder interface requires an actual left inverse. It is a possible target for a faithful composite, not a construction of the automorphic transfer.

Paper hypotheses and scope:

- Pinned arithmetic quotient and represented source; a bounded source-to-automorphic transfer and the declared period bank.
- Kernel preservation requires the period bank to be faithful on the transfer image; actual construction remains unproved.

Code: [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement.Code.decode_encode_apply`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L91-L93), lines 91–93; Git blob `41f7a04bb098acfb983e57254e161dad556caa39`.

A bounded encoder/decoder with an assumed left inverse recovers its source. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the actual prime-path quotient, cochain transfer and automorphic realization with their domains and normalization.
- Prove that the selected period composite has a bounded left inverse on the represented source. A left inverse on an added external witness factor does not prove faithfulness of the original arithmetic transfer.
- The four PDF revisions have separately inspected locators; their different external-product and canonical-transfer claims are not identified.

### A01: Period-Anchored Automorphic Observation and Cohomological Left Inversion — `f4ec0ff737d2`

**conditional-correspondence** · Revision 1.1 · `idea:unpublished-v2:f4ec0ff737d21370`

Paper: [PDF page 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f4ec0ff737d2--A01-v1.1.pdf#page=6>) — Definition 2.3 (A01-D03).

Exact PDF SHA-256: `f4ec0ff737d2137021cbbd9dd942c2c76c6bbf47d85e5281ec10c4f397996b21`.

Paper idea (assistant reading): Period observation must retain the represented source; a later faithful period bank cannot repair a kernel in the source-to-automorphic transfer.

Proposed interpretation: The bounded encoder/decoder interface requires an actual left inverse. It is a possible target for a faithful composite, not a construction of the automorphic transfer.

Paper hypotheses and scope:

- Pinned arithmetic quotient and represented source; a bounded source-to-automorphic transfer and the declared period bank.
- Kernel preservation requires the period bank to be faithful on the transfer image; actual construction remains unproved.

Code: [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement.Code.decode_encode_apply`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L91-L93), lines 91–93; Git blob `41f7a04bb098acfb983e57254e161dad556caa39`.

A bounded encoder/decoder with an assumed left inverse recovers its source. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Construct the actual prime-path quotient, cochain transfer and automorphic realization with their domains and normalization.
- Prove that the selected period composite has a bounded left inverse on the represented source. A left inverse on an added external witness factor does not prove faithfulness of the original arithmetic transfer.
- The four PDF revisions have separately inspected locators; their different external-product and canonical-transfer claims are not identified.

### ASBN–P04: Exact Pickup, Closure, and a Universal-Interface Obstruction — `cf1c7cee16c0`

**matched-subclaim** · unlabeled version · `idea:unpublished-v2:cf1c7cee16c00c5e`

Paper: [PDF page 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/cf1c7cee16c0--document (1).pdf#page=4>) — §4, Theorem 4; displayed finite induction bound.

Exact PDF SHA-256: `cf1c7cee16c00c5eca701b9a1c64a307a1ef29425cbd014a3be88e9b29733222`.

Paper idea (assistant reading): An explicit amortized recurrence with nonnegative masses and common constants gives an exponential-in-total-mass finite bound.

Proposed interpretation: With K=(1+T)^q, ASBNP04.amortized_iteration is the displayed finite induction step. No nonnegativity of the intermediate potential is required.

Paper hypotheses and scope:

- At fixed T≥0, masses ω_j≥0 and common C,q≥0; set K=(1+T)^q≥0.
- The potential obeys φ_(j+1)≤exp(Cω_j)φ_j+Cω_j K. The finite induction does not require intermediate φ_j≥0.

Code: [`ASBNP04.amortized_iteration`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/Analysis/Asymptotics/MassWeightedRecurrence.lean#L28-L72), lines 28–72; Git blob `fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5`.

Finite amortized induction with C,K and all masses nonnegative; the potential itself may be signed. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- The code assumes the recurrence; it does not construct the actual source-derived reserve or an admissible full-prime chain.
- The harmonic-mass estimate, polynomial initial bound, terminal reserve nonnegativity and transfer to P04 must be supplied to close the whole paper theorem.
- The paper’s universal-interface obstruction is not removed by this conditional finite lemma.

### Anchored Sieve Carpets and Lifted-Exponent Geometry — `808a5117cf67`

**analogy-only** · Version 1.0 · `idea:unpublished-v2:808a5117cf67204d`

Paper: [PDF page 21](</Users/local/Desktop/MathematicsLibrary/NumberTheory/808a5117cf67--anchored-sieve-carpets-lifted-exponent-geometry.pdf#page=21>) — §3.2, Theorem 3.2 (Constellation packing count).

Exact PDF SHA-256: `808a5117cf67204d74c667c41f628b1b5fbc5779f3d4c61cc7ec412625d7549e`.

Paper idea (assistant reading): A finite sieve constellation has local allowed residue counts whose product is assembled by CRT.

Proposed interpretation: Lean has the concrete shift-two compatibility criterion and residue counting. This is a narrow arithmetic component, not the general constellation product.

Paper hypotheses and scope:

- A finite set of offsets, a finite primorial and local excluded-residue counts ν_p; CRT is applied to pairwise coprime prime moduli.

Code: [`GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT.naturalSolution_iff_compatible`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean#L160-L168), lines 160–168; Git blob `55c9643b4704fc3101244eb2c7c22a165083edfa`.

For positive d,e, a shift-two divisibility solution exists iff gcd(d,e) divides 2. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Prove the all-prime, arbitrary-constellation CRT product in the same anchored interval conventions.
- Pay truncation/boundary charges and prove the separate dispersion, Green geometry and determinant-reconstruction estimates; local residue capacity does not establish prime distribution or RH.

### Arithmetic Positivity and the Riemann Xi Function: From prime symbols and Stieltjes moments to positive spectra and finite obstructions — `187a244631f9`

**conditional-correspondence** · Version 4.0 · `idea:unpublished-v2:187a244631f9e4f9`

Paper: [PDF page 20](</Users/local/Desktop/MathematicsLibrary/NumberTheory/187a244631f9--Arithmetic_Positivity_and_Riemann_Xi_v4_prerelease.pdf#page=20>) — §8.3, Theorem 8.3 (N003).

Exact PDF SHA-256: `187a244631f9e4f9e505729219a08d9218d5c34e7cca8a6f4b80fb41f4dde65f`.

Paper idea (assistant reading): The manuscript’s unchanged logarithmic xi coefficients require two positive Hankel towers and a source-specific Stieltjes/analytic-continuation argument.

Proposed interpretation: The abstract Lean positivity criterion can express a proved positivity iff RH theorem, but no term supplying this manuscript’s Stieltjes criterion has been established.

Paper hypotheses and scope:

- The independently fixed entire xi source and its logarithmic coefficients p_r.
- Condition H requires nonnegativity of both ordinary and shifted Hankel families at every finite order; the manuscript does not supply the arithmetic proof of H.

Code: [`GRWTSK.RiemannHypothesis.ExactPositivityCriterion`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L165-L166), lines 165–166; Git blob `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006`.

A proof-carrying record requires positivity of the same target form iff canonical RH; it does not construct this proof. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Define the ordinary and shifted logarithmic Hankel forms from the independently fixed xi coefficients and reconcile both towers with the chosen test type.
- Prove the representing measure, compact support and holomorphic slit-plane continuation, including the converse.
- Distinguish vector-state moments from ordinary trace powers and integer spectral multiplicities. Positive raw theta moments do not supply the logarithmic positivity towers.

### From Theta Averages to a Positive Xi Determinant: Uniform positive models, gauge-invariant obstructions, and a formal-source status atlas — `1da080c60c76`

**conditional-correspondence** · Version 3.1 · `idea:positive-limit-v1`

Paper: [PDF page 20](</Users/local/Desktop/MathematicsLibrary/ReviewQueue/1da080c60c76--Theta_Correlations_Formal_Source_Atlas_v3_1_prerelease.pdf#page=20>), [PDF page 29](</Users/local/Desktop/MathematicsLibrary/ReviewQueue/1da080c60c76--Theta_Correlations_Formal_Source_Atlas_v3_1_prerelease.pdf#page=29>), [PDF page 30](</Users/local/Desktop/MathematicsLibrary/ReviewQueue/1da080c60c76--Theta_Correlations_Formal_Source_Atlas_v3_1_prerelease.pdf#page=30>) — Conjecture 10.2; Conjecture 14.1; §14.1 equation (14.2).

Exact PDF SHA-256: `1da080c60c761d9f72d0eca9c33d4c9daea0f3bf9239f7d5b75220542a647b86`.

Paper idea (assistant reading): Compatible positive models must match the actual arithmetic source at all orders; finite success does not close RH.

Proposed interpretation: The Lean endpoint requires a positive approximating family and an independently proved positivity equivalence for the same target form.

Paper hypotheses and scope:

- All-orders compatibility, actual-source normalization, and an exact RH criterion.

Code: [`riemannHypothesis_of_positiveGramLimit`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L187-L194), lines 187–194; Git blob `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006`.

Pinned Lean source inspected against the cited PDF pages; no build or independent kernel audit performed.

Missing bridges and uncertainty:

- Paper trace-power/determinant convergence is not the code’s polarized real-form comparison. A translation remains unconstructed.
- WeilCriterionForZeta includes an actual proof of positivity iff RH; strings or paper claims cannot fill that field.
- The actual arithmetic approximants, all-orders error limits, and matching test space/normalization are unresolved.

### Hensel Lifting on p-Adic Fibers: A Unified Grammar of Algebraic Series, Weil–Petersson Geometry, and Suzuki Screw Convolution — `dbf2a57184a8`

**matched-subclaim** · unlabeled version · `idea:unpublished-v2:dbf2a57184a8fca2`

Paper: [PDF page 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/dbf2a57184a8--unified_hensel.pdf#page=4>) — §1.2, elementary arithmetic certificate; general grammar specialization is Unified theorem U5 on PDF page 12.

Exact PDF SHA-256: `dbf2a57184a8fca2f064af37e03a8075f2755bfecd06b291c2d0d4f26956806b`.

Paper idea (assistant reading): A simple root lifts by solving a derivative correction congruence at each prime-power level.

Proposed interpretation: The Lean theorem gives a unique correction digit for x²+1 at an odd prime and k≥1. This is a concrete specialization of the finite lifting mechanism.

Paper hypotheses and scope:

- A prime p, polynomial f over the stated p-adic ring, an old root modulo p and nonvanishing derivative modulo p.
- The Lean specialization additionally fixes f=x²+1, p≠2 and k≥1.

Code: [`GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift.quadraticLiftCoefficient_existsUnique`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean#L172-L179), lines 172–179; Git blob `96f8f536824b122e6b999c45656b81a3463a2d6f`.

For an odd prime, k≥1 and an old root of x²+1 modulo p^k, there is a unique canonical correction digit. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Identify f(x)=x²+1 and retain odd primality, k≥1 and the old root divisibility.
- General proper polynomial systems, complete-ring limits, naturality, quadratic precision, Weil–Petersson expectation and Suzuki screw compatibility remain separate bridges.

### The Topology of the Finite: Arithmetic Positivity and Boundary Confinement — `3843446bb981`

**conditional-correspondence** · Edition 0.0.1 · `idea:unpublished-v2:3843446bb981f345`

Paper: [PDF page 15](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3843446bb981--manuscript.pdf#page=15>) — §4.3, Theorem 4.3 (N003).

Exact PDF SHA-256: `3843446bb981f345cf52499f740f6c8abbbb7f3eb583a5948b8c6d150651a6d9`.

Paper idea (assistant reading): The manuscript’s unchanged logarithmic xi coefficients require two positive Hankel towers and a source-specific Stieltjes/analytic-continuation argument.

Proposed interpretation: The abstract Lean positivity criterion can express a proved positivity iff RH theorem, but no term supplying this manuscript’s Stieltjes criterion has been established.

Paper hypotheses and scope:

- The independently fixed entire xi source and its logarithmic coefficients p_r.
- Condition H requires nonnegativity of both ordinary and shifted Hankel families at every finite order; the manuscript does not supply the arithmetic proof of H.

Code: [`GRWTSK.RiemannHypothesis.ExactPositivityCriterion`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L165-L166), lines 165–166; Git blob `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006`.

A proof-carrying record requires positivity of the same target form iff canonical RH; it does not construct this proof. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Define the ordinary and shifted logarithmic Hankel forms from the independently fixed xi coefficients and reconcile both towers with the chosen test type.
- Prove the representing measure, compact support and holomorphic slit-plane continuation, including the converse.
- Distinguish vector-state moments from ordinary trace powers and integer spectral multiplicities. Positive raw theta moments do not supply the logarithmic positivity towers.

### The Topology of the Finite: Arithmetic Positivity and Boundary Confinement — `7a8aff52b8b6`

**conditional-correspondence** · Version 5.0 · `idea:unpublished-v2:7a8aff52b8b6a6ad`

Paper: [PDF page 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7a8aff52b8b6--The_Topology_of_the_Finite_v5_prerelease.pdf#page=9>) — §4.3, Theorem 4.3 (N003).

Exact PDF SHA-256: `7a8aff52b8b6a6ada935881a833f0a6a7c9b62a71e3a0b9c9b7fd4f18f8bb918`.

Paper idea (assistant reading): The manuscript’s unchanged logarithmic xi coefficients require two positive Hankel towers and a source-specific Stieltjes/analytic-continuation argument.

Proposed interpretation: The abstract Lean positivity criterion can express a proved positivity iff RH theorem, but no term supplying this manuscript’s Stieltjes criterion has been established.

Paper hypotheses and scope:

- The independently fixed entire xi source and its logarithmic coefficients p_r.
- Condition H requires nonnegativity of both ordinary and shifted Hankel families at every finite order; the manuscript does not supply the arithmetic proof of H.

Code: [`GRWTSK.RiemannHypothesis.ExactPositivityCriterion`](https://github.com/grwtsk/math/blob/fa27fde9b4df2aedd203679e832c0956c3e12889/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L165-L166), lines 165–166; Git blob `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006`.

A proof-carrying record requires positivity of the same target form iff canonical RH; it does not construct this proof. Pinned source inspected; no compilation or independent kernel audit performed in this mapping pass.

Missing bridges and uncertainty:

- Define the ordinary and shifted logarithmic Hankel forms from the independently fixed xi coefficients and reconcile both towers with the chosen test type.
- Prove the representing measure, compact support and holomorphic slit-plane continuation, including the converse.
- Distinguish vector-state moments from ordinary trace powers and integer spectral multiplicities. Positive raw theta moments do not supply the logarithmic positivity towers.

<a id="taxonomy-reviewqueue"></a>

## Review queue

### AGI Lattice: A Formal Mathematical Presentation — `fa54e13e56c5`

**unresolved** · unlabeled version · `idea:unpublished-v2:fa54e13e56c5df07`

Paper: [PDF page 1](</Users/local/Desktop/MathematicsLibrary/LogicAndComputation/fa54e13e56c5--AGI_Lattice__A_Formal_Mathematical_Presentation__1_ (1).pdf#page=1>) — §2.1–2.3 and §4.1–4.3.

Exact PDF SHA-256: `fa54e13e56c5df07c0b53391d96a221858d765c8b3f1b5c2d689c27b151e69c6`.

Paper idea (assistant reading): The visible AGI Lattice page repeats framework/definition/theorem placeholders.

Proposed interpretation: No matching formalization established in this pass.

Paper hypotheses and scope:

- No substantive theorem hypotheses were established from the cited asset/page.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- No precise mathematical claim sufficient for a source-to-declaration correspondence was established from the inspected page. No AGI theorem is inferred from the title.

### Formal Proof of the Convergence and Properties of the Riemann Zeta Function — `f4ccd06d0e98`

**unresolved** · unlabeled version · `idea:unpublished-v2:f4ccd06d0e9849ae`

Paper: [PDF page 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f4ccd06d0e98--Formal_Proof_of_the_Convergence_and_Properties_of_the_Riemann_Zeta_Function (2).pdf#page=3>) — Matrix Definition and Structure.

Exact PDF SHA-256: `f4ccd06d0e9849ae167e1442a9071f8c91b863e5b8ef952a55669300b3aee309`.

Paper idea (assistant reading): The manuscript places the constant-one sequence in ℓ² while defining a diagonal operator model.

Proposed interpretation: No matching formalization established in this pass.

Paper hypotheses and scope:

- The source asserts an ℓ² setting and uses the constant-one infinite sequence; that vector does not satisfy the square-summability requirement.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- The constant-one infinite sequence is not square summable. Repair the source domain/vector before an ℓ² operator correspondence can be made. No infinite matrix or zeta-convergence proof is inferred.

### abc — `f9ac0ec9866f`

**unresolved** · unlabeled version · `idea:unpublished-v2:f9ac0ec9866f2099`

Paper: [PDF page 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f9ac0ec9866f--Formalized_Growth_Bound_for_Prime_Factors_in_Coprime_Sums_and_the_ABC_Conjecture (1).pdf#page=1>) — Title and Introduction.

Exact PDF SHA-256: `f9ac0ec9866f2099fc3e74a5bf21b185162e6ebdabc73532f4d46985f4be15b1`.

Paper idea (assistant reading): The abc asset contains a title and Introduction heading.

Proposed interpretation: No matching formalization established in this pass.

Paper hypotheses and scope:

- No substantive theorem hypotheses were established from the cited asset/page.

Code: **no matching declaration established in this pass**.

Missing bridges and uncertainty:

- No substantive theorem statement was established in this one-page asset. Do not substitute an abc conjecture theorem merely because the title says abc.
