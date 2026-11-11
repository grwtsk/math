# RP-OC-04: residual balls and cofinal parameter coverage

Local attribution: grwtsk contributors.

## Maintained source and exact identities

This is source-local mathematical provenance, not an execution receipt or a new frontier claim. Coordinate through [math#1800](https://github.com/grwtsk/math/issues/1800). The maintained sources are `GRWTSK/FunctionalAnalysis/ResidualBallCover.lean` and `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceFiniteCoverReturn.lean`. Each theorem has an individual adjacent record. They are local consequences and conditional consumers, not claimed new arithmetic theorems.

Inspected source base: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. Preparation was reconciled first against `bd54902a7de572ca1d0405ff94192814f28050d4` (Program 6 rational Hermite certificates), then against `743f9df78e1f48936894f4cf6339cf61b5dfeaaf` (Program 3 finite Hermite negative-index counting). Neither changed the sources, instructions or dependencies used here. The final publication parent and reachability observations are recorded in #1800. Lean pin: `leanprover/lean4:v4.34.1`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

| Source | SHA-256 | Git blob |
| --- | --- | --- |
| `ResidualBallCover.lean` | `6e2b5d25526e79c8a47b4cc9f15866b1dd81de09e9a12725f51e7bc0c97d1a21` | `26ab39c64432097c1c31fd50e5486f2e2c53c0c1` |
| `ResonanceFiniteCoverReturn.lean` | `167d8c9de9c9897ec9800ea285d8f29c9b63a434ab8c717223f3ba5a02bb0649` | `5198065850874729c1c1568acc1cd5c801b30ba0` |

## Primary comparison, November 11, 2026

- The existing [TwoSidedResidualInverse](../TwoSidedResidualInverse.lean), blob `deaa49131a022a49d5d21bf3b3022040b2e1b6c7`, supplies `isUnit_of_approximation` and `exists_inverse_bound_of_approximation`. Its Neumann construction is reused, not copied or assumed verified anew.
- Mathlib contributors, [Topology/Compactness/Compact.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Compactness/Compact.lean), blob `30fc9322f4ce78f847a592b0035bf5edfc65f33c`: `IsCompact.elim_finite_subcover` and `IsCompact.inter_right`. These provide classical compactness, not an effective certificate-search termination bound.
- Mathlib contributors, [Topology/MetricSpace/ProperSpace.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/MetricSpace/ProperSpace.lean): `ProperSpace.isCompact_closedBall`. The complex plane is the parameter space; arbitrary operator algebras are not assumed locally compact.
- Existing `WeilDenseCertificateReduction.lean`, blob `e84a5fded7bb33672f1c80d3e729bb28b2aee83e`, owns `PrimitiveDirichletSource`, its continued `lFunction`, `SatisfiesGRH`, `PrimitiveDirichletGRH`, and the modulus-one zeta source. The present module imports those exact objects rather than inventing another target.
- Existing `ResonanceDeterminantReturn.lean`, blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`, owns `ExactReturnOn` and its zero-transfer theorem. It does not define a Fredholm determinant.

Program 8's new `SpectralProductDivisorReturn.lean` (blob `a25fc237c478579e197498e1447b7a506e463f9f`) now consumes Program 4's actual analytic-order transfer. Program 6's `ZeroDivisorHermiteReturn.lean` (blob `3db00cc8c884acfe5ce8db3d8d79ceaf05fcfac0`) adds the finite Hermite converse while retaining cofinal coverage as a premise. These sources were read as cross-program comparisons, not imported unnecessarily. Program 9 sampling-obstruction additions were identified in the commit comparison; finite samples are not a replacement for the variation premise below. The comparison is scoped, not a corpus-wide novelty or proof audit. Novelty remains UNASSESSED; none is asserted.

## Complete primary argument

Write a(x)=I-K(x) in a complete normed ring. A cell supplies a center c, radius r>0, center approximation a0, proposed inverse R, error e>=0 and slope L>=0. It must supply BOTH `norm(a(c)-a0)<=e` and `norm(a(x)-a(c))<=L*dist(x,c)` for every x in the closed ball. These are statements about the true full-space operator.

For every point of the cell, the triangle inequality gives `norm(a(x)-a0)<=e+L*r=:E`. Consequently the left defect is at most `qL=norm(1-R*a0)+norm(R)*E`, and the right defect at most `qR=norm(1-a0*R)+E*norm(R)`. Under qL<1 and qR<1, the imported two-sided Neumann argument constructs a unit a(x). When norm(1)=1, it constructs b with a(x)b=ba(x)=1 and `norm(b)<=norm(R)/(1-qL)`. The denominator is strictly positive, so every cell bound is nonnegative.

A finite cover chooses such a cell for each point of S. Its inverse bound is no larger than the sum of all nonnegative cell bounds. This coarse uniform bound remains meaningful when the domain or cover is empty. A supplied open cover of a compact S has a finite subcover; enlarging the selected open balls to their corresponding closed balls preserves coverage and makes the cell theorems applicable. Compactness DOES NOT supply an open cover of valid cells, arithmetic bounds, rational enclosure producers, a computable subcover, or a finite search time.

For a further full-space approximation b0 at x with `norm(b0-a(x))<=delta`, the total error becomes E+delta. Invertibility transfers only when both updated budgets remain strictly below one. Independently, if up=1 and qv=1, multiplication in its original order gives `u*(q-p)*v=u-v`; submultiplicativity gives `norm(u-v)<=norm(u)*norm(p-q)*norm(v)`. This is quantitative inverse comparison, not a claim about arbitrary spectral convergence, contour counts, or unbounded generators.

For n>=0 define W_n by `norm(s)<=n`, `1<=n*Re(s)`, `1<=n*(1-Re(s))`, and `1<=n*abs(Re(s)-1/2)`. Each W_n is a closed subset of a compact complex ball. Its inequalities force 0<Re(s)<1 and Re(s)!=1/2. They are monotone in n on this domain. For any off-critical open-strip s, choose an integer n strictly larger than `norm(s)+1/Re(s)+1/(1-Re(s))+1/abs(Re(s)-1/2)`. Every summand is nonnegative and each denominator positive. Multiplying the three reciprocal inequalities establishes membership in W_n. Thus the windows exhaust all such parameters without consulting a zero list.

For a primitive source, a hypothetical off-critical zero lies in some W_n and hence in a supplied residual ball. That ball gives invertibility of I-K(s). The separately supplied genuine determinant theorem gives D(s)!=0. The separately supplied source correspondence makes F(s)=0 on the exact return domain, and D=exp(h)F gives D(s)=0, a contradiction. Quantifying this per-source implication over the existing source type yields the existing PrimitiveDirichletGRH. Source-dependent complete normed operator algebras are allowed. The modulus-one component is inherited, not excluded. The target is exactly the existing open-strip proposition; boundary or completed-source equivalences are not newly established.

## Exact controls and remaining suppliers

The concrete cell a(z)=1-z, c=0, r=1/4, a0=R=1, e=0, L=1 has qL=qR=1/4 and inverse bound 4/3. Its variation bound follows from `a(z)-a(0)=-z`. At z=1 the family is singular, so a non-strict residual bound of one cannot establish invertibility. These are synthetic scalar controls, not arithmetic L-functions, executed numerical certificates, or actual off-critical zeros.

The existing Program 4 shear control explains why determinant separation does not supply inverse bounds. Program 9 addresses why a finite sampling list does not establish source identity or zero exclusion. The new cells explicitly require information between samples. A finite matrix preconditioner must be given a justified full-space lift/complement; no such lift is provided. All cells in one application inhabit the same declared normed ring.

Still required: an arithmetic K built without prescribed zeros; its trace ideal and actual determinant convention; the normalized arithmetic identity and source/pole correspondence; full-space center error and variation enclosures; finite covering certificates for EVERY window and primitive source; effective certificate generation/termination; and unbounded-domain, contour and global spectral-comparison theorems where needed. Conductor, gamma/parity, all prime powers and both applicable pole orientations remain upstream obligations, not discarded terms. The earlier AC_chi growth estimate is unchanged. No GRH proof, arithmetic realization, positivity theorem or general no-spectral-pollution theorem is asserted.

## Reproduction specification and evidence

In a clean canonical math checkout at the publication commit, retain the pinned toolchain and manifest and run the two explicit targets:

```sh
lake build GRWTSK.FunctionalAnalysis.ResidualBallCover
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceFiniteCoverReturn
```

Audit at least `ResidualBall.exists_inverse_bound`, `exists_finite_closed_cover`, `norm_inverse_sub_le` in `GRWTSK.FunctionalAnalysis.ResidualBallCover`, and `exists_offCriticalWindow`, `primitiveGRH_of_residual_ball_covers`, `scalar_inverse_bound` in `GRWTSK.ResonanceDeterminantReturn`, using `#print axioms` in the exact checked environment. These are static verification instructions, NOT executed receipts. No default-root import was added.

Local source-byte SHA-256/Git-blob and lexical placeholder inspection was performed during authorship. It is neither parsing nor theorem checking. Elaboration/build, fresh kernel replay, transitive axiom audit, independent mathematical review, arithmetic certificate execution and independent reproduction are NOT_RUN. No stochastic experiment or external dataset was used. Git publication observations belong in #1800; mathematical source is preserved only in canonical math, not mirrored into the research repository.

The prescribed Noe proof-automation path returned 404 at current main `0126ba445446dea25047a89884df1adf6b10251a`; no verified local canonical checkout or Lean/Lake executable was available. Dependent automation was not run. This increment is manual source authorship through the authorized GitHub connection, not a new execution service or policy change.
