# Source-exact mathematical integration of the 40 supplied papers

**Date:** 2026-11-17. **Local attribution:** grwtsk contributors.
**Scope:** source-local mathematical comparison and explicit consumers of existing declarations, not a global literature register, new ontology, duplicated paper library or asserted RH/GRH proof. The papers were inspected as supplied; filenames and exact editions are preserved for citation. Every row below is a comparison/related mathematical neighborhood unless a separate individual provenance record establishes direct theorem formalization.

**Reviewed baseline:** grwtsk/math main 3267d858af448f9a53cf40d6997df98da92ba25e, Lean 4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No root imports/pins/aggregators changed.

## One exact target and one arithmetic return

The existing [WeilDenseCertificateReduction.lean](WeilDenseCertificateReduction.lean) defines PrimitiveDirichletSource using the **actual nonzero modulus and primitive complex Dirichlet character**, with the analytically continued DirichletCharacter.LFunction, and its target PrimitiveDirichletGRH, including the conductor-one zetaSource identified with riemannZeta. The logical target is: for **every primitive character** and every zero s in 0 < Re(s) < 1, Re(s)=1/2. RH for zeta remains explicit.

For nonprincipal primitive characters, the original arithmetic evaluation is [WeilConductorFrontier.lean](WeilConductorFrontier.lean) / primitiveArithmeticValue: original prime powers and von Mangoldt weights, signed complex character correlations, support cutoff, actual conductor and gamma/parity integral. The conductor-one zeta case has its **own pole-inclusive explicit formula**, retaining both applicable pole orientations. The nonprincipal expression cannot stand in for zeta. [WeilFullFrequencyTail.lean](WeilFullFrequencyTail.lean) addresses the signed source frequency symbol; [WeilExactGammaTail.lean](WeilExactGammaTail.lean) handles the original **physical translation** gamma tail, which must not be conflated with Groskin's **Galerkin frequency** cutoff tail.

[WeilPrimitiveDirichletReturn.lean](WeilPrimitiveDirichletReturn.lean) supplies the native inducing-character reduction; [WeilDenseCertificateReduction.lean](WeilDenseCertificateReduction.lean) and [WeilFiniteEnclosureReturn.lean](WeilFiniteEnclosureReturn.lean) expose conditional dense-test/certification consumers. Those consumers **do not** construct universal accepted certificates or the full source-return theorem. [WeilDirichletStageChain.lean](WeilDirichletStageChain.lean) explicitly leaves the primitive negative-witness theorem open.

## Dependency direction

1. Fix each actual complex character, complete explicit formula, original signed arithmetic test, support domain and both zeta pole orientations when applicable. Preserve zero multiplicities and conjugate/dual-character symmetries.
2. Construct **source-specific finite** evaluation and exact numerical error enclosure, rather than trusting raw matrix eigenvalues. The companion [WeilCutoffSourceDecision.lean](WeilCutoffSourceDecision.lean) proves only the conditional signs from a verified bracket and the undecidable band.
3. Prove all-source, all-window, all-complex-test, all-accuracy coverage, and the necessary density and continuity. Fixed-window large-conductor positivity does **not** imply fixed-character all-window positivity.
4. Supply the actual Weil negative-witness/zero criterion; self-adjoint finite approximants with real spectra do **not** identify their limit with the original zeta/Dirichlet complex zero divisor. An exact zero-divisor return must retain locations **and analytic orders**.
5. Only after those premises are discharged conclude PrimitiveDirichletGRH and its zeta/RH branch. An implication whose premises are unproved is not RH or GRH.

## Individual paper-to-declaration comparisons

