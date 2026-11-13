# Native real Weil gamma H1 continuity: source-exact head/tail budget

**Attribution:** grwtsk contributors. **Date:** 2026-11-13, America/Los_Angeles.
**Maintained Lean source candidate:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilGammaH1ShiftBudget.lean.
**Exact mathematical consumer:** The original fixed-window physical Weil H1 continuity statement WHS-v1-C of WeilH1SourceContinuity.md, and the previous original-sine source-to-physical-energy return in WeilH1SineProjectionReturn.lean.

**Assurance:** COMPLETE_WRITTEN_CLASSICAL_HEAD_TAIL_ARGUMENT; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; NO_LEAN_ELABORATION; NO_KERNEL_CHECK; NO_TRANSITIVE_AXIOM_AUDIT; NO_INDEPENDENT_MATHEMATICAL_REVIEW; RH/GRH_NOT_PROVED.

## 1. Genuine gamma source

For real whole-line f, define the *original physical* translation energy and its unchanged parity-indexed gamma response:

    E_r(f) = integral_(t in R) (f(t+r)-f(t))^2 dt,
    K_a(r) = exp(-(a+1/2)*r) / (1-exp(-2*r)), r>0,
    Gamma_a(f) = integral_(r>0) K_a(r)*E_r(f) dr.

These are the same translation integrals as the existing OddHighComplement.oddArchimedeanEnergy (when a=0) and the gamma part of PhysicalSineNegativeReturn.primitivePairedOddPhysicalValue (at a=gammaParity chi). New Lean source comparisons realGammaEnergy_eq_native_zeta and primitive_paired_source_gamma_rewrite explicitly establish that identity; there is no substitute positive matrix, spectral averaging, or omitted character phase. The conductor-dependent gammaConstant(q,a) remains the original separate scalar term.

The gamma energy is nonnegative because K_a(r)>=0 for r>0 and E_r(f)>=0. Its diagonal positivity must NEVER be interpreted as positivity of the full Weil form, which subtracts signed prime-power responses and includes a negative real-odd zeta pole contribution.

## 2. New actual-source large-shift inequality: no tail hypothesis

For real f in L2(R) and any r in R, the pointwise elementary inequality

    (f(t+r)-f(t))^2 <= 2*(f(t+r)^2 + f(t)^2)

has both sides integrable. Translation invariance of Lebesgue measure gives

    E_r(f) <= 4*integral_R f(t)^2 dt.                 (G-1)

This is an all-shift theorem, NOT a condition on the character or a zero distribution. The new Lean candidate realShiftEnergy_le_four_mass uses actual MemLp and integrable_sq, the true translation-preserving Lebesgue measure, and an integral comparison. It thus *discharges* the large-shift side of the H1 continuity budget without any assumed long-range shift estimate.

## 3. Small-shift H1 hypothesis and classical proof route

The sole remaining supplied physical-shift inequality is now named NearH1ShiftBound:

    E_r(f) <= r^2*integral_R first(t)^2dt, for 0<r<=1.  (G-2)

Here first must be the genuine first derivative (weak H1 derivative or classical derivative for the intended supported smooth test class). This inequality is standard and has a complete written proof: for r>0, the fundamental theorem of calculus gives f(t+r)-f(t)=integral_(0..r) first(t+u)du; integral Cauchy-Schwarz/Jensen gives its square <=r*integral_(0..r)first(t+u)^2du; Fubini plus translation invariance yields (G-2) for any first in L2. This complete Sobolev step is NOT claimed to be a new Lean declaration in this file. The explicit hypothesis is essential: bare L2 membership alone does not control the gamma kernel at zero. The current Lean source requires continuous f and L2 f, first, and carries (G-2) as the only unproved shift condition.

## 4. Existing native gamma bounds pay BOTH singular and infinite ends

The original source GammaNearZero.kernel_moment_bounds (at h=1) proves integrability and

    integral_(0<r<=1) r^2 K_a(r) dr
       <= 1/4 + 1/3 = 7/12.                          (G-3)

The exact source ExactGammaTail.tailMass_bounds at R=1 proves integrability of K_a on (1,infinity) and

    tailMass(a,1) := 2*integral_(r>1) K_a(r)dr
       <= tailUpper(a,1)
       := 2*exp(-(a+1/2))/((a+1/2)*(1-exp(-2))).     (G-4)

