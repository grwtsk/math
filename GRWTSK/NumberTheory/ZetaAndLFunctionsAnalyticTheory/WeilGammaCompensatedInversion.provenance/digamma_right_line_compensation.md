# WGC-v1-03: digamma_right_line_compensation

Local declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompensatedInversion.digamma_right_line_compensation`.
Maintained source: `../WeilGammaCompensatedInversion.lean`.
Primary MSC2020: 11M41.
Source SHA-256: `0b0d3eaeebb14c9afcb714e2ff83faae748bc9497c5ef59ce5408e120af953de`.

## Literal source statement

```lean
theorem digamma_right_line_compensation (a : ℕ) (t : ℝ) :
    let d : ℂ := (3 / 2 : ℂ) + Complex.I * (t : ℂ)
    let g := fun r : ℝ => (parityKernel a r : ℂ) *
      (1 - Complex.exp (-d * (r : ℂ)))
    IntegrableOn g (Ioi 0) ∧
    Complex.digamma (((2 : ℂ) + (a : ℂ) + Complex.I * (t : ℂ)) / 2) -
      Complex.digamma ((a : ℂ) / 2 + 1 / 4) =
        2 * ∫ r in Ioi (0 : ℝ), g r
```

## Complete argument and exact consumer

Set alpha=a+1/2>0 and d=3/2+it, with Re d=3/2>=0. Then
(alpha+d)/2=(a+2+it)/2 and alpha/2=a/2+1/4.
The scalar compensatedDensity is literally
(parityKernel a r : C)*(1-exp(-d*r)); no kernel or normalization is changed.
Apply CDI-v1-03 for integrability and CDI-v1-04 for the exact COMPLEX digamma
identity. This retains the imaginary part of the line multiplier and applies
to every real height, not only to a finite checked band.
Consumer: paired inversion WGC-v1-02 gives the shift energy after the justified
product-integral interchange detailed below. This is not a sign theorem.

## Individual source correspondence

The new `CompensatedDigammaIntegral.digamma_sub_eq_compensated_integral`, NIST DLMF 5.9.16, and native `WeilGammaData.parityKernel`, `gammaConstant`, `real_digamma_eq`. The representation changes the scalar variables only; all arithmetic conventions are retained.

## Complete written return to the physical gamma/conductor term

This subsection is a WRITTEN ANALYTICAL PROOF, not a claim that its final
product-Fubini assembly has been elaborated or is a declaration in these files.
It states the exact remaining Lean integration obligation without postulating it.

Fix A>=0 and the canonical smooth compact complex f with tsupport in [-A,A].
Write D=derivativeL1Cost f 2, E=energy f, alpha=a+1/2, x=a/2+1/4,
d(t)=3/2+it and H(t)=V(2+it)+V(-1-it). The already maintained arbitrary-order
vertical strip estimate, at order 2 on these two actual lines, gives
 |H(t)| <= 2 D^2 exp(3A)/(1+|t|)^4.
Also |d(t)|<=3/2+|t|<=3(1+|t|)/2. CDI-v1-02 with alpha>=1/2 gives
 |G(alpha,d(t),r)| <= 9 |d(t)| exp(-r/4), r>0.
Therefore the joint integrand F(t,r)=H(t)*G(alpha,d(t),r) is measurable and
 |F(t,r)| <= 27 D^2 exp(3A) exp(-r/4)/(1+|t|)^3.
The integral of this majorant over R x (0,infinity) is exactly 108 D^2 exp(3A):
the r factor integrates to 4 and the two-ended t factor to 1.
This is an all-height/all-shift budget, uniform in every natural a. It is not
uniform in the source or support radius, nor is such uniformity claimed.
Fubini is therefore legitimate for the COMPENSATED product.

By WGC-v1-03 and WGC-v1-02,
 (1/(2pi))*integral H(t)[psi((a+2+it)/2)-psi(x)]dt
 = 2*integral_{r>0} K_a(r)e_f(r)dr.
Each side is genuinely integrable by the preceding bound, so no principal-value
prescription or totalized divergence is being equated. In particular the
physical gamma density is integrable as an actual function.

Inversion at zero gives (1/(2pi))*integral H=2E. WGC-v1-04 gives
(1/(2pi))*integral log(q)V(2+it)=log(q)E. Thus, for q>=1,
 (1/(2pi))*integral [log(q)V(s)+H(t)(-log(pi)/2+psi((s+a)/2)/2)]dt
 = [log(q)-log(pi)+psi(x)]E + integral K_a e_f, s=2+it.
The value psi(x) is real: the finite Euler logarithmic derivatives at positive
real x are real (log n and all reciprocal summands are real), and their native
limit remains in the closed real subspace. Its real part is the native
real_digamma_eq, so the bracket is exactly gammaConstant q a, not a shifted
constant. No positivity of this constant is used. The left side is the original
reflected archimedean/conductor block, since W(s)+W(1-s)=H(t) and W(1-s)=V(s).

Combine this with the published reflected_prime_line_eq_twistedPrime to obtain
the original arithmetic line value c_chi E + integral K_a e_f - S_chi,A(f).
For primitive nonprincipal chi this is exactly primitiveArithmeticValue; the
primitive hypothesis is what permits the conductor q to be the modulus. The
prime block remains signed. For conductor-one zeta add BOTH actual pole terms
Mplus*conj(Mminus)+Mminus*conj(Mplus) from the existing reflected residue theorem.
No pole-neutral subspace, spectral ordinate projection, simplicity assumption,
or imprimitive-GRH extension has been introduced.

The completed-source infinite zero-sum/criterion and test-domain transfers
must be checked using their actual native suppliers and evidence status. This
calculation does NOT prove the universal inequality S<=P+cE+integral K e.
Neither absolute convergence nor a positive gamma remainder establishes that sign.

## Pins, falsification, and disposition

Local attribution: grwtsk contributors. Date: 2026-11-12.
Native baseline: `c1085fe36d0bddaf69bf6b6ab67a708d5721eeb3`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

At d=0 the scalar identity is zero=zero; separately integrating its two
singular terms would be invalid. Alpha=1/2,d=-1 violates the Laplace domain
and gives a divergent tail, so analytic continuation alone is not enough.
Both parity values, both height signs, zero shifts and zero sources are covered.
Arbitrary complex phases are retained; the two zeta pole cross-products are
not replaced by squares. Real odd sources may have a negative pole term.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, full dependency build,
fresh kernel replay, transitive axiom audit, independent analytical review, and
whole-form numerical certification: NOT_RUN. Static checks and uncertified
scalar numerical experiments are not formal verification. Historical failures
are not promoted. No first current compiler error was identified without a build.
The native imported candidates keep their existing evidence status.

Coordination: math#1801, scope `6829876246`. No research claim is promoted by
this source-local record. The prescribed execution skill was inaccessible at
Noe `3a22e1022074ecc99d5cdeaabeb5dc919711a55b`; no dependent execution ran.
Next: exact-pin complete import build, then kernel/axiom and statement audits.
The written product-Fubini assembly is not yet a Lean theorem; universal
signed prime-gamma-pole domination remains the central arithmetic obligation.