| Supplied file | Exact cited contribution | Current consumer or unresolved transfer |
|---|---|---|
| ActaNumerica2010.pdf | Rump, Verification methods (Acta Numerica 2010), §§4–6, §10; Rigorous intervals, rounding and eigenvalue checks | CutoffSourceDecision: exact bracket premise; no runtime checker |
| 1910.09336v2.pdf | mathlib Community, The Lean Mathematical Library (CPP 2020), §§2–4; Library architecture and canonical structure reuse | Reuse original mathlib declarations; no imported result counts as a novel formalization |
| 9905075v2.pdf | Murakami–Murakami, Colored Jones polynomials and simplicial volume, §§1–5; Root-of-unity specialization; volume conjecture | Quantum knot lane; no assumed zeta spectral identification |
| 1002.0126v1.pdf | H. Murakami, Introduction to the Volume Conjecture, §2, §§3–5; Colored Jones normalization and conditional volume limit | Knot/AJ lane, not RH |
| AJ_Conjecture1.pdf | T. T. Q. Lê, Colored Jones polynomial and A-polynomial, Introduction, §0; AJ results for classes of two-bridge knots | Retain knot type, recurrence ideal and knot character variety |
| holonomic.pdf | Garoufalidis–Lê, Colored Jones Function Is q-Holonomic, Thms. 1–2; Proof of q-holonomicity for colored Jones | Proved recurrence is not conjectural AJ equality |
| 0306230v4.pdf | Garoufalidis, Characteristic and deformation varieties, Conjs. 1–2; Characteristic variety and proposed deformation comparison | Keep conjectural transfer hypotheses |
| 1407.4897v4.pdf | DHJ Polymath, Variants of the Selberg sieve, Thm. 1.4; Refined sieve and bounded prime-gap bounds | SelbergSieve; does not prove RH |
| annals-v181-n1-p07-p.pdf | Maynard, Small gaps between primes, Thms. 1.1–1.4; Multidimensional prime-tuples sieve | NumberTheory/PrimeGaps external-import neighborhood |
| annals-v179-n3-p07-p.pdf | Zhang, Bounded gaps between primes, Thm. 1; Smooth-modulus distribution estimates and bounded gaps | Prime distribution, not all-scale Weil positivity |
| annals-v170-n2-p10-p.pdf | Goldston–Pintz–Yıldırım, Primes in tuples I, Thms. 1–2; Weighted sieve and level-of-distribution conditionality | Preserve Elliott–Halberstam assumptions |
| berry307.pdf | Berry–Keating, Riemann zeros and eigenvalue asymptotics (1999), §§1–2; Spectral/quantum analogy, expressly speculative | Needs actual complex zeta divisor equality |
| 10.1007_2Fs13373-018-0118-0 | Barry Simon, Tosio Kato's work on non-relativistic quantum mechanics: part 1, Bull. Math. Sci. 8 (2018); Perturbation, forms and spectral estimates | Use only at operator hypotheses, not a zero-location transfer |
| Bell-System-Technical-Journal-1961-1-Complete.pdf | Hao Wang, Proving Theorems by Pattern Recognition II (1961), §§I, V–VI; Logical decision/reduction procedures | Sound checking not universal certificate existence |
| 2607.02828v3.pdf | Groskin, Finite Guinand–Weil dictionary, Thm. 2.5, Thm. 3.2, Cor. 3.3; Finite zeta Galerkin dictionary; positive archimedean tail order with budget | CutoffSourceDecision formalizes only downstream sign logic |
| 2610.41115v1.pdf | Suzuki, Spectral theory of zeta functions of function fields, Thms. 1.1–1.2; Function-field eigenvalues and functions; distinct zeros versus multiplicities | FiniteFieldVerticalCertificates; no characteristic-zero transfer |
| 2610.32704v1.pdf | Suzuki, Spectral convergence associated with Weil's quadratic form, Thms. 1.1–1.2; Eigenvalue/canonical-product convergence ASSUMING RH | Cannot prove RH by circular application |
| 2606.09096v3.pdf | Suzuki, Weil's quadratic form via the screw function, §1; Unconditional operator framework; spectral limit conjecture | Source-preserving screw/form consumers only |
| 2602.04022v1.pdf | Connes, The Riemann Hypothesis: Past, Present and a Letter Through Time, §§4–5; Survey and precise finite-prime spectral approximations | Approximate zeros not global complex zero-divisor identity |
| 2511.23257v1.pdf | Connes–van Suijlekom, Quadratic Forms, Real Zeros and Echoes of the Spectral Action, Thm. 1.2/6.1; Real Fourier-transform zeros under ground-state assumptions | Must separately prove hypotheses and zeta equality |
| 2511.22755v1.pdf | Connes–Consani–Moscovici, Zeta Spectral Triples, Thm. 1.1, §§6–8; Finite self-adjoint models, numerical agreement; limiting equality unresolved | ConnesFiniteNormalizedJetReturn; SpectralProductDivisorReturn |
| 2006.13771v1.pdf | Connes–Consani, Weil positivity and trace formula: archimedean place, Introduction eqs. (1)–(2), App. C; Exact pole-neutral criteria and semi-local positivity | Zeta poles both orientations; restriction equivalence required |
| 9811068v1.pdf | Connes, Trace formula in noncommutative geometry, Intro and §VIII; Semi-local trace formula, global equivalence conditional | Global trace identity is still a supplier |
| RLIN_2000_9_11_3_183_0.pdf | Bombieri, Remarks on Weil's quadratic functional I (2000), §§2–3; Fixed support variational and finite spectral truncations | Actual Weil sign, test domain and density |
| riemann.pdf | Bombieri, Problems of the Millennium: RH, §§I–II; Meromorphic zeta, functional equation and zero target | Actual riemannZeta in conductor-one source |
| MPPc.pdf | The Millennium Prize Problems, Bombieri RH description; Official RH problem statement | No weakened/proxy RH claim |
| equivariant.pdf | Flach, Equivariant Tamagawa number conjecture survey, Parts 1–3; Regulators, periods, determinant functors, known cases | No unproved L-function-to-Weil positivity bridge |
| functoriality-www.pdf | Cogdell–Kim–Piatetski-Shapiro–Shahidi, Functoriality for Classical Groups, Intro/Thm. 1.1; Generic transfer preserving twisted local factors | Not an automatic Dirichlet GRH transfer |
| 0304233v1.pdf | Kato, Tamagawa Number Conjecture for Zeta Values, §1; Motivic zeta elements and étale cohomology | A separate L-function and source map required |
| BKTamagawa.pdf | Bloch–Kato, L-Functions and Tamagawa Numbers of Motives, §0; Conjectural leading values, periods and arithmetic groups | No zero-location or RH consequence alone |
| 1111.4914v1.pdf | Scholze, Perfectoid Spaces, Thms. 1.3, 1.7–1.8; Tilting, almost purity, perfectoid comparison | No automatic archimedean gamma or Weil source |
| prisms.pdf | Bhatt–Scholze, Prisms and Prismatic Cohomology, Defs. 1.1/1.6; Prismatic and integral p-adic cohomology comparisons | Need explicit global-L analytic return |
| MOT.pdf | Milne, Motives—Grothendieck's Dream, §§5–8; Motivic realizations and zeta framework | Keep conjectural motivic transfers explicit |
| TFF.pdf | Milne, On Tate and Standard Conjectures over Finite Fields, Thms. 0.1–0.2; Conditional motives/Tate algebraic cycle statements | Never replace required arithmetic cancellation by geometry |
| hodge.pdf | Deligne, The Hodge Conjecture, §1; Rational (p,p) cycle class conjecture | Hodge positivity does not imply RH |
| TateAim.pdf | Milne, The Tate Conjecture over Finite Fields, §1; Frobenius-fixed algebraic classes and equivalence relations | Keep Tate assumptions as hypotheses |
| pRH.pdf | Milne, RH over Finite Fields, §§1–2, 5–6; Weil/Deligne finite-field RH via Frobenius | EllipticFiniteFieldTorsionRHReturn; no number-field transfer |
| CCGLS.pdf | Cooper–Culler–Gillet–Long–Shalen, Plane curves associated to character varieties (1994), §§1–3; Knot A-polynomial via SL2(C) representations | Not a Dirichlet L-function or RH zero divisor |
| proofs_in_the_book.pdf | Aigner–Ziegler, Proofs from THE BOOK, 4th ed. (2010; corrected 2013), Chs. 1–2, 5; Elementary prime and reciprocity methods | Reuse proven identities only if an actual source consumer exists |
| 0911.4266v4.pdf | Pestov–Kwiatkowska, Introduction to Hyperlinear and Sofic Groups, §1, Observation 1.1, Thm. 1.4; Finite local embedding and metric approximation concepts | DynamicSoficExactLanguageBoundary; not an RH proof |

