/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndWeakPsiPort
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.ExternalPNTAndWeakPsiPortControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls

/-- Replay the actual inclusive von Mangoldt/psi identity, including zero. -/
theorem replay_inclusiveMangoldt_eq_psi (N : ℕ) :
    externalPNTAndInclusiveMangoldt N = Chebyshev.psi (N : ℝ) :=
  externalPNTAndInclusiveMangoldt_eq_psi_natCast N

/-- The index-zero endpoint does not introduce a spurious coefficient. -/
theorem replay_inclusive_zero :
    externalPNTAndInclusiveMangoldt 0 = 0 := by
  rw [externalPNTAndInclusiveMangoldt_eq_psi_natCast]
  norm_num

/-- The actual pinned psi minus theta bound is negligible relative
to the full arithmetic scale: no PNT premise is used for this lemma. -/
theorem replay_sqrt_correction_isLittleO :
    (fun x : ℝ => Real.sqrt x) =o[Filter.atTop]
      (fun x : ℝ => x) :=
  chebyshevSqrt_isLittleO_id

/-- The external WeakPNT' theorem proposition suffices for the local
PNT predicate. Its proof term is an explicit premise, NOT obtained by
string metadata or unchecked cross-version import. -/
theorem replay_weakInclusivePNT_to_thetaPNT
    (hWeak : ExternalPNTAndWeakPNTInclusive) :
    ThetaPrimeNumberTheorem :=
  externalPNTAndWeakInclusive_to_thetaPNT hWeak

/-- The negative audit consumer takes exactly the weaker external
weak-PNT proposition. This does not establish that proposition locally. -/
theorem replay_weakInclusivePNT_to_not_fixedCapacity
    (hWeak : ExternalPNTAndWeakPNTInclusive) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity :=
  no_integerPsiCapacity_of_externalWeakPNT hWeak

/-- The proof-bearing source port is still unresolved.
A validated external theorem term or independent local proof is necessary. -/
def remainingWeakPNTPortObligations : List String :=
  ["provide an exact trusted proof term of ExternalPNTAndWeakPNTInclusive at the pinned revision",
   "audit external PrimeNumberTheoremAnd/Consequences.lean::WeakPNT' and Wiener.lean::WeakPNT",
   "reconcile Mathlib 308445d7985027f538e281e18df29ca16ede2ba3 against local db584cd6d46c92f209a44c0f1c829460d327499d",
   "elaborate and audit the local inclusive sum, sqrt little-o, and conditional theta-PNT transport",
   "obtain #100 exact-head immutable replay and generated declaration/type/axiom closure"]

/-- Scope and hostile controls; the strings confer no theorem authority. -/
def prohibitedPromotions : List String :=
  ["Λ sum over Iic N equals psi(N) without checking the n=0 summand",
   "psi(N)/N interpreted at N=0 as ordinary nonzero division",
   "weak psi PNT -> theta PNT without the pinned psi-theta sqrt bound",
   "psi(floor x)=psi x treated as floor x=x for all real x",
   "asymptotic equivalence atTop -> pointwise equality",
   "external Lean source theorem label -> accepted local proof under incompatible Mathlib pins",
   "weak PNT proof source -> full theorem closure without transitive axiom audit",
   "conditional no-go against false fixed capacity -> proof of RH",
   "SOURCE_DRAFT -> KERNEL_CHECKED without running the authorized pinned replay"]

end GRWTSK.RiemannHypothesis.Checks.ExternalPNTAndWeakPsiPortControls
