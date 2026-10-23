# RH-E02 #966 — Restricted observability and authentic support obstruction

Evidence for the new source: SOURCE_DRAFT only. No Lean elaboration, kernel checking, independent replay or RH analytic premise discharge is claimed.

## 1. Source audit and exact theorem dependency

Audited grwtsk/math main at commit 984a04846d9cd8b1662a6448c754da5cfe084649, tree adb676724b8756cb2ddc2e0cfd912d35700567f6. The integration parent and final main SHA must be confirmed from the actual non-force commit. Toolchain: leanprover/lean4:v4.33.0, Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. Existing issue #966; related #942, replay #100, canonical target #15.

Immediate imported source is GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean (blob 45039e5cdc467f461f5702d7c735e15fc34cec07). It gives the source-defined real four-family Green matrix, its genuine zero column at center X+1, a nonzero ambient delta and zero readout. The canonical family source is CanonicalFourFamilyThinGreenMatrix.lean (blob d351831b67611b3a341f8e4181b38382c769994e), with authentic even/odd endpoint shift sets. Actual zero-winding centered support is zeroWindingCenteredShiftSet in RegularOrbitZeroWindingCenteredCorrelation.lean (blob 70facd58b855c1a0aad2eb4c0ba1f7210f7d1ed5).

Terminal RH-facing consumer is GRWTSK.RiemannHypothesis.riemannHypothesis_of_arithmeticFourierCoordinateBound in GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenCoordinateEnergyCriterion.lean, blob f40915f82fa625ab74d0cfd9c6459db08e65b75b. The theorem conditionally returns Mathlib RH from the OPEN AllDyadicArithmeticFourierCoordinateBound. It needs the complete augmented Green energy with both boundary channels to obey uniform bounds for every sufficiently large dyadic scale and EVERY finite Fourier head. This increment supplies no such bound and does not import the historical Fourier stack.

## 2. Three candidates, one selected

| Candidate | Actual consumer | Missing premise and disposition |
| --- | --- | --- |
| **Selected: support-restricted observability and terminal erasure** | Source-defined four-family Green matrix on genuine center support | Exact no-go using a source-legal shift; fixes what source-admissibility does and does not imply; local finite algebra |
| Smallest positive singular value on the quotient by the COMPLETE matrix kernel | Fixed-scale finite map on finite types | A general linear-algebra perspective, but full kernel and uniform spectral gaps are unproved; not imported |
| Transfer recent Chowla, Weil positivity, Nyman–Beurling or PDE observability theorems | RH all-scale Green bound | Missing source-preserving typed map and quantitative hypotheses; analogies only |

## 3. Exact finite observability quotient

For a real packet v indexed by four family labels and natural center c, define erasure P_X by P_X v(F,c)=0 if c=X+1, otherwise v(F,c). The new Lean source proves:

  P_X(P_X(v))=P_X(v).
  M_X v = M_X(P_X(v)) on EVERY actual Green row X<n<=2X.
  OutputEnergy_X(v)=OutputEnergy_X(P_X(v)).

It also proves a necessary condition for any proposed set S of distinguishable source configurations: if the Green observation is injective on S then terminal erasure is injective on S. This is a genuine factorization through a *known invisible direction*, not a claim that the erasure is a quotient by the entire kernel.

## 4. Authentic support-only lower-frame no-go

Define one center cell (F,c) to be support-admissible at X iff c belongs to range(2X+1) and the ACTUAL zeroWindingCenteredShiftSet with the correct endpoint parity and canonical even/odd shift family is nonempty. A real packet is support-admissible iff all nonzero cells pass that test. This explicitly distinguishes legality of coordinates from realizability as differences of two arithmetic configurations.

For X>=2, the terminal factor a=2X has center c=X+1, shift h=X-1>0 and an actual member of its canonical shift family. The inherited anchored-to-authentic support theorem proves that this shift lies in the authentic centered shift set. Therefore the previously constructed delta_X, supported at its real family/center cell, BELONGS to the support-admissible packet set.

But E_source(delta_X)>0 and M_X delta_X=0. Defining HasCanonicalFourFamilyRestrictedLowerFrame(X,D,A) to mean A>0 and A*E_source(v)<=E_output(v) for every v in D, the new principal theorem states:

  For every X>=2 and A real:
  NOT HasCanonicalFourFamilyRestrictedLowerFrame
        X (CanonicalFourFamilySupportAdmissibleSpace X) A.

