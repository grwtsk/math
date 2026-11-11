# `GRWTSK.ZeroCountCertificates.dirichlet_criticalStripStatement_of_hermite_certificates`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [ZeroDivisorHermiteReturn.lean](../ZeroDivisorHermiteReturn.lean).
Module SHA-256: `a66819f6c780c44f3778f688b05a7379d5e043f359849f5d5a68942d49e57fb1`.

**Statement.** For any `chi : DirichletCharacter C N` with `NeZero N`, suppose finite positive divisors exactly identify zeros of `LFunction chi (arithmeticCoordinate z)` in spectral windows; every zero with `0 < Re(rho) < 1` is covered after the spectral coordinate change; every support is conjugation closed; and every divisor matrix is nonnegative. Then Program 2's existing `criticalStripStatement chi` holds.

**Primary argument.** Given an arbitrary continued L-function zero in the open strip, select a window by the supplied coverage. The inverse coordinate identity gives the corresponding source zero equation. Apply `source_reality_of_hermite`, then the existing arithmetic-coordinate line equivalence to obtain `Re(rho)=1/2`.

**Source comparison.** Local bridge from ZCERT-1 finite-divisor return to RP-OC-02 `GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement`, math#1801. It uses Mathlib's analytically continued `DirichletCharacter.LFunction`, not the Dirichlet series outside its convergence half-plane. No new definition of GRH is introduced.

**Consumer and limits.** No concrete arithmetic family of complete certificates is constructed. The domain is only the open critical strip: no boundary-zero exclusion or all-zero claim including trivial zeros is inferred. Conductor, gamma/parity, pole and prime-power bookkeeping belong to the arithmetic supplier, which is not provided here.

Exact paper edition, source/dependency pins, unrun build and shared evidence: [principal record](allZerosReal_iff_cofinal_hermite.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, axiom audit, arithmetic contour certification and independent review `NOT_RUN`.