## Priority unproved theorem

For **every** primitive Dirichlet source χ (including the zeta case), every compact test-support window A, every member f of a specified dense complex test domain, and every ε>0, construct a rational/interval certificate whose completely identified arithmetic value (all prime powers, phases, conductor, gamma/parity, relevant poles and multiplicities) encloses the **unchanged full Weil form** within ε, and prove coverage over **all** χ,A,f,ε. Then separately establish all-test nonnegativity and the exact negative-witness return to zero locations. Neither the attached texts nor existing certificate soundness supplies universal certificate existence.

Hostile controls: omit one prime power or one pole orientation; conjugate or discard character phases; change Fourier normalization; replace signed pairings by norms; confuse physical and Galerkin tails; infer a sign from an eigenvalue in its unbounded or error-overlap band; erase multiplicities in a product of distinct ordinates; use truncated finite-height checks as infinity coverage; or infer zero-divisor identification from a real-spectrum approximation. Each can invalidate the proposed bridge without refuting RH or GRH.

**Evidence:** this authored comparison is not an individual paper proof and has no claim of novelty. [WeilCutoffSourceDecision.provenance/README.md](WeilCutoffSourceDecision.provenance/README.md) records the only newly adapted four logical declarations and individual references. Lean elaboration, root build, fresh kernel replay, transitive axiom audit, interval arithmetic and independent analytic review of the new Lean source are **NOT_RUN**. No numerical result or complete RH/GRH argument has been certified.

**Coordination:** [RH spectral/source program](https://github.com/grwtsk/math/issues/99), [exact RH target](https://github.com/grwtsk/math/issues/15), [dense certification](https://github.com/grwtsk/math/issues/1807), [divisor/count consumer](https://github.com/grwtsk/math/issues/1806). Research-only records and execution receipts remain owned by their respective repositories; the supplied copyrighted PDFs are not redistributed.
