# Corrected form-domain shifted Schur strategy

Local attribution: grwtsk contributors.
Owner: [WeilShiftedSchurReturn.lean](WeilShiftedSchurReturn.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.ShiftedSchur`.
Primary subject MSC2020 11M06; supporting subjects 46C05, 47A07.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837),
[math#1258](https://github.com/grwtsk/math/issues/1258).

This is a corrected analytical argument and source-candidate formalization of
its reusable Riesz/residual and literal-window returns. It is NOT an assertion
that all four source-specific constructions or the cofinal arithmetic signs
have been completed. The full complex argument is stated below; the arithmetic
Lean consumer deliberately uses the EXISTING real odd zeta criterion. Complex
primitive-character transfer and Dirichlet GRH require their existing additional
premises and are not obtained by silently reusing the odd real restriction.

## 1. Domain and source assumptions

Let H_L=L2([-L,L];C). Let q_L be a densely defined closed lower-semibounded
Hermitian form, with domain D_L. Its value agrees with the exact pole-inclusive
arithmetic Weil form Q on every compact smooth test supported in the interior
of the window. State and prove this identity at the chosen normalization.
The prime powers, both applicable pole orientations, gamma term and physical
L2 norm are unchanged. Values are real on the diagonal.

Fix epsilon>0. The shifted form q_epsilon=q_L+epsilon*||.||_H^2 has the SAME
domain. Let V be finite-dimensional with V subset D_L, and W=V-perp in H_L.
The physical orthogonal projection P_V maps D_L into V, so

    D_L = (D_L intersect W) direct-sum V.

This is also a topological direct sum for the form norm. To see it, choose
c>=0 with q_L>=-c||.||_H^2 and set alpha=c+1. Then

    ||f||_D^2 = q_L[f]+alpha||f||_H^2 >= ||f||_H^2.

For an H-orthonormal basis e_i of V, P_V f=sum_i <e_i,f> e_i. Its coefficients
are bounded by ||f||_H and each ||e_i||_D is finite. Hence P_V is bounded for
||.||_D. The kernel D_L intersect W is closed in D_L, and therefore complete
for the inherited form norm. Its density in W follows by projecting any D_L
approximation in H_L. This proves the splitting rather than assuming it.

Let a_epsilon=q_epsilon restricted to D_L intersect W and require

    a_epsilon[w] >= m ||w||_H^2,  m>0.

A nonnegative unshifted complement does suffice, with m=epsilon; however this
can make residual tolerances expensive as epsilon tends to zero. The inner
product a_epsilon is complete: on W,

    ||w||_D^2 = a_epsilon[w]+(alpha-epsilon)||w||_H^2
              <= (1+|alpha-epsilon|/m) a_epsilon[w],
    a_epsilon[w] <= (1+|alpha-epsilon|) ||w||_D^2.

The mixed functional b(w,v)=q_L(w,v) is continuous in this energy norm. Indeed,
physical orthogonality gives b(w,v)=q_alpha(w,v), and Cauchy--Schwarz for the
positive form q_alpha gives |b(w,v)|<=||w||_D||v||_D. On finite-dimensional V,
||v||_D is bounded by a constant times ||v||_H. No smallness is asserted here.

With the convention conjugate-linear first, Riesz gives the unique linear map
K_epsilon:V->D(a_epsilon) satisfying a_epsilon(w,K_epsilon v)=b(w,v). The Lean
file uses the conjugate orientation C(v)(w)=q_L(v,w), so Mathlib's toDual
constructs K and gives a_epsilon(Kv,w)=C(v)(w). These are the same equation.

For d_epsilon=q_epsilon restricted to V, expansion gives

    q_epsilon[w+v] = a_epsilon[w+K_epsilon v] + s_epsilon[v],
    s_epsilon[v] = d_epsilon[v]-a_epsilon[K_epsilon v].

The forward implication is obtained by evaluating at w=-K_epsilon v; the
reverse uses nonnegativity of the square. Thus

    q_L >= -epsilon ||.||_H^2  iff  s_epsilon >= 0 on V.

This is a congruence sign equivalence, not a unitary spectral identity.
It does not equate the eigenvalues or positive margins of the two operators.

## 2. Correct reference-domain conditions

The proposed inclusion D(q_ref) subset D(q_L) alone is in the WRONG direction
for a comparison quantified over all f in D(q_L). The minimal useful conditions
are

    D(q_L) subset D(q_ref),
    ran 1_(-infinity,C_L+mu_core)(T_ref) subset D(q_L),
    q_L[f] >= q_ref[f]-C_L||f||_H^2 for all f in D(q_L).

The clean bounded-perturbation case has D(q_L)=D(q_ref). In addition q_ref must
be densely defined, closed, lower semibounded and have compact resolvent. Under
these hypotheses its spectral subspace below a finite threshold is FINITE.
Compact resolvent alone without lower semiboundedness would not imply that.

Choose mu_core>0 and let V contain that entire low reference spectral subspace.
It may additionally contain pole vectors or other admissible retained vectors.
For every w in D(q_L) intersect V-perp the reference spectral theorem gives

    q_ref[w] >= (C_L+mu_core)||w||_H^2,
    a_epsilon[w] >= (mu_core+epsilon)||w||_H^2.

The strict '<' spectral cutoff is sufficient: an eigenvalue exactly at the
threshold may remain in the complement. Exact construction and certified
identification of this reference spectral subspace are separate from its
abstract existence. No computability follows from the spectral theorem alone.

A pure gamma ENERGY form with the proven common maximal domain is a natural
reference because the finite-window prime and pole perturbations are bounded.
An ordinary positive Dirichlet/Neumann Laplacian is NOT automatically a lower
reference: on fixed smooth high-frequency packets its energy grows like N^2,
whereas the archimedean multiplier grows logarithmically. A comparison
q_L>=c||f'||_2^2-C||f||_2^2 with c>0 cannot follow from that logarithmic growth.
Any proposed differential-integral reference needs its own valid comparison.
Using an exact spectral subspace of the actual localized operator is not
logically circular if its realization was proved without RH; it merely puts
the difficult arithmetic information into the retained block.

## 3. Exact residual certificate; scalar estimates are optional

For each v, the squared coupling energy is exactly the energy-dual norm:

    a_epsilon[K_epsilon v]
      = sup_{a_epsilon[w]<=1} |b(w,v)|^2.

This is a norm identity, not an arithmetic upper bound. A large mixed pairing
is not automatically 'paid for' at the precision needed for a sign theorem.
The asserted upper bound must hold for every direction, including boundaries
and every omitted mode.

Let X:V->D(a_epsilon) be a linear trial correction. Define the actual residual
r_v(w)=b(w,v)-a_epsilon(w,Xv), and the exact trial value

    F_X[v] = q_epsilon[v-Xv].

Then r_v is represented by (K_epsilon-X)v in the energy Hilbert space, and

    F_X[v] = s_epsilon[v] + ||r_v||_(a_epsilon*)^2,
    s_epsilon[v] = F_X[v] - ||r_v||_(a_epsilon*)^2.

This proves that F_X is an UPPER enclosure. Positive trial values alone are not
certificates. If r_v has a physical Riesz representative Rv and the core floor
is m, then ||r_v||_(a_epsilon*)^2 <= ||Rv||_H^2/m. This latter estimate requires
the physical representation; it is not necessary for the energy-dual version.

In a finite basis, construct Hermitian matrices F_lower and G with

    z* F_lower z <= F_X[sum_i z_i v_i],
    ||r_(sum_i z_i v_i)||_(a_epsilon*)^2 <= z* G z

FOR ALL coefficient vectors z. Then F_lower-G positive semidefinite is a
sufficient stage certificate. This matrix inequality is basis-congruence
invariant. For an additional physical lower defect delta in a nonorthonormal
basis, use F_lower-G >= -delta*M_V, where M_V is the physical Gram matrix.
Do not silently replace M_V by the identity.

All observation, quadrature, rationalization, finite residual-row and complete
remote-tail errors belong in these directional bounds. Approximate basis
vectors require a proved span/projection and metric comparison. No sampled
positivity, finite residual, or finite prime-prefix computation supplies a
whole-domain inequality on its own.

The proposed scalar certificate is also valid, but only sufficient. Write the
UNSHIFTED retained diagonal as d=d0-e, with

    d0[v]>=mu||v||_H^2,  e[v]<=error||v||_H^2,
    a_epsilon[K_epsilon v]<=coupling||v||_H^2.

Then error+coupling<=mu+epsilon implies s_epsilon>=0. The number mu may be
negative; in that case d0 is a baseline lower bound, not a positive baseline.
Failure of this scalar budget does not prove a negative Schur direction.
A matrix comparison can succeed when the separate scalar minima/maxima fail.

If using the original bordered zeta source, shift only the physical mass
metric. The auxiliary pole coordinate receives zero shift. Alternatively keep
the actual pole vectors in V; this retains their full signed contribution.
For fixed support [-L,L], all prime powers with log(n)<2L are active; added
larger shifts have zero correlation. Archimedean and mode tails are separate.

## 4. Quantified cofinal theorem and its proof

Assume for every integer j>=0 there exists a radius L_j>=j+1 with a source-valid
closed-form decomposition and a verified inequality s_(L_j,2^-j)>=0. Every
compact smooth test f lies in D(q_(L_j)) once j is sufficiently large, and the
normalization/source identity gives q_(L_j)[f]=Q(f), not merely convergence.
Hence

    Q(f)>=-2^-j ||f||_2^2

for every sufficiently large j. Taking j to infinity proves Q(f)>=0. The
compactly supported Weil criterion then implies RH. No additional density step
is needed. Extending to a different completed domain would require its own
continuity/core theorem, but that is not used for this conclusion.

The user's slightly weaker radius condition L_j>=j is also enough. To obtain
canonical stage j of radius j+1, use the certificate at radius L_(j+1)>=j+1,
whose defect 2^(-(j+1)) is at most 2^-j. The Lean return proves this reindexing
and physical-defect weakening explicitly. Retained spaces need not be nested.
An unbounded set of radii without the matched vanishing accuracy condition
would not suffice.

The quantifier 'for every j there exists a SUCCESSFUL source-valid sign
certificate' is the remaining all-scale arithmetic assertion. A procedure
that searches indefinitely is not a proof of its termination at each j.
Finite certificate soundness and universal certificate existence remain distinct.
Under the source identities this statement is sufficient for RH; no such
unconditional supplier family is constructed by the reduction.

## 5. Exact Lean correspondence and existing consumers

The generic complex/real construction and declaration-level provenance are in
[EnergySchur.md](../../FunctionalAnalysis/EnergySchur.md). The current module's
individual statements are:

| Declaration | Scope |
| --- | --- |
| `WindowLower` | Original measurable real odd L2 tests, original support and finite gamma-energy condition; arbitrary radius and physical defect. |
| `windowLower_mono_defect` | Larger allowed defect weakens the same physical lower estimate. |
| `stageLower_of_covering_window` | Uses literal covering-window equality to return to existing StageLower, without deleting primes or poles. |
| `all_stageLower_of_covering_windows` | Consumes one successful covering radius for EVERY dyadic accuracy. |
| `all_stageLower_of_radius_ge_index` | Handles exactly radius(j)>=j by the j+1 reindexing and weaker defect. |
| `unshifted_nonnegative_of_covering_windows` | Calls existing nonnegative_of_stageLower on the unchanged source. |
| `windowLower_of_energySchur` | Conditional source return from an entire-domain energy realization and its exact Schur sign. |
| `windowLower_of_energyResidual` | The same return from the trial lower bound minus the complete energy-dual residual budget. |

The existing [WeilCofinalFlexibleHead.lean](WeilCofinalFlexibleHead.lean)
`stageLower_of_positiveLower` is the preferred concrete packet consumer when
using its source-defined trial, residual rows, complete remote allowance and
independent high floor 1/5. This increment does not create another finite checker.
The existing [WeilCertificateRootReturn.lean](WeilCertificateRootReturn.lean)
uses the isolated `WeilZetaOddCriterion` environment and the original RH target.
It is NOT imported into the root library here. Its primitive-character negative
witness and character-stage premises remain unsupplied.

## 6. Provenance, proof comparison and verification limits

Primary analytical proof: closed-domain finite projection, equivalence of
coercive energy norms, Riesz representation, exact square completion, spectral
reference comparison, and fixed-test dyadic exhaustion. The spectral and
closed-domain steps are written arguments here, NOT claimed as complete new
Lean formalizations. The Lean construction starts from the proved-to-be-needed
complete energy Hilbert space and continuous mixed map; its source-return
hypothesis explicitly retains the missing whole-domain arithmetic realization.

Inspected sources and individual uses, November 18, 2026:

- M. Suzuki, *Weil's quadratic form via the screw function*, supplied
  arXiv:2606.09096v3, September 24, 2026, Section 1.1, pp.1--2:
  exact arithmetic normalization, compact smooth Weil criterion, Yoshida odd
  criterion, and distinction D(A_L) subset D(q_L) subset L2. These statements
  explain the existing consumer; this increment does not claim to formalize
  Suzuki's complete operator-domain theorem or any other edition's endpoint claim.
- A. Connes, C. Consani, H. Moscovici, *Zeta Spectral Triples*, supplied
  arXiv:2511.22755v1, Section 3, Proposition 3.5 and Theorem 3.6: reference for
  closed-form representation and localized compact resolvent, not a new Lean
  dependency or assumed arithmetic positivity.
- Kraus--Langer--Tretter, May 19, 2003 preprint, Section 2: form-domain Schur
  comparison. Exact scope is recorded in EnergySchur.md.
- S. M. Rump, *Verification methods: Rigorous results using floating-point
  arithmetic*, Acta Numerica 19 (2010), 287--449, supplied corrected edition,
  introduction pp.1--2 and Sections 10.4, 13.4, 14.2, 15--16: distinction of
  finite validated bounds from infinite-dimensional coverage. No algorithm or
  numerical certificate from that paper has been reimplemented or replayed here.

Hostile controls: the positive trial/negative Schur matrix [[1,2],[2,1]];
A=diag(1,M^2), B=(0,M), for loss from coarse scalarization; a fixed omitted
negative direction to refute mere dense-in-physical-norm or restricted-subspace
claims; and a moving radius with unmatched fixed tolerance. These are analytical
checks of the implication directions, not independent verification receipts.

Base `grwtsk/math@e5cf12adb8ccc6ae40f03a174a260f846e27d774`.
Existing literal cofinal module blob `8140cfc4ecb141a24bb183e7b3e41dbf3a8f00cf`;
flexible-head blob `f1547dc77a1f0ade6b3a1e35eff9f028fb351ba1`.
Lean `leanprover/lean4:v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins changed.
Status **SOURCE_PROOF_CANDIDATE**. Elaboration, exact types, fresh kernel replay,
transitive axiom audit, clean import-closure replay and independent review:
**NOT_RUN**. Prior-art completeness **UNASSESSED**; no novelty claim.
The actual source splitting, reference spectral certification, full residual
bounds and all-scale signs are OPEN, not merely unrun checks. Ordinary source
publication introduces no proof-runner, scheduler or cross-chat authority.