So authentic shift-support membership ALONE does not fix the matrix noninjectivity. This does NOT refute a lower frame on the genuine arithmetic difference family: delta_X has not been proved to be a difference of two realizable Möbius configurations. The signed other-shift defect and zero-shift Green boundary are retained and not estimated.

## 5. Source-specific opposite failure mode

At fixed X the repository currently defines one data vector canonicalFourFamilyCenteredData X. Define the singleton configuration set containing only that vector and the set of pairwise differences of two elements. The new theorem is an exact identity:

  CanonicalFourFamilySingleArithmeticDifferenceSet X = {0}.

A lower-frame assertion on only that singleton difference family is vacuous. No claim is made that all mathematically possible configurations must be a singleton; rather, a nontrivial realizable configuration set has NOT been supplied by the current source. Any future restricted-frame theorem must name such a set, check it is nontrivial, and test intersection with the FULL kernel.

## 6. Positivity and hostile controls

The real observable is a signed source linear matrix with NONNEGATIVE squared output energy. It is not a PSD Weil form. Positive source squared energy for the nonzero terminal delta is compatible with zero output energy, so no strict coercivity follows. True authentic shift support does not imply injectivity. Erasing one invisible center does not characterize the whole nullspace. A single fixed arithmetic datum does not create a nonvacuous difference family. The open all-scale energy premise remains open.

Finite nonproof diagnostic: direct divisor/anchor enumerations at scales 2<=X<=64 checked 2,079 literal target rows and 63 terminal-center divisor occurrences, all with cofactor 1 and no mismatches. A bounded computation is not proof or Lean kernel acceptance.

## 7. Recent-work connections, not imported theorems

- Xiaomin Zhu, Observability from Measurable Sets for One-Dimensional Heat Equations with Bounded Spacetime Potentials (2026), https://arxiv.org/abs/2610.05704. The paper couples finite-dimensional observability with control of unobserved components. Here only the finite exact negative gate is formalized; no heat-flow decay estimate is imported.
- Jongho Yang, A Friedrichs angle between the Nyman–Beurling spaces and the Riemann hypothesis, J. Math. Anal. Appl. 560 (2026) 130494, DOI 10.1016/j.jmaa.2026.130494. The present erasure is not an Nyman–Beurling completeness or subspace-angle theorem.
- Levent Alpöge and Ralph Furman, More than two thirds of the zeta zeros are simple and on the critical line, arXiv:2608.13637 (2026), with public Anthropic zeta23 Lean formalization. Their rank-trace argument avoids a global positivity premise. No Weil Hermitian form or zero-density theorem is imported into this finite arithmetic layer.
- openai/math, lean/OAI/NumberTheory/TwoPoint/Main.lean blob 5a1a015c0cfe8221af315933c579eb7fb2885d3f, and its Statements.lean blob c637ede9f0a7891859f28c9f4a3a208b7a85a8c0. Its fixed-form Liouville/conditional-nonpretentiousness theorems do not imply the repo's uniform all-growing-shift Green energy. No new direct Lean import.

This is a bounded exact source-based and literature-source comparison, not a comprehensive external mathematical review and not an asserted independent kernel verification of the external work.

## 8. Evidence, proof DAG and ONE next obstruction

SOURCE_DRAFT source and final Git integration are established by the eventual exact commit verification; Lean ELABORATED, KERNEL_CHECKED, TRUST_AUDITED, EXTERNALLY_REPLAYED and ANALYTIC_PREMISES_DISCHARGED remain NOT established. No Lean/Lake executable in this authoring container. Passive print-axioms directives do not count as an executed axiom audit.

Provenance DAG: Mathlib finite divisor and center support -> source-defined genuine four-family matrix and terminal zero column -> new erasure factorization -> terminal delta passes genuine support -> support-only positive lower-frame fails -> singleton arithmetic difference diagnosis. Missing edge: definition of a natural NONTRIVIAL same-scale arithmetic configuration family and its full-kernel separation, with correction channels.

**One next obligation:** construct TWO distinct realizable arithmetic centered configurations at the same fixed scale, with exact induced Green outputs and signed corrections, and prove or refute full-kernel separation of their genuine difference family. No assumption of uniform singular values or RH follows. The present work stops before that theorem.

All concurrent main work, exact imported source blobs, author attribution and open analytical premises must be preserved by routine non-force integration.