The new Lean candidate realGammaEnergy_integrable_and_bound splits the original positive shift domain into (0,1] and (1,infinity). On the head, the true energy is bounded by the integrable function r^2 K_a(r)*D, where D=integral first^2, using (G-2). On the tail it is bounded by 4*K_a(r)*E, where E=integral f^2, using the newly PROVED (G-1). Actual measurability of the real shift-energy integral follows from continuity of f and the measurable product-integral construction already used in WeilGammaHeadIntegrability. Consequently the *whole original gamma density* is integrable, and by positive-integral monotonicity

    0 <= Gamma_a(f)
       <= (7/12)*D + 2*tailUpper(a,1)*E.             (G-5)

In full expression this is

    Gamma_a(f)
       <= (7/12)*||first||_2^2
          + [4*exp(-(a+1/2))/
             ((a+1/2)*(1-exp(-2)))]*||f||_2^2.

For the zeta parity a=0, the E coefficient equals 8*exp(-1/2)/(1-exp(-2)), matching Section IV of the written H1 continuity source. For primitive nonprincipal chi, the correct a=gammaParity chi is retained: a=1 yields a strictly smaller E coefficient than a=0. No conductor/parity term is normalized away.

This is a useful new Lean candidate: it does **not assume** gamma integrability or a gamma-energy inequality. It derives both from the genuine native kernel moment and tail theorems, the unconditionally proved long-shift L2 bound, and the single explicit small-shift H1 premise.

## 5. Independent exact polynomial and 45-digit physical gamma comparison

For the supported smooth real odd test

    f(t)=t*(1-t^2)^3 on [-1,1], zero outside,

SymPy exact polynomial integration gives

    E = integral_R f^2 = 2048/45045,
    D = integral_R (f')^2 = 3072/5005.

On 0<=r<=2 the **exact** physical translation energy is

    E_r(f) =
      -r^2*(7*r^13 - 210*r^11 + 2808*r^9 - 22880*r^7
             + 164736*r^5 - 256256*r^4
             + 199680*r^2 - 110592)/180180.

For r>=2 it is exactly 2*E by support disjointness. This evaluates the actual original physical shift response, not a fitted gamma model. It also has E_0=0 and E_2=2*E.

Direct 45-decimal mpmath quadrature of K_a(r)*E_r(f) on (0,2), plus 2*E times the exact source kernel tail beyond 2, gives:

| Parity a | Original Gamma_a(f) | Outward analytic upper bound (G-5) | Gamma / bound |
|---:|---:|---:|---:|
| 0 (zeta, even character) | 0.211325240258431434 | 0.613181851264498883 | 0.344637141 |
| 1 (odd character) | 0.069650494687768278 | 0.389328865155041305 | 0.178898872 |

Both original parity outputs respect the budget with ample margin. This is a numerical *sanity check*, NOT a certified interval result, independently reviewed proof, or sign certificate for the complete Weil form.

## 6. What remains for full H1 physical Weil continuity

For the full source, the signed prime response and the original pole must be kept. The existing CharacterWeilWindowBounds.abs_twistedPrime_le bounds character phases with exact primeMass(T) once a mixed L2 correlation bound is supplied. The signed zeta pole is a two-orientation moment form, with a support-dependent L2 bound. The positive gamma quadratic form's polarization/mixed Cauchy-Schwarz then turns (G-5), for each admissible source, into a mixed H1 continuity budget.

These are distinct from the present new Lean candidate: it does NOT claim the mixed full Weil sesquilinear continuity theorem is already formalized. The immediate missing formal steps are (i) the true H1 small-shift inequality (G-2) on the supported smooth test domain using Fubini and the actual first derivative; (ii) mixed bilinear gamma and prime/pole return to the full original form with all terms. The H1 projection/negative witness consumers use those bounds only after the exact original source identification.

The two decisive conjecture-level obligations remain wholly unproved: (a) source-exact off-critical-zero -> exponentially negative physical Weil tests with full zero-orbit/tail accounting and normalization, and (b) a global cofinal all-mode subexponential **lower** budget for the ORIGINAL signed arithmetic Weil forms. Fixed-window H1 continuity does not supply (b) and does not settle RH or Dirichlet GRH.

**References:** Native GammaNearZero.kernel_moment_bounds, ExactGammaTail.tailMass_bounds, WeilGammaHeadIntegrability.shift_mul_parityKernel_le, WeilOddHighComplement.oddArchimedeanEnergy, PhysicalSineNegativeReturn.primitivePairedOddPhysicalValue and WeilH1SourceContinuity.md §IV; classical Sobolev translation inequality. All source proof candidates retain their recorded uncompiled status.

No new axiom, sorry or admit is placed in the new Lean candidate. No Noe proof automation, browser workers, cross-chat messaging, scheduler or background execution were performed. Novelty not asserted; source publication is not mathematical or Lean acceptance.
