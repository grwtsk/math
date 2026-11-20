# Deeper arithmetic audit of the submitted RH route

grwtsk contributors

Source: Deicyde/riemann-hypothesis, revision **a172c464fd4bcfc4f53e394dcba45d742b1409a6**. All links below are pinned to that revision.

This is a bounded source-level audit. The inspected chain contains concrete constructions and estimates, and no demonstrated mathematical defect was found in those inspected bodies. This does not establish the correctness of all imported results. External compilation, complete proof-object replay, and a transitive axiom audit were **NOT_RUN in this audit**. The external endpoint has not been admitted to the local RH/Dirichlet-GRH routes.

Before publication, external revision `976eeac58f2c5fdf94d935bd12e5d9cdada93726`
was also inspected. Its intervening changes concern verification metadata
and CI, without changes to the submitted Lean proofs. Its
[verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/976eeac58f2c5fdf94d935bd12e5d9cdada93726/verification/NOTES.md#results)
still report the build in progress. The mathematical audit pin above is retained.

The next continuation inspected revision
`1f2beda145f7b7a9f6f6f6640a60f2e44920b7ba`. Its additional changes clarify
the export sandbox and which clean files supply the judge configuration;
they do not change submitted Lean proofs or report a completed result.
The [current pinned verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/1f2beda145f7b7a9f6f6f6640a60f2e44920b7ba/verification/NOTES.md#results)
still record the build in progress. The independently reconstructed local
arithmetic components below have their own narrower source-bound checks.

The valuation continuation refreshed external `main` again at
`8b83d5e7b319ebc7b3be6e59ce3411ba2b09d116`. The two intervening commits
change only README wording; the submitted Lean files and verification
notes are unchanged. The [notes at that revision](https://github.com/Deicyde/riemann-hypothesis/blob/8b83d5e7b319ebc7b3be6e59ce3411ba2b09d116/verification/NOTES.md#results)
still report the full build in progress. No completed external verdict
was observed in this refresh.

The graded-algebra continuation inspected external `main` at
`bdb1810a06c78f246da285c9bcbe7db2cd992888`. Its one additional commit
sets `LEAN_ABORT_ON_PANIC=1` in the README commands and CI challenge job;
it changes no submitted Lean proof or verification result. The
[verification notes at that revision](https://github.com/Deicyde/riemann-hypothesis/blob/bdb1810a06c78f246da285c9bcbe7db2cd992888/verification/NOTES.md#results)
still report the build in progress. The mathematical comparison remains
at the unchanged source pin above.

The dehomogenization continuation refreshed external `main` at
`712a6aef8fe265fb6f3a5fa1f3101a017aec8fe9`. The intervening changes affect
the cache URL, comparator configuration, README, and verification notes;
no submitted Lean proof changed. The [notes at this revision](https://github.com/Deicyde/riemann-hypothesis/blob/712a6aef8fe265fb6f3a5fa1f3101a017aec8fe9/verification/NOTES.md)
report checker compatibility limits: con-leche and con-ron cannot
process a mutual inductive block with a reflexive member in the
dependencies, and the bundled lean4lean encounters a core-version
mismatch. The configured export checkers are now Lean paranoid and
nanoda; a compatible lean4lean replay is described separately. These
are maintainers' tool-status reports, not mathematical counterexamples
or completed independent checks performed here. The notes report a
large solution export but their Results section still says the build
is in progress. No completed full-submission verdict was observed.

The Euler/tangent continuation refreshed external `main` at
`e50d09817ad81469f737e8f637561e6ccf86c670`. Its single intervening
commit corrects only the [verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/e50d09817ad81469f737e8f637561e6ccf86c670/verification/NOTES.md).
The earlier inventory of metaprogramming was incomplete: the notes
now also list `kexactB`, `kcopy`/`#kcopy_probe`, `run_tac` uses, and a
positivity extension. They describe some tactics as assigning proof
terms without the elaborator first checking the expected type, leaving
declaration checking to the kernel. This is a corrected maintainers'
report, not an independent audit of those tactics or a completed proof
replay here. Submitted Lean files and the comparator configuration are
unchanged; the Results section still reports the build in progress.

The normalized-slice and length-one continuation refreshed that same
external head and read the complete verification notes again. The head
and Results status were unchanged; the local results below supply no
new completed verdict for the external submission.

## Finite count, integer witness, and valuation sum

### 1. Polynomially many automorphic systems

In [TCardK.lean][count], UpperTheory.V.Af.card_k_of_printed_results combines two bounds:

\[
\dim\Xi\le c_1(H+1)^{A_1},\qquad
\operatorname{cohDim}(K(3M),\Xi)\le c_2M^{A_2}\dim\Xi.
\]

The cohomology and Borel-injection fields of its explicit Hypotheses′ input yield

\[
\#S\le c_1c_2[M(H+1)]^{A_1+A_2}.
\]

The second bound is supplied by UpperTheory.V.Af.cohBoundFree in [CohBoundFree.lean][cohomology]. Its body uses a finite double-coset decomposition, bounded arithmetic-group cohomology, and the congruence-index bound

\[
[K(3):K(3M)]\le(3M)^{[F:\mathbf Q]n^2}.
\]

These arithmetic and cohomological suppliers have not been independently replayed.

### 2. The finite carrier contains the actual systems

The declarations countK_alt and countQ_alt in [FrobeniusTraceCountBoundOfCmEigensystemCount.lean][systems] construct a finite image of the actual Satake-system map on SigK. The carrier installed by exists_eigData is the image of that map; this construction does not use the empty Inhabited default for EigData.

[WinDefs.lean][tracedata] defines TrData q e with a finite trace-class family S satisfying

\[
|t_s|\le\sqrt q+2,\qquad q^et_s\text{ integral over }\mathbf Z,
\]

and stability of the indexed family under complex field automorphisms. Its classifier records the actual Frobenius trace and injectivity up to representation isomorphism. Purity, integrality, Galois conjugacy, level compatibility, and Frobenius classification enter explicitly as suppliers.

### 3. Trace separation and a nonzero integer

In [FrobeniusTraceCountBoundOfRatEigensystemCount.lean][product], eisenstein_trace_difference_log_bound assumes q≥7, e≥1, a root of unity z, |t|≤sqrt(q)+2, and integrality of q^e t. For

\[
E(q,e,z)=q^{-e}z+1+q^ez^{-1},\qquad Q=q^e,
\]

it proves

\[
t\ne E(q,e,z),\quad Q(t-E(q,e,z))\text{ integral},\quad
\log|Q(t-E(q,e,z))|\le2e\log q+1.
\]

The lower bound |E|≥Q−1−Q^{-1}>sqrt(q)+2 separates the trace. Integrality follows from

\[
Q(t-E)=Qt-z-Q-Q^2z^{-1}.
\]

The upper triangle bound is |Q(t−E)|≤2Q²; taking logarithms and using log 2≤1 gives the estimate. The local [trace-separation reconstruction](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceSeparation.md) now proves the exact three conclusions, and the stronger quantitative lower bound |Q(t−E)|≥5/2, directly from the root Mathlib. Its separate analytic argument uses sqrt(q)≤q/2, with all original parameters retained.

The same file's frobenius_trace_norm_nonzero_log_bound constructs

\[
NN=\prod_{o\in O}\prod_{s\in S}q^e(t_s-E(q,e,z_o)).
\]

Its integrality and invariance under every complex automorphism make it an integer, through UpperTheory.exists_int_eq_prod_of_galois_permuted_integral in [ExistsIntEqProdOfGaloisPermutedIntegral.lean][integer]. Every factor is nonzero, and

\[
\log|NN|\le |O|\,|S|\,(2e\log q+1).
\]

The local [integer-product descent](../AlgebraicNumberTheoryGlobalFields/GaloisInvariantIntegerProduct.md)
now proves this actual integer existence from integral factors permuted
by **every abstract complex field automorphism**, preserving indexed
multiplicities. Its transcendence-basis extension and algebraic fixed-field
argument derives rationality before integral closure gives the integer.
The [trace-specific assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.md)
applies that result to the literal product above. The subsequent
[local valuation assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.md)
now supplies the local-norm comparison for an explicitly supplied
injective classifier and exact trace readout. The construction of that
classifier from actual admissible representations remains separate.

For a prime ℓ not dividing q, each integral factor has ℓ-adic norm at most one. Deleting factors therefore increases the product norm. The classifier's injectivity prevents repeated use of one trace class within an orbit component. Thus

\[
|NN|_\ell\le
\prod_o\prod_{\rho\in X_o}
|\operatorname{tr}\rho(\sigma^{-1})-E_o|_\ell.
\]

The submitted argument removes the q^e factors by **equality** under the
explicit hypothesis ℓ∤q. The local continuation proves the sufficient
inequality `‖q^eδ‖_ℓ≤‖δ‖_ℓ` for every prime, using `‖q‖_ℓ≤1`. Thus this
finite comparison alone needs no coprimality. The wider Frobenius and
representation construction retains its separate prime restrictions.
An abstract complex/p-adic equivalence transports the monic equations
and product identities, never the complex norm itself.

### 4. Uniformity of the integer budget

In [KeepNumU.lean][number], UpperTheory.GalN.V.Win.N.numberU3U_of_adm2A_imp_adm2B and numberU3U_of_prints combine rank-three CM and rank-two rational trace families. For imaginary quadratic K, d=|disc K| and q=Nw=p^h with 1≤h≤2, they obtain

\[
\log|NN|\le
5(c_1+c_2d^{A_2})\,|O|\,
[N(e+1)]^{A_1+A_2+1}\log p.
\]

The constants are fixed before e,N,p vary.

### 5. The substantive deformation input remains explicit

In [FPropGKU.lean][valuation], UpperTheory.V.Z.J.propGK_of_numberU3U_of_oneCharU uses OneCharU_s to supply

\[
V_n(\psi)\le
2\sum_{\rho\in X_\psi}
v_\ell(\operatorname{tr}\rho(\sigma^{-1})-E_\psi).
\]

Taking logarithms of the integer-product inequality gives

\[
\sum_{\psi\in\operatorname{orb}(H)}V_n(\psi)\le2v_\ell(NN).
\]

This is the PropGK inequality. OneCharU_s contains genuine deformation, Kato, and automorphy content; the finite-product argument does not establish that input.

UpperTheory.V.U3.corGK in [CorGSumLog.lean][sum] uses two distinct auxiliary primes, allowing each ℓ to use at least one witness, and the elementary estimate

\[
\sum_{\ell\in L}v_\ell(n)\log\ell\le\log|n|\qquad(n\in\mathbf Z\setminus\{0\}).
\]

UpperTheory.V.U3.countI in [CountI.lean][counti] groups characters by kernel and uses

\[
\sum_H\varphi([G:H])\le|G|\le N.
\]

It absorbs the fixed coefficient in
2c₅(log r₁+log r₂)N[N(e+1)]^A into (Nt)^(k+1+A).
The auxiliary primes and k are selected from the fixed character before the variable host, e, and t.

The local [prime-logarithm budget](../AlgebraicNumberTheoryGlobalFields/IntegerPrimeLogBudget.md)
now reconstructs the exact finite-prime inequality through the full prime
factorization of |n|. It also proves the two-distinct-exception deduction
once the corresponding pointwise valuation bounds are supplied. The
trace-witness assembly chooses one nonzero integer before quantifying
over every finite prime set. This does not prove `OneCharU_s` or its
deformation-length estimate.

The [norm-to-valuation reconstruction](../AlgebraicNumberTheoryGlobalFields/PadicNormValuationBudget.md)
now proves the exact private `vl_bound` on Mathlib's actual `PadicAlgCl ℓ`
and the stronger version deriving selected nonvanishing from `NN≠0`
and the norm comparison. It uses precisely
`vl ℓ x=−Real.logb ℓ ‖x‖`, including the totalized value `vl ℓ 0=0`.
Positive norm of the integer forces every selected norm to be positive;
the increasing logarithm and its negation then give the correct
inequality direction. The integrated theorem retains one integer before
every prime, field identification, and selected family. Its observation
consumer proves the finite summation for `c≥0`, with the per-character
length-to-trace bound still explicit.

## Below OneChar: the two length comparisons

This continuation also inspected concrete source bodies below the
`OneCharU_s` interface. This section is an analytical/source review;
external compilation, full dependency replay, and transitive axiom
auditing of these external bodies are **NOT_RUN**.

### What the supplier actually asserts

[NumberU3US.lean][onecharstatement] defines `OneCharU_s` over an actual
algebraic closure, CM number field, prime, coefficient DVR, level,
exponent, character, and `GD` hypotheses. For the actual Eisenstein
trace and a group element, the absence of that trace among the admitted
representations gives a finite admitted family, uniqueness up to
representation isomorphism, finite `Vlen`, and

\[
V_n(\psi)\le2\sum_{\rho\in X}
 v_\ell(\operatorname{tr}\rho(\sigma)-t).
\]

`Vlen` and its coefficient-normalized `Vn` are the arithmetic length
objects in [DirichletPrimeToLPartMulLPowerPart.lean][lengthdefs]. They
are not definitions of the valuation sum on the right.

The body `oneCharU_of_katoTwoW_rig_admI_automorphy` in
[FOneCharU.lean][onecharproof] first reduces to an unramified coefficient
model. It constructs deformation data, a ring, and a model; identifies
the model trace difference with the actual representation trace
difference; proves admissibility; and selects orbit representatives
without duplicated isomorphism classes. Its central comparisons are

\[
\text{arithmetic/Selmer length}
\le \text{model cotangent length}
\le 2\sum\text{trace-difference valuations}.
\]

The lower comparison is `vlen_le` in [VlenLe.lean][vlen]. It writes a
torsion cohomology module as a directed union of uniformizer-power
torsion pieces, uses `sha_inj` and `model_lower`, and passes to module
length. Its cohomological input and `LemmaM'` are substantive premises.

The upper comparison is `model_upper` in [ModelUpper.lean][modelupper].
It uses `LemmaM`, finiteness of the weight-zero algebra, the actual
point/rigidity conditions, and nonvanishing of the trace difference.
After applying the graded cotangent estimate, it chooses orbit
representatives and reindexes. The factor two enters here, before the
elementary negative-logarithm calculation.

### The source passes concrete algebraic proofs

[LinkedUnlE.lean][linked] supplies the actual theorem bodies
`Alg.M.main_holds`, `Alg.M.mprime_holds`, and `Alg.lemmaP` to the OneChar
assembly. At that composition point these are proved source returns,
rather than three unfilled assumptions. This observation does not
replace checking their dependency closure.

| Source return | Inspected mathematical argument |
|---|---|
| `Alg.M.main_holds : LemmaM` in [MainCotSpan.lean][maincot] | Normalize cotangent generators while preserving their span and equations; construct a chart and finite cover; apply the numerical core. |
| `Alg.M.core_holds` in [AlgMemCoef.lean][algcore] | Build the graded algebra comparison; combine `low_holds`, an Euler-characteristic comparison, and `up_holds`; cancel the positive common power of two. |
| `Alg.M.mprime_holds : LemmaM'` in [Mprime.lean][mprime] | Derivations vanish on the saturated square, factor through the cotangent quotient, and give an injective map to a finite-length Hom module. |
| `Alg.lemmaP : LemmaP` in [LemmaP.lean][lemmap] | Construct the universal framed deformation presentation using grading and tangent/obstruction data. Only the return and initial construction were reviewed here. |

The hypotheses of `LemmaM` in [OrbitVanishingLocal.lean][orbitlocal]
include a complete DVR, an algebraically closed valued coefficient
field with its normalization, the graded algebra and base point,
equations, and conditions `M1` through `M5`. The theorem returns a finite
cover, finite cotangent length, and the upper valuation estimate.
`LemmaM'` is a separate lower module-length estimate. The universal
presentation predicate `LemmaP` is defined in
[FramedTwoCoboundaries.lean][framed]. These definitions retain actual
algebraic objects and constraints.

In the numerical core, the lower side carries `2^(r+r′)` and the upper
side `2^(r+1+r′)`. The common positive factor cancels, leaving precisely
two. This identifies a concrete source of the constant, without treating
it as an arbitrary loss absorbed by a later logarithm.

The remaining point hypotheses use Kato/Selmer vanishing, the two
rigidity cases, and tangent/cohomology identifications; automorphy and
coefficient compatibility also remain in the OneChar proof. No
circularity was visible in the inspected OneChar, model, and PropGK
bodies. This bounded observation is not a global noncircularity or
verification verdict for all imported results.

### Checked graded quotient and finite-squaring return

The source `locLen_aPiece_sup_span_sq_le_add` in
[LocLenAPieceSupSpanSqLeAdd.lean][squarelength] proves a useful actual
quotient estimate. Let `A` be a commutative graded algebra over `O`,
`B=A₀`, `σ : B →ₐ[O] K` a map into a field, `J` a homogeneous ideal,
and `t∈A_d`. Write `Lσ` for module length after localization at `ker σ`,
with values in the extended natural numbers. For every weight `w`,

\[
L_\sigma\big((A/(J+(t^2)))_w\big)
\le
L_\sigma\big((A/(J+(t)))_{w-d}\big)
+L_\sigma\big((A/(J+(t)))_w\big).
\]

The local [graded exact-sequence module](../../CommutativeAlgebra/GradedQuotientExact.md)
now constructs the actual multiplication-by-`t` map from the first
right-hand piece to the left-hand piece, followed by the quotient
projection to the second right-hand piece. Their image and kernel agree.
For an element of the kernel, write a representative as `j+tc`; taking
its weight-`w` component gives `j_w+t c_(w-d)` because `J` is homogeneous.
That provides the required preimage. The reverse inclusion follows
because the projection kills `t`. The [localized length module](../../CommutativeAlgebra/LocalizedGradedLength.md)
then applies localization exactness and actual `Module.length`
subadditivity. It first proves the inequality at an arbitrary prime
of `B`, then specializes to `ker σ`. No injectivity of the first map is
asserted or needed: the length proof factors the exact pair through its
actual image modules.

The shift `w−d` is essential: with `A=k[x]`, `t=x`, `J=0`, `w=1`,
replacing it by `w` would give the false inequality `1≤0`. Lengths must
retain their possible infinite value; truncation to natural numbers
would require additional finiteness. The maintained result includes the
explicit quotient maps and their homogeneous preimage proof, as well as
the general module-length deduction.

The [finite-family module](../../CommutativeAlgebra/GradedSquareFamilyLength.md)
also completes the iteration on the actual generated ideals. If `t_i`
has degree `d_i` and the initial length is bounded at **every** weight,
then

\[
\left[\forall w,\quad L_\sigma((A/(J+(t_i)))_w)\le c\right]
\Longrightarrow
\forall w,\quad L_\sigma((A/(J+(t_i^2)))_w)\le2^n c.
\]

Square one equation while retaining the other unsquared equations in the
background ideal. The one-equation estimate uses weights `w-d_i` and
`w`, each bounded by `c`, so it gives `2c`. The squared generator is
homogeneous and can be put into the background for the next induction
step. The empty family has cost one. The local theorem permits a
different degree for each generator; the source's common-degree
`Fin n` lemma in [LocLenAPieceIdeal2LeTwoPow.lean][squarefamily] is a
specialization. All-weight uniformity is retained in both statements.

The final local endpoint expands the source's five families from
[OrbitVanishingLocal.lean][orbitlocal] and the literal `ideal2` from
[ToDegInjective.lean][gradedobjects]:

| Family | Number | Degree | Equation used in `ideal2` |
|---|---:|---:|---|
| `F` | `r+1` | `−1` | `F_i²` |
| `G` | `s` | `−2` | `G_i` |
| `E` | `r′` | `+1` | `E_i²` |
| `E′` | `s′` | `+2` | `E′_i` |
| `Z` | `m` | `0` | `Z_i` |

Retaining `J=(G,E′,Z)` and combining `F,E` as a disjoint indexed family
gives exactly

\[
\left[\forall w,\ L_\sigma((A/(F,G,E,E',Z))_w)\le1\right]
\Longrightarrow
\forall w,\ L_\sigma((A/(F^2,G,E^2,E',Z))_w)\le2^{r+1+r'}.
\]

This proves the finite squaring step used by `up_holds` in
[TwoSigned.lean][twosigned]. The separate lower comparison in
[AdmissibleMonoIdeal.lean][low] carries `2^(r+r′)`. Their common positive
factor cancels in the numerical core, leaving two. The geometric
length-one premise is now supplied by the reconstruction below, under
the original finite-generation, `M2`, `M4`, and nondegeneracy hypotheses.
The Rees-module comparison, Herbrand estimate, and full lower theorem
remain distinct suppliers.

### The checked geometric length-one supplier

The substantive input
`locLen_quotientWeightPiece_le_one` in
[LocLenQuotientWeightPieceLeOne.lean][lengthone] now has an original
local reconstruction in
[GradedPointLengthOne](../../CommutativeAlgebra/GradedPointLengthOne.md).
Its actual hypotheses
include the coefficient DVR and field conditions, a homogeneous ideal,
finite algebra generation over degree zero,
finiteness of the degree-zero quotient image (`M2`), linear dependence
of point derivations at the stated two-signed points (`M4`), and
`¬ idD 𝒜 ≤ ker σ`. Its conclusion is the all-weight length bound at most
one used above. The local proof derives that conclusion on the actual
`LocalizedModule` of the homogeneous quotient image; it does not take
the length bound as an additional premise.

The proof chooses homogeneous `f,g` of degrees `−2,+2` with
`σ(fg)≠0`. The following inputs and the complete geometric slice
supplier have local checked proofs.

#### Dehomogenization and its actual localization return

The local [GradedDehomogenization](../../CommutativeAlgebra/GradedDehomogenization.md)
reconstructs `deh_holds` in [DehHolds.lean][deh]:

\[
J\text{ homogeneous},\quad f\in A_d,\ d\ne0,\quad h\in A_w,
\quad h\in J+(f-1)
\quad\Longrightarrow\quad
\exists n\in\mathbb N,\ f^n h\in J.
\]

Its source proof writes `h=j+u(f−1)` and lets `c_k` be the degree-`k`
component of `u`. Modulo `J`, projection gives
`c_(k+d)=f c_k` away from degree `w`, and
`c_w=f c_(w-d)−h` at degree `w`. Finite support and `d≠0` force
`c_(w-d)=0` modulo `J` by going backwards along the progression. Going
forwards gives `c_(w+nd)=−f^n h` modulo `J`, and the component eventually
vanishes in `A`. The maintained Lean proof constructs this finite-support
recurrence in the actual quotient and proves the stated consequence
without cancellation by `f`.

The [localization continuation](../../CommutativeAlgebra/GradedDehomogenizationLocalization.md)
also proves the converse and the exact localization-zero criterion:

\[
h\in J+(f-1)
\iff \exists n,\ f^nh\in J
\iff [h]/1=0\text{ in }(A/J)[1/\bar f].
\]

The first equivalence retains the homogeneous hypotheses; the second
uses the actual `Localization.Away` ring. It identifies the kernels
on homogeneous elements and does not identify the entire slice quotient
with the localization. The condition `d≠0` is necessary: with
the trivial grading on `ℚ`, `f=2,h=1,J=0`, membership in `(f−1)` holds
but no `f^n h` vanishes. Homogeneity matters too: in `ℚ[X]`, the
element `X−1` belongs to the slice ideal but survives every power of
`X`. Both boundaries have compiled controls, with the exact scope
recorded beside the modules.

#### Clearing the slice relation in degree zero

Set `τ=fg∈A₀`, with `σ(τ)≠0`. The source's local reducedness step
starts from homogeneous `h`, `σ(b)≠0`, and `b h^n∈I`. The separate
slice theorem supplies `N` and a coefficient `c∈O`, `c≠0`, with

\[
c\,g^Nbh\in I+(f-1).
\]

The new local theorem consumes exactly this membership. Its left side
is homogeneous, so dehomogenization produces `m` with
`f^m c g^N b h∈I`. Define

\[
b'=c\,\tau^{N+m}b\in A_0.
\]

Faithful coefficient action, `σ(τ)≠0`, and `σ(b)≠0` imply
`σ(b′)≠0`. The identity

\[
b'h=(f^Ng^m)(f^mcg^Nbh)
\]

then gives `b′h∈I`. The formal endpoint proves that the actual quotient
class `pieceMk 𝒜 I w h hh` vanishes after localization at `ker σ`.
It also supplies a version for any multiplicative set in `A₀`.
Only degree-zero elements are evaluated by `σ`; neither `σ(f)` nor
`σ(g)` is used. Opposite nonzero degrees suffice for this algebraic
step, without the later characteristic-zero or tangent hypotheses.

#### Finite degree-zero image supplies local nilpotence

The new [FiniteAlgebraPointNilpotence](../../CommutativeAlgebra/FiniteAlgebraPointNilpotence.md)
proves the actual private `nilpotent_modulo_kernel` input in
[LocLenQuotientWeightPieceLeOne.lean][lengthone]. The hypothesis is
precisely finite generation over `O` of

```lean
(𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap
```

Let `ψ:A₀→A/I` be the restricted quotient map. For `σ(p)=0`, this
finite algebra image makes `ψ(p)` integral. Choose its nonzero
annihilating polynomial and factor it as `q(X)=X^n r(X)` with
`r(0)≠0`. Taking `b=r(p)` gives `σ(b)≠0`, by faithful coefficients,
and `ψ(bp^n)=0`, by the polynomial relation. Thus

\[
\sigma(p)=0\quad\Longrightarrow\quad
\exists b\in A_0,\ \sigma(b)\ne0\ \land\
\exists n\in\mathbb N,\ bp^n\in I.
\]

The proof establishes the actual equality of the restricted algebra
image with the displayed finite submodule. The polynomial core allows
zero divisors; its integral and finite-image wrappers need only
`Nontrivial O`, rather than the source's domain premise. The point
need not factor through `ψ`, and `n=0` legitimately handles a point
outside the quotient support. The integral-image premise and faithful
coefficients have separate compiled failure controls.

#### Completing the slice and length-one steps

Producing the slice relation is the substantive geometric step.
The [slice proof][slice] uses the actual ring
`C=(A/(I+(f−1)))[1/(πg)]`, where `π` is a coefficient uniformizer.
[FtHolds.lean][ft] supplies finite type from the specified finite
homogeneous generation and degree-zero image hypotheses. Every
nonzero coefficient becomes a unit in this localization.

The next three local modules now reconstruct the entire `hder`
subargument of the slice proof. The
[Euler module](../../CommutativeAlgebra/GradedEulerDerivation.md)
first constructs an actual `Derivation O A A` from the finite
homogeneous expansion, `E_A(∑a_j)=∑j a_j`. Additivity of degrees
gives the product rule, and homogeneity gives `E_A(I)⊆I`. Composing
with `ξ:A→ₐ[O]K` gives the actual point derivation

\[
E(a_j)=j\,\xi(a_j)\qquad(a_j\in A_j),
\]

which kills `I` whenever `ξ` does. This construction works over
commutative target rings in every characteristic. The source's
arbitrary-linear-map formulation with the same homogeneous values is
also proved, by uniqueness on the direct-sum components.

The [slice rigidity module](../../CommutativeAlgebra/GradedSlicePointDerivation.md)
retains the full `M4` premise. For a point of the actual `C`, the
pullback `ξ` satisfies `ξ(f)=1` and `ξ(g)≠0`, supplying the two-signed
condition. A point derivation `D` on `C` pulls back to `D′` killing
both `I` and `f`. The constructed Euler map kills `I` and has
`E(f)=−2`. Dependence gives `αD′+βE=0`, with the coefficients not
both zero. Evaluation at `f` forces `β=0`; then `α≠0` forces `D′=0`.
Euler itself is defined on `A` and generally does not descend through
the normalized slice ideal: its nonzero value on `f−1` is precisely
the direction removed by the normalization.

The [localization pullback module](../../CommutativeAlgebra/LocalizedPointDerivation.md)
proves the return from `D′=0` to `D=0`. Every actual fraction satisfies
`z·ι(t)=ι(r)` for an allowed denominator `t`. The product rule gives
`ψ(ι(t))D(z)=0`, and this coefficient is a unit. This proof works
even when the target ring has zero divisors and does not assume the
localization map is surjective. The final combined endpoint is the
actual source assertion `∀ψ:C→ₐ[O]K, PtDer ψ K=⊥`, verified in the
imported audit with the source's genuine submodule carrier.

The general combined theorem permits any negative degree `d` and
positive degree `e`, without equal magnitudes, but requires
`(d:K)≠0`. The original `−2,+2` specialization follows from
characteristic zero of `O` and faithful `O→K`. A nonzero integer
degree is insufficient: in characteristic two, `f=t²` has degree
`−2` in `k[t,t⁻¹]` but zero derivative, and the slice
`k[t,t⁻¹]/(t²−1)` retains a nonzero tangent direction. The Euler
audit checks actual Laurent grading examples, including this vanishing
of the degree cast, and the failure to preserve a nonhomogeneous ideal.

The private `et_unram` in [EtHolds.lean][et] now has a checked local
counterpart in
[PointDerivationUnramified](../../CommutativeAlgebra/PointDerivationUnramified.md).
For an injective residue embedding `ι:C/m→ₐ[O]K`, any actual
`C`-linear map `F:Ω[C/O]→C/m` produces the point derivation
`ι ∘ F ∘ d` at `ι ∘ q`. Its forced vanishing and injectivity of
`ι` kill `F` on the spanning set `d(C)`. Consequently every dual
functional of the actual residue-field vector space `Ω/mΩ` vanishes,
so that fiber is zero. The finite-module Nakayama argument then gives
`Ω[C/O]=0` and `Algebra.FormallyUnramified O C`. The core needs only
finite generation of `Ω` and allows `K` to be any commutative ring;
the finite-type wrapper supplies finite generation. Dual separation
takes place over the field `C/m`.

[FiniteTypeResiduePoints](../../CommutativeAlgebra/FiniteTypeResiduePoints.md)
supplies the residue embeddings for a finite-type algebra over a
field with an algebraically closed target. Zariski's lemma makes each
maximal residue field a finite algebraic extension of the base field,
which embeds into the target. Its second return proves that points
separate a reduced Jacobson ring when these residue embeddings exist:
a nonzero element survives in some maximal residue field, hence in
the corresponding point.

[FiniteTypePointRigidity](../../CommutativeAlgebra/FiniteTypePointRigidity.md)
now proves the full conditional `et_holds` return. Let `O` be a
domain, let `K` be an algebraically closed field with faithful
`O`-action, and let `C` be finite type over `O`. Assume every nonzero
coefficient of `O` maps to a unit in `C`, and all point derivations
vanish. The proof constructs compatible actual `FractionRing O`
algebra structures on both `C` and `K`. It supplies the residue
embeddings, proves formal unramifiedness over `O` and then over its
fraction field, and obtains a finite-dimensional reduced algebra over
that field. Distinct field-algebra maps are linearly independent, so
there are finitely many of them. Every original `O`-algebra point
respects the fraction scalars, and the proved extension of such points
is injective. Finally, the reduced Jacobson argument gives

\[
\operatorname{Finite}(C\to_{O\text{-alg}}K),
\qquad
\bigl(\forall\xi:C\to_{O\text{-alg}}K,\ \xi(x)=0\bigr)
\Longrightarrow x=0.
\]

The same module applies the previous `M4` theorem to the actual graded
slice `C`, including the original `−2,+2` specialization. Finite type
and inversion of every nonzero coefficient remain explicit inputs.
Finiteness of the algebra is over `FractionRing O`, not asserted as
an `O`-module. The generic return needs neither a DVR nor completeness
nor characteristic zero once its stated suppliers are available.
The imported audits check the exact source `PtDer = ⊥` form of
`et_holds` and the literal graded-slice endpoint. Formal unramifiedness,
residue embeddings, the finite/reduced return, and point separation
are therefore no longer open local leaves under these hypotheses.

The supply and return around `et_holds` in `FtHolds` and
[SliceHolds.lean][slice] now have complete local proofs:

1. [FiniteTypeGradedQuotient](../../CommutativeAlgebra/FiniteTypeGradedQuotient.md)
   uses the actual finite-generation component of `IsWRing.gen` and
   literal `M2` quotient-image condition. Finitely many module
   generators for the image of degree zero, together with the images
   of the extra algebra generators, generate `A/I` as an `O`-algebra.
   Quotienting by `f−1` and adjoining the inverse of the image of
   `πg` give finite type of the same actual `C`. The degree-zero
   algebra itself need not be module-finite. The source's restrictions
   on the extra generators' degrees are unused in this argument.
2. Choose an irreducible uniformizer `π`.
   [DVRLocalizedCoefficients](../../CommutativeAlgebra/DVRLocalizedCoefficients.md)
   proves that inverting `πg` makes
   `π` a unit. Every nonzero coefficient has the actual factorization
   `uπ^n`, so its image is a unit. No target domain or nontriviality
   assumption is needed; this remains valid for the zero localization.
3. [GradedSliceSeparation](../../CommutativeAlgebra/GradedSliceSeparation.md)
   proves restriction, unique lifting, and exact range equality for
   the normalized points `ξ(I)=0`, `ξ(f)=1`, `ξ(g)≠0`.
   The quotient universal property descends `ξ`, and the nonzero
   value of `πg` in the target field permits the Away lift.
   Uniqueness uses localization homomorphism extensionality, never
   surjectivity of `A→C`. The core transport requires only that `π`
   have nonzero image in the point field; the complete source return
   supplies this from faithfulness and the nonzero uniformizer.
4. If `h` vanishes at all normalized points, point separation kills
   its image in `C`. The module proves the actual kernel equivalence
   `φ(h)=0 ↔ ∃n, π^n • (g^n*h)∈I+(f−1)`. The coefficient
   `c=π^n` is nonzero. This establishes the precise slice membership
   used by the earlier dehomogenization return.

The resulting `slice_holds` theorem retains the actual `hgen`, `M2`,
homogeneous ideal, and full `M4` data. Finite type, coefficient units,
point separation, and slice membership are derived inside the proof.
The general statement allows `d<0<e` and retains `(d:K)≠0`;
the source `−2,+2` specialization uses faithful characteristic-zero
coefficients. Adic completeness, the augmentation, and the source's
`IsCO` condition on degree zero do not enter this return.

The same module now proves the source's next `red` property. If
`h∈A_w`, `b∈A₀`, `σ(b)≠0`, and `b h^n∈I`, then every field
point killing `I` kills `bh`: either it kills `b`, or it kills `h`.
This also handles `n=0`; it does not assume that such a point has
nonzero value on `b`. Applying the full slice theorem to `bh` gives
`c g^N (bh)∈I+(f−1)`. For `τ=fg` with `σ(τ)≠0`, the earlier
dehomogenization theorem constructs a degree-zero multiplier
`b′=c τ^(N+m)b`, with `σ(b′)≠0` and `b′h∈I`.
The original degree-zero point `σ` need not extend to an `A`-point.
This is the exact homogeneous nilpotence-to-vanishing supplier, not
an additional `IsReduced` instance for an entire prime-localized ring.

The [length-one module](../../CommutativeAlgebra/GradedPointLengthOne.md)
proves the precise quadratic cyclicity step using this return.
For a weight `w`, powers of the original degree `−2,+2` elements give
`e∈A_{−2w}`, a complementary `e′`, and `k∈ℕ` with `ee′=τ^k`.
If `σ(h₀²e)≠0` for some `h₀∈A_w`, then

\[
(h_0^2e)h=(hh_0e)h_0
\]

shows that the localized weight piece is generated by `h₀`. If every
such quadratic value vanishes, the proved finite-image lemma gives
`b(h²e)^n∈I`; multiplication by `(e′)^n` yields
`bτ^{kn}h^{2n}∈I`, and `red` kills the class of `h`. This quadratic
construction uses the source degrees `−2,+2`; the generalized
nonzero-degree dehomogenization theorem alone does not supply its
degree arithmetic.

Likewise, if `p∈ker σ`, finite-image nilpotence gives `bp^n∈I`.
Multiplying by `h^n` and applying `red` to `ph` proves local
maximal-ideal annihilation. Put `R=(A₀)_(ker σ)` and let `N` be
the actual localized quotient piece. The map `R→N` sending `r`
to `r[h₀]` is surjective by cyclicity. Its kernel contains the
maximal ideal of `R`, so it factors to a surjection
`R/𝔪_R→N`. This residue field has module length one, hence
`Module.length R N≤1`. The zero-generator case gives length zero
without requiring that the localized piece be nontrivial.

The final source-shaped theorem assumes precisely that the ideal
generated by degree `−2,+2` products is not contained in `ker σ`.
If every generating product vanished under `σ`, its span would lie
in the kernel; contraposition therefore supplies the required `f,g`.
No extension of the degree-zero point to the full graded algebra is
assumed. Applying the theorem at every weight supplies the premise of
the existing five-family finite-squaring theorem. Its imported audit
checks that composition on the literal ideals, giving `2^(r+1+r′)`.

The nondegeneracy premise cannot be deleted. Analytically, take
`A=O[x,y]` with both variables of degree one and `I=(x,y)^2`.
Finite generation and `M2` hold, while `M4` is vacuous because every
negative-degree element is zero, so there are no two-signed points. The degree-one
piece at the faithful coefficient-field point has length two.
The opposite-degree product ideal is zero, so the retained
nondegeneracy hypothesis excludes this example. This is a mathematical
counterexample, not an assertion that a full polynomial-grading fixture
was compiled in this pass.

The next source-specific upper-route comparison is
`locLen_mQ_gr_le_locLen_aPiece` in
[LocalizedLengthLeOfSurjective.lean][reeslength]. Its actual Rees lattice
and monomial map require a saturation/kernel argument using powers
of a degree-zero product nonvanishing at `σ`, for every `d≥1`.
The source obtains saturation through `oz(±2n)=oz(±2)^n`; that
global equality uses generator-degree restrictions omitted from our
weaker `hgen`, so it cannot be imported as a consequence of that
hypothesis alone. For example, the grading on `O[z]` with `deg z=4`
is finitely generated, but its degree-four piece is not the square
of its zero degree-two piece.

The following direct saturation argument is an analytical alternative;
its Lean verification is **NOT_RUN**. For a multi-index `μ∈ℕ³`,
put `L=μ₀+2μ₂` and `R=μ₁+μ₂`. The actual third lattice generator
contains `A_{−2}² A₂`, so the product-lattice definition gives
`A_{−2}^L A₂^R ⊆ lat(mN) μ`. If `a∈A_{2(R−L)}` and `R≥1`, then

\[
\tau^{L+R}a=f^L g^{R-1}\bigl(f^R g^{L+1}a\bigr).
\]

The parenthesized factor has degree two, proving membership in that
product submodule. If `R=0<L`, use instead
`τ^L a=f^(L−1)(f g^L a)`, whose parenthesized factor has degree
minus two. If `L=R=0`, then `μ=0`, `a∈A₀`, and exponent zero
works in the coefficient submodule generated by one. Thus the single
exponent `L+R` supplies the required lattice membership in all cases,
without the global power identity. Nonvanishing of `σ(τ)` then makes
this multiplier admissible at the point. This establishes only the
analytical saturation leaf; the actual Rees maps, their kernel
comparison, and the full localized-length return still need local
construction and checking. Finite orbit coverage and the finite
annihilator/support suppliers also remain separate.

The later [Herbrand estimate][herbrand] has a separate substantial
role. It relates the finite-length cokernel-minus-kernel quantity for
multiplication by an element to a sum of its valuations at actual
coefficient-field points. It requires a finite module, the stated finite
annihilator quotient, nonzero point values, local length bounds, and
vanishing outside the finite selected support. Its proof uses prime
filtration and exact-sequence additivity. Source inspection of this
body is not a completed local or external proof replay.

### Source identities for this deeper inspection

All these files were matched byte for byte to the mathematical pin at
the top of this record. Representative SHA-256 values are:

| Pinned file | SHA-256 |
|---|---|
| [NumberU3US.lean][onecharstatement] | `2700c8f6ef0f5a9d68f120028d2d70454239c0c70a38da46d83001fb7a4a150f` |
| [FOneCharU.lean][onecharproof] | `7ba4909bace94627f5dab4a28180f53c93b7b8be03b2ec1d33fba9cf5708a2d9` |
| [VlenLe.lean][vlen] | `c52a30320988ce20b653bb6bc17d23ed2cd58105982cd5b50bfae048392c6fb7` |
| [ModelUpper.lean][modelupper] | `556e9ebbbf6983e2be65a7d647cad666cb96f3d6c0c7eff5aae62b80a947f880` |
| [LinkedUnlE.lean][linked] | `107b75233150ebd8a27bd37ae350a295996a79c863f3d469a925c0f1f78fd0a7` |
| [AlgMemCoef.lean][algcore] | `82a16f09d05845c3e9f495c2f10c7048abeae9315506c368812e7871aa4b30c6` |
| [LocLenAPieceSupSpanSqLeAdd.lean][squarelength] | `7ce3da392d0b3655fee9bad840eb5d2743672a654b1f2d309948d012daa5fcf5` |
| [ToDegInjective.lean][gradedobjects] | `af6ef0b972e029cff93e557ee5e94d33f623e296189f9c7cc95cb03456edca2d` |
| [OrbitVanishingLocal.lean][orbitlocal] | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |
| [LocLenAPieceIdeal2LeTwoPow.lean][squarefamily] | `951a47248af0fdb1f63dfe57b95080c0ef234b008e9caa016111dd0f2fa165a8` |
| [LocLenQuotientWeightPieceLeOne.lean][lengthone] | `fbd4cd271111e957575ff3514a0be7b74ca6d0be0c2dc48fe3e852ca8e7a0116` |
| [LocalizedLengthLeOfSurjective.lean][reeslength] | `1faba07150c63f3f5323baaaf168ada8f0e7e1871a7f98bfb55c7a24b146dd74` |
| [SliceHolds.lean][slice] | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |
| [DehHolds.lean][deh] | `02f6ce5034e64a7a987eaedbaede444e5f82b7af76fe43b5a868150a64225aa0` |
| [FtHolds.lean][ft] | `f3934878da5e7bb158d2ba4571d0d4f22531a354151813dda2025e3d59e4f298` |
| [EtHolds.lean][et] | `f2c5fbe52de89015a446afccc25c2637dd35794692d1c4ce82a8d55f77d26f80` |
| [ResMapBijective.lean][ptder] | `20e63b53f95a2cd6e41afdd9ed4269a42e59ae5fc934ab620109a7fd6fbbed2e` |
| [HerbrandFinLen.lean][herbrand] | `00e8a2a5990e6c9f4291685e13bc2b859d08b277446a2fa03f684a9c3914faf1` |

## From count bounds to the VWin budget

[WindowBoundOfLiteratureLevel.lean][countassembly], declaration vwin_of_hypotheses_H_E_alt, supplies CountI, CountII, CountIII and CountV from the literature/automorphy package and LemmaK. [HVCore.lean][hvasm], declaration Core.of_four_alt, also supplies CountZ, ThmBab and ThmBcFree, then invokes the count assembly in [JointWinOfCounts.lean][joint]. CountI alone is insufficient for this step.

The precise JointWin, ThmBc and admitted predicates are in [PrimeSetBoundDataOfPrimitiveChar.lean][inputs]. The consumer in [AdmissibleOfPageN.lean][window] is

- UpperTheory.V.vwinAt_of_joint: 1≤Ct, JointWin Ct and ThmBc Ct imply VWinAt ψ Ct;
- UpperTheory.V.vwin_of_joint: the specialization Ct=401.

The consumer sets t(x)=floor(x^Ct), combines two-primary, plus and minus bounds, and uses u=condF(E)t(x). The eventual conductor estimate [log_conductor_mul_height_le_of_pageN][conductor] supplies u≥1 and log u≤2x^(eps/4).

It then applies UpperTheory.V.error_terms_le_sqrt_exp_rpow in [ErrorTermsLeSqrtExpRpow.lean][numerical] to the complete retained error:

\[
e^{x^{4\varepsilon/5}}\log2+
Ke^{8x^{\varepsilon/4}}+
u^C+Ce^{x^{4\varepsilon/5}}
\le\sqrt{e^{x^\varepsilon}}.
\]

K,C are arbitrary fixed reals; eps>0. An explicit sufficient cutoff is max(1,T^(5/eps)), with

\[
N_0=\log2+|C|+|K|+1,\quad
D=9+2|C|,\quad T=2(D+\log N_0+1).
\]

For b=x^(4eps/5), s=x^(eps/5), the left side is at most N₀ exp(Db), while b≥1, s≥T and x^eps=bs imply log N₀+Db≤bs/2. No polynomial term or fixed coefficient is dropped.

The output [VWin][vwin] bounds the finite shaLen sums for **1≤e<floor(x^401)** by sqrt(exp(x^eps)), on complete intervals [Y,Y²] with X^(1/J)≤Y and Y²≤X, for the specified prime pairs and character fields. The parameter eps is in (0,1/52). This square root is not a statement about choosing sqrt(X) theta lifts.

## Independent local continuations

[PowerExponentialBudget.lean](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.lean)
now proves the same numerical absorption statement directly from Mathlib,
using separate term budgets and eventual power growth. Its
[source record](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.md)
retains the quantifier order and actual verification scope. This local
reconstruction does not substitute the declaration into the external
build or verify the arithmetic suppliers listed above.

The subsequent finite arithmetic continuation adds four checked modules:

| Local component | Established source return |
|---|---|
| [Trace separation](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceSeparation.md) | The exact scaled difference is nonzero and integral, with lower norm 5/2 and logarithmic bound 2e log q+1. |
| [Integral Galois product](../AlgebraicNumberTheoryGlobalFields/GaloisInvariantIntegerProduct.md) | The literal finite product is an actual integer, with nonvanishing and complete indexed logarithmic cost. |
| [Prime budget](../AlgebraicNumberTheoryGlobalFields/IntegerPrimeLogBudget.md) | Finite prime valuation sums are bounded by log|n|; two distinct auxiliary exceptions are covered under the supplied pointwise estimates. |
| [Trace-witness assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.md) | One nonzero integer, equal to the full trace product, works for every finite prime set. |

All 22 new theorem bodies compiled with `--trust=0` and warnings treated
as errors. All 22 transitive axiom queries reported only `propext`,
`Classical.choice`, and `Quot.sound`. Exact-target and hostile-control
audits passed; the component records distinguish their trust settings
and retain earlier failed development attempts. Fresh full-dependency
replay and independent kernel implementations are `NOT_RUN`. These are
local reconstruction results, not a completed external submission check.

The next continuation adds three modules and 25 further theorem bodies:

| Local component | Established source return |
|---|---|
| [Integral p-adic subproducts](../AlgebraicNumberTheoryGlobalFields/PadicIntegralSubproduct.md) | Integral factors lie in the unit ball; a per-orbit injective class selection controls the full product. Scale removal as an inequality works at every prime. |
| [Norm-to-valuation budget](../AlgebraicNumberTheoryGlobalFields/PadicNormValuationBudget.md) | The actual negative-log norm sum is bounded by `padicValInt` of a nonzero integer; selected nonvanishing follows from the norm premise. |
| [Trace-valuation assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.md) | The same literal trace-product integer controls all later primes and valid selected families, while retaining the explicit observation supplier. |

All 25 maintained theorem bodies and the exact-target audits passed
`--trust=0` with warnings as errors. Every transitive axiom report lists
only `propext`, `Classical.choice`, and `Quot.sound`. Formal controls
exercise nonintegral factors, duplicate class selection, scale
strictness, zero integer witnesses, reversed norm comparison,
multiplicativity at zero, and the scalar sign. The adjacent records
retain the actual earlier elaboration/audit failures and exact source
digests. Fresh full-dependency replay, an independent kernel
implementation, and substitution into the external automorphic consumer
are **NOT_RUN**. This evidence concerns the local finite reconstruction.

The graded continuation adds three modules and 21 public theorem bodies,
plus two private ideal-containment helpers:

| Local component | Established source return |
|---|---|
| [Graded quotient maps](../../CommutativeAlgebra/GradedQuotientExact.md) | Actual shifted multiplication, quotient projection, homogeneous kernel preimages, exactness, and projection surjectivity. |
| [Localized lengths](../../CommutativeAlgebra/LocalizedGradedLength.md) | The actual `Module.length` inequality after prime localization, including the source's field-point specialization. |
| [Finite squaring](../../CommutativeAlgebra/GradedSquareFamilyLength.md) | The variable-degree `2^n c` induction and the expanded five-family `2^(r+1+r′)` return, with the original all-weight premise retained. |

All three maintained sources passed `--trust=0` with warnings as errors
against the unchanged root Lean/Mathlib pins. Their three imported
endpoint/control audits passed with the same flags, and all 21 public
theorem axiom reports list exactly `propext`, `Classical.choice`, and
`Quot.sound`. The adjacent records bind
the source and imported audits to their exact digests, distinguish
analytical counterexamples from compiled controls, and retain failed
development attempts. A separate source review compared the actual
objects, hypotheses, degree shifts, and final five-family ideals.
Fresh full-dependency replay, an independent kernel implementation, and
substitution into the external deformation consumer are **NOT_RUN**.

The dehomogenization continuation adds three modules, 14 public theorem
bodies, and two private finite-support helpers:

| Local component | Established source return |
|---|---|
| [Dehomogenization](../../CommutativeAlgebra/GradedDehomogenization.md) | A homogeneous slice relation is killed modulo the original homogeneous ideal by a power of the nonzero-degree element. |
| [Slice localization](../../CommutativeAlgebra/GradedDehomogenizationLocalization.md) | Actual Away localization equivalence and the degree-zero multiplier `cτ^(N+m)b`, with vanishing of the original quotient-piece class at `ker σ`. |
| [Finite-image nilpotence](../../CommutativeAlgebra/FiniteAlgebraPointNilpotence.md) | A nonzero polynomial relation supplies a point-nonzero multiplier; the exact finite degree-zero quotient image supplies that relation. |

All three maintained sources and all three imported endpoint/control
audits passed `--trust=0 -DwarningAsError=true`. All 14 public theorem
axiom reports list exactly `propext`, `Classical.choice`, and
`Quot.sound`. The adjacent records bind the exact source, produced
object, imported audit, and retained failures. Formal controls exercise
zero degree, infinite support, a nonhomogeneous slice element, zero and
inadmissible denominators, absence of a polynomial relation, and
nonfaithful coefficients. A separate mathematical/source review checked
the actual objects and saved evidence; it did not run another kernel.
All nine pinned package heads and their tracked source cleanliness were
checked, with no root pin change. Fresh full-dependency replay, an
independently implemented kernel check, and substitution into the
external geometric consumer remain **NOT_RUN**.

The Euler/tangent continuation adds three modules, 17 public theorems,
one private scalar-dependence helper, and three actual Euler-map
definitions:

| Local component | Established source return |
|---|---|
| [Graded Euler derivation](../../CommutativeAlgebra/GradedEulerDerivation.md) | Actual `Derivation O A A`, preservation of homogeneous ideals, point composition, and both exact private source Euler endpoints. |
| [Localized point derivations](../../CommutativeAlgebra/LocalizedPointDerivation.md) | Actual localization pullback determines a point derivation; genuine quotient-Away zero and equality returns, even for target rings with zero divisors. |
| [Graded slice rigidity](../../CommutativeAlgebra/GradedSlicePointDerivation.md) | Explicit `M4` plus the nonzero field-valued degree gives zero point derivations on the actual normalized and localized slice. |

All three final sources and imported endpoint/control audits passed
`--trust=0 -DwarningAsError=true` at the unchanged root pins. The
17 public axiom sets are subsets of `propext`, `Classical.choice`, and
`Quot.sound`; the two generic localization theorems use only `propext`
and `Quot.sound`, while the other 15 report all three. Controls include
actual Laurent gradings in characteristic zero and two, a nonhomogeneous
ideal, genuine nonsurjective localization, failure for an arbitrary
injective algebra map, unit cancellation in the presence of zero
divisors, and the exact source point-derivation submodule. The records
retain every earlier attempted check at its actual result and source
identity. Separate read-only mathematical and saved-evidence review
does not claim a second kernel execution. Fresh full-dependency replay,
independently implemented kernel checking, and external-consumer
substitution remain **NOT_RUN**.

The differential/point continuation adds three modules and 16 public
theorems, with no new definitions or private theorem helpers:

| Local component | Established source return |
|---|---|
| [Point derivations and unramifiedness](../../CommutativeAlgebra/PointDerivationUnramified.md) | Actual residue-valued differential maps, maximal-fiber dual separation, finite-module Nakayama, and the complete `et_unram` return. |
| [Finite-type residue points](../../CommutativeAlgebra/FiniteTypeResiduePoints.md) | Actual maximal residue embeddings into an algebraically closed field and separation in a reduced Jacobson ring. |
| [Finite-type point rigidity](../../CommutativeAlgebra/FiniteTypePointRigidity.md) | Finite-dimensionality and reducedness over the fraction field, finite original `O`-point set, point separation, exact conditional `et_holds`, and the actual graded-slice specialization. |

All three final maintained sources and all three imported
endpoint/axiom/control audits passed
`--trust=0 -DwarningAsError=true` at the unchanged Lean and Mathlib
pins. Fifteen public theorem axiom queries report exactly `propext`,
`Classical.choice`, and `Quot.sound`; fraction-scalar compatibility
uses only `propext` and `Quot.sound`. The imported audits check the
source's genuine point-derivation submodule and original point type.
Compiled controls cover noninjective residue maps into the zero ring,
the nonzero divisible `ℤ`-module `ℚ`, relative unramifiedness of a
nonreduced identity algebra,
absence of real points on `ℂ/ℝ`, nilpotents invisible to field-valued
points, a nonvacuous field-base instance, and missing coefficient
inversion. The adjacent records distinguish analytical counterexamples
from compiled assertions and retain every earlier failed attempt with
its actual source identity and outcome. All nine package heads and
tracked source cleanliness, compiler identity, and unchanged root
imports/dependency configuration were rechecked. Separate read-only
mathematical/source and saved-evidence review did not execute another
kernel. Fresh full-dependency replay, independently implemented kernel
checking, and external-consumer substitution remain **NOT_RUN**.

The companion [route walkthrough](SubmittedRiemannHypothesisRoute.md)
explains the one-sided Landau mechanism and the exact local consumers.
Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

The normalized-slice and length-one continuation adds four modules and
24 public theorems, with no private theorem helpers or new mathematical
definitions:

| Local component | Established source return |
|---|---|
| [Finite-type graded quotients](../../CommutativeAlgebra/FiniteTypeGradedQuotient.md) | Finite generation over degree zero and the actual `M2` quotient image supply finite type of the genuine quotient and normalized Away slice. |
| [Localized DVR coefficients](../../CommutativeAlgebra/DVRLocalizedCoefficients.md) | A specified uniformizer becoming a unit makes every nonzero coefficient a unit, including in a zero target ring. |
| [Graded slice separation](../../CommutativeAlgebra/GradedSliceSeparation.md) | Exact normalized-point restriction and unique lifting, finite point set, the actual localization-zero criterion, full `slice_holds`, and homogeneous `red` from raw source data. |
| [Graded point length one](../../CommutativeAlgebra/GradedPointLengthOne.md) | Actual quadratic cyclicity, prime-kernel annihilation, residue-field surjection, and the all-weight length-one theorem under the literal opposite-degree-product nondegeneracy condition. |

All four final maintained sources and their four final imported
endpoint/source-object/control audits passed
`--trust=0 -DwarningAsError=true`. Every one of the 24 public theorem
axiom queries lists exactly `propext`, `Classical.choice`, and
`Quot.sound`. A separate successful imported audit derives the
five-family `2^(r+1+r′)` bound: it keeps the unsquared ideal named,
identifies it with the literal span by an explicit equality, and
transports the derived all-weight bound to the existing consumer.
That identity is reflexive when the ideal is defined by the source's
span; it adds no geometric or length hypothesis. Both declarations
in that scratch consumer audit also report the standard three axioms.

The compiled controls include missing finite-generation/image-finiteness
inputs, missing coefficient inversion, nonfaithful coefficient maps,
points on the excluded localization divisor, the necessity of a
positive denominator exponent, zero localizations and modules, a
two-dimensional residue-field module without cyclicity, and a cyclic
dual-number module without maximal-ideal annihilation. The adjacent
records separate these from analytical counterexamples to dropping
`M4` or the opposite-degree-product condition. They retain every
failed source, fixture, and diagnostic-probe attempt, including the
literal five-family fixture's elaboration-limit failures. The
successful equality-transport consumer check does not relabel those
earlier failures as passes. The intermediate eight-theorem slice
source is distinguished from the final nine-theorem source.

All nine pinned package heads and tracked source cleanliness were
checked, together with the compiler identity and unchanged root
imports/dependency configuration. Previously checked local objects
were reused only with matching source/object/attempt identities.
Separate read-only mathematical and saved-evidence review is not
another kernel execution. Fresh full-dependency replay, independently
implemented kernel checking, and substitution into the external
geometric consumer remain **NOT_RUN**.

## Remaining scope

The numerical absorption and integer-product arguments do not establish the underlying eigensystem count, OneCharU_s, the other count cases, LemmaK, ThmBab, or ThmBc. Nor does their source-level assembly establish the theta/Galois suppliers of the literature package or the full ChebyshevInequalityAtWindowScale construction.

The meaningful remaining verification is the actual source-bound proof of those inputs and their integration, with exact target comparison and transitive axiom/replay evidence. This record identifies inspected arguments and their consumers; it does not promote the external RH/Dirichlet-GRH endpoint to an accepted theorem.

The private `vl_bound` and injective class-map norm comparison now have
checked local counterparts. Constructing the arithmetic classifier and
proving the substantive `OneCharU_s` supplier remain necessary to apply
the checked integer budget to actual deformation lengths. The actual
graded quotient sequence, localized inequality, finite squaring,
nonzero-degree dehomogenization, actual post-slice localization return,
and finite-image local nilpotence now have local checked proofs.
The actual Euler derivation, homogeneous-ideal preservation, localization
pullback injectivity, and complete `M4`-to-zero-slice-derivations step
also now have checked local proofs. Actual Kähler-differential
detection, residue embeddings, Nakayama, and the full conditional
`et_holds` return now supply formal unramifiedness, reducedness,
finiteness of the original point set, and point separation. The actual
graded-slice return now derives finite type and coefficient inversion
from `IsWRing.gen`, `M2`, and the DVR uniformizer, proves unique lifting
of normalized points, and clears the actual localization denominator.
The full slice theorem supplies the homogeneous `red` return.
Quadratic cyclicity, prime-kernel annihilation, and the residue-field
surjection now prove the all-weight length-one bound under the original
nondegeneracy condition, and supply the finite-squaring premise.
The next upper-route target is the actual Rees/monomial comparison
`locLen_mQ_gr_le_locLen_aPiece`. Finite orbit coverage, the finite
annihilator/support construction, Herbrand, the lower cotangent
comparison, and the original arithmetic suppliers of `M2` and `M4`
remain necessary for the full factor-two deformation-to-valuation
estimate. The new local theorem derives its intermediate algebraic
inputs; it does not construct those original arithmetic data.

[count]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TCardK.lean
[cohomology]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/AutomorphicForms/TemperedLocalComponents/CohBoundFree.lean
[systems]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FrobeniusTraceCountBoundOfCmEigensystemCount.lean
[tracedata]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/WinDefs.lean
[product]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/FrobeniusTraceCountBoundOfRatEigensystemCount.lean
[integer]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/BuildingsResidueChars/ExistsIntEqProdOfGaloisPermutedIntegral.lean
[number]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/KeepNumU.lean
[valuation]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FPropGKU.lean
[sum]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/CorGSumLog.lean
[counti]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/CountI.lean
[countassembly]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/WindowBoundOfLiteratureLevel.lean
[hvasm]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/HVCore.lean
[joint]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/JointWinOfCounts.lean
[numerical]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/ErrorTermsLeSqrtExpRpow.lean
[conductor]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/LogConductorMulHeightLeOfPageN.lean
[window]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/AdmissibleOfPageN.lean
[vwin]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean
[inputs]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/PrimeSetBoundDataOfPrimitiveChar.lean
[onecharstatement]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/NumberU3US.lean
[lengthdefs]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/DirichletPrimeToLPartMulLPowerPart.lean
[onecharproof]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FOneCharU.lean
[vlen]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/VlenLe.lean
[modelupper]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/ModelUpper.lean
[linked]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/LinkedUnlE.lean
[maincot]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/MainCotSpan.lean
[algcore]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/AlgMemCoef.lean
[mprime]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/Mprime.lean
[lemmap]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/LemmaP.lean
[orbitlocal]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean
[framed]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/FramedTwoCoboundaries.lean
[squarelength]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceSupSpanSqLeAdd.lean
[twosigned]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/TwoSigned.lean
[low]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/AdmissibleMonoIdeal.lean
[gradedobjects]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/ToDegInjective.lean
[squarefamily]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceIdeal2LeTwoPow.lean
[lengthone]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenQuotientWeightPieceLeOne.lean
[reeslength]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocalizedLengthLeOfSurjective.lean
[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
[deh]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/DehHolds.lean
[ft]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/FtHolds.lean
[et]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/EtHolds.lean
[ptder]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/ResMapBijective.lean
[herbrand]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/HerbrandFinLen.lean
