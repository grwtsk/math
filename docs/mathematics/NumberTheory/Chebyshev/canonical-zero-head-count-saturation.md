# Canonical zero-head binding by count saturation

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Parent: grwtsk/math#315 at db460d7441b3e43ffffd6a895b998dbeea46ea27.
Consumers: #189/#261; source-record boundary: #139. The complete canonical
zero family, analytic multiplicities, closed height cutoff and numerical
accumulator are inherited unchanged.

## The construction and its two analytic inputs

The previous rational tent accumulator required HeadBinding: an exact
bijection from record indices to the complete height head, exact analytic
multiplicities, and coordinate enclosures. This increment constructs that
binding from local witnesses and one complete-source count inequality.
It does not produce an actual certified zero packet.

Fix a rational cutoff T and k records. Record i supplies its existing rational
complex center c_i, closed radius r_i, and natural weight w_i. The pure rational
geometry guard checks

    r_i >= 0,
    |Im c_i| + r_i <= T,
    (r_i+r_j)^2 < |c_i-c_j|^2  for every i != j.

The squared norm on the right is computed from rational real and imaginary
components. There is no numerical square root. Strict separation is essential
for CLOSED balls: equality permits a shared boundary point and could allow
one witness to be counted twice. The height containment is non-strict because
the canonical head itself includes equality.

The two analytic inputs are:

1. For each i, existence of an ACTUAL nontrivial zeta zero rho_i in the ball,
   with w_i <= m(rho_i), where m is its actual analytic multiplicity.
   Neither uniqueness nor exact multiplicity is supplied.
2. The complete source-bound count N_abs(T) <= sum_i w_i, where N_abs counts
   BOTH signs and all actual horizontal coordinates, with analytic multiplicity.

A low residual, a midpoint, a database row, a hash, or a successful rational
arithmetic check does not prove either input. No root-finding or global
zero-count certificate is implemented here. The existing coarse counting
bound is not asserted to meet this saturation threshold.

## Positive mass forces exhaustion

The generic finite theorem has source atoms a with positive integer masses
mu(a), an injective witness map f, and lower weights w_i <= mu(f_i).
Then

    sum_i w_i <= sum_i mu(f_i) <= sum_a mu(a) <= sum_i w_i.

The middle inequality uses an actual injection, not a list-length comparison.
Every inequality is an equality. If an atom a were omitted, adding its strictly
positive mass to the witness image would contradict the upper bound. Thus f
is onto. If any local lower weight were strictly smaller than its atom's mass,
the corresponding finite sum would be strictly smaller, also a contradiction.
Thus w_i = mu(f_i) for every i.

The proofs use sums over every target atom. Omitted zero-weight atoms would be
invisible, so positivity of the target masses cannot be removed. Canonical
zeta multiplicity positivity is supplied by the existing source theorem; it
is not replaced by untrusted record metadata.

Countermodels show why the premises are separate:

- Two records both mapping to the first of two unit atoms have total weight
  two but omit the second atom. Injectivity is essential.
- A source with masses (1,0) admits equal totals after dropping the second
  atom. Strict positivity is essential.
- A source with masses (1,2) and one selected first atom assigned weight three
  has the right numeric total, but the lower-multiplicity condition is false.

## Geometry produces membership and distinctness

For every complex z in the i-th closed ball,

    |Im z| <= |Im c_i| + |Im(z-c_i)|
           <= |Im c_i| + |z-c_i| <= T.

Consequently each actual local witness belongs to the SAME closed heightHead T.
For two records, the strict squared-distance guard gives

    r_i+r_j < |c_i-c_j|.

A common witness would imply the reverse inequality by the triangle inequality.
The witnesses are therefore distinct as complex points, even if they have the
same absolute height or the same imaginary coordinate. No projection onto the
critical line or identification by height is used.

The semantic constructor chooses a witness from each local existence theorem,
forms the map into the canonical finite subtype, applies the generic positive-
mass theorem, and constructs the existing HeadBinding using Equiv.ofBijective.
This is a noncomputable classical construction using the inherited choice
axiom. It is not a choice-free result or an executable zero enumeration.

Coverage and exact weights are conclusions. The output also forces

    N_abs(T) = sum_i w_i.

Given the constructed binding and separated contained balls, every actual zero
in any declared ball belongs to the head, hence is represented by some record.
Separation forces it to be the record for that same ball. Thus each ball has
exactly one distinct nontrivial-zero location, with the recorded multiplicity.
This is uniqueness of an actual zero point, not the assertion that its order
is one.

## Unit weights derive simplicity

When all w_i=1, each local input needs only existence of a genuine nontrivial
zero inside the ball: the inherited positivity of multiplicity supplies
1 <= m(rho_i). A complete multiplicity-count bound N_abs(T)<=k then proves
coverage AND simplicity of every zero in the head.

Individual simplicity is not needed to obtain this conclusion. Conversely a
multiple zero, an additional zero in a ball, or an omitted zero outside all
balls prevents that global bound from saturating. The construction therefore
does not infer simplicity from an apparently isolated decimal approximation.

The empty geometry test is vacuous. An empty batch can obtain a complete
binding only with the independent actual count N_abs(T)<=0, which forces the
canonical head to be empty. Arithmetic acceptance alone never does so.

## Reuse of the rational tent consumer

The new verified_head_of_local_witnesses theorem supplies the constructed
binding to #315's unchanged verified_head_sound. It retains the exact rational
geometry, every actual multiplicity, the complete finite sum, quotient rounding,
and final accumulation allowance. The returned arithmetic state bounds the
same complete canonical tent-weighted head.

The prime wrapper similarly retains n>=2, T>=2 and the strict margin

    h_n - Re(Vout) - Eout - D_n - B_n(T) - U_n > 0,
    B_n(T) = 8*kappa*(n+1)^4*(log(T)+1)/(h_n*T),
    kappa = 44/log(6/5).

Neither analytic input, numeric acceptance, nor a useful positive margin is
manufactured. The old HeadBinding type and all previous consumers remain
unchanged. Rational cutoffs are the domain of this additional geometry adapter;
the existing general real-cutoff consumers have not been restricted.

## Verification boundary and next work

The new Lean declarations are source drafts. There has been no Lean/Lake run,
elaboration, execution of Lean controls, transitive trust audit, or external
replay. Generated declarations and the decidability instance remain part of
the mandatory exact-type and computational audit.

A separate exact finite diagnostic companion checks positive-mass exhaustion,
rational disk predicates, and small synthetic source models. It contains no
actual zeta zeros and cannot certify either analytic supplier. Its finite
checks do not validate Lean syntax or the universal proofs.

Next source work is to supply genuine local analytic zero-existence/lower-order
evidence and a sufficiently tight complete count at exactly the same cutoff,
with all endpoint conventions retained. Bounded external decoding, provenance,
resource limits, all-interval strict prime margins and exact-head proof audit
remain independent. No RH, Legendre, external-zero completeness, merge,
execution authorization or verification-hold release follows from this note.
