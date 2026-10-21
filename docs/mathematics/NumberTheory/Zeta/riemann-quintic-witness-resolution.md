# Quintic witness resolution

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

This note resolves the last historical witness label in the bounded RH witness
registry. It does not construct an RH witness.

## Result

The phrase **quintic witness** refers to the fifth-order endpoint factor in the
actual source's three-profile response, not to an independent positivity,
symmetry, or zero-location certificate.

At the accepted `grwtsk/formal-research` revision

```text
dc96769a40980ba724fa248c00541f594ad00080
```

the primitive bump autocorrelation is represented by

\[
H(u)=\frac{(2-u)^9 P_0(u)}{1531530},
\]

and the normalized actual source correlation is represented, on
\(0\leq u=t/A\leq2\), by

\[
\frac{r^2H^{(4)}(u)-\frac r2H''(u)+\frac1{16}H(u)}
     {Z_A},
\qquad r=A^{-2}.
\]

Because the fourth, second, and zeroth profiles have endpoint orders \(5\),
\(7\), and \(9\), respectively, their complete numerator has the exact form

\[
J(r,u)=(2-u)^5Q(r,u).
\]

The new local source proves this finite polynomial identity directly.

## Exact quotient

Write

\[
\begin{aligned}
P_0(u)&=
  7u^8+126u^7+988u^6+4344u^5+11376u^4\\
 &\quad+17376u^3+15808u^2+8064u+1792,\\
P_2(u)&=
  7u^8+98u^7+574u^6+1764u^5+2808u^4\\
 &\quad+1680u^3-32u^2-448u-128,\\
P_4(u)&=
  245u^8+2450u^7+9240u^6+14000u^5-1720u^4\\
 &\quad-26160u^3-8160u^2+2880u+1152.
\end{aligned}
\]

Then

\[
\begin{aligned}
H_2(u)&=\frac{8(2-u)^7P_2(u)}{45045},\\
H_4(u)&=\frac{16(2-u)^5P_4(u)}{15015},\\
J(r,u)&=r^2H_4(u)-\frac r2H_2(u)+\frac1{16}H(u),
\end{aligned}
\]

and

\[
Q(r,u)=
 \frac{16r^2P_4(u)}{15015}
 -\frac{4r(2-u)^2P_2(u)}{45045}
 +\frac{(2-u)^4P_0(u)}{16\cdot1531530}.
\]

The endpoint coefficient is

\[
Q(r,2)=\frac{6144}{5}r^2.
\]

Thus the endpoint order is exactly five whenever \(r\ne0\).

## Source declarations

The external accepted source supplies the following exact declarations.

| Role | Declaration |
|---|---|
| primitive overlap | `FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.overlapProfile` |
| actual three-profile source | `FormalResearch.RiemannHypothesis.KQHThreeResponse.sourceCorrelation_eq_threeProfile` |
| arithmetic residual adapter | `FormalResearch.RiemannHypothesis.KQHThreeResponse.mertensResidual_eq_threeResponse` |
| separate symmetry theorem | `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity.sourceCorrelation_even` |
| conditional estimate consumer | `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.estimate_of_mertens_residual_tail` |

The first three declarations identify the polynomial profile with the actual
source and arithmetic residual. They do not prove a uniform residual bound.

## Symmetry classification

The quintic factor does **not** recover or certify reflection symmetry.

The local exact fixture gives

\[
J(1,0)=\frac{45056}{1105},
\qquad
J(1,2)=0.
\]

Therefore \(J(1,u)\) is not invariant under midpoint reflection
\(u\mapsto2-u\).

The actual source correlation is even under \(t\mapsto-t\), but that fact is
proved separately from the autocorrelation integral by
`sourceCorrelation_even`. Midpoint reflection on the positive half-support and
evenness about the origin are different transformations.

## Positivity classification

The local layer proves:

- exact algebraic factorization;
- zero response at the touching endpoint;
- strict positivity of the fifth-order endpoint coefficient for \(r\ne0\);
- failure of midpoint-reflection symmetry.

It does not prove:

- nonnegativity of the complete response on the full support;
- positive semidefiniteness of a kernel or quadratic form;
- positivity of the arithmetic prime-power sum;
- a lower or upper Mertens-residual tail;
- Weil positivity;
- finite-height RH;
- global RH.

A positive endpoint coefficient is local asymptotic data. It is not global
positivity.

## Dependency path

The exact accepted comparison is:

```text
overlapProfile
  + sourceCorrelation_eq_threeProfile
        ↓
fifth-order endpoint factor of the three-profile response
        ↓
mertensResidual_eq_threeResponse
        ↓
exact representation of the arithmetic residual
```

The missing implication is:

```text
endpoint factorization
  ── no proved arrow ──▶ MertensResidualTailUpperBound.
```

Only a separately supplied `MertensResidualTailUpperBound` enters
`estimate_of_mertens_residual_tail`.

## Registry disposition

The final overlay is:

```lean
registryWithQuinticResolution
```

The node is classified as source-bound endpoint regularity rather than as an RH
witness. It retains non-traversable edges to:

- the rectangle-edge count witness;
- the Möbius endpoint-information-loss witness;
- the finite-height reflection-cover route.

It has `RELEVANT_ONLY` relations to the boundary-layer and finite-scale-filter
programs because endpoint smoothness supports their analytic transports but
does not supply either signed tail.

All three historical labels now have exact dispositions:

```text
boundary-layer witness
  -> CriticalAbelTailLowerBound

finite-scale-filter witness
  -> CriticalRemovedPairedTailLowerBound

quintic witness
  -> fifth-order endpoint factorization / boundary regularity
```

The first two are open arithmetic witness propositions. The third is a proved
finite algebraic profile property with no tail implication.

## Evidence

Current `grwtsk/math` layer:

```text
SOURCE_DRAFT
```

Recorded external source evidence:

```text
KERNEL_CHECKED
TRUST_AUDITED
```

Not established locally:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
MERTENS_RESIDUAL_TAIL_DISCHARGED
RH_BRIDGE_DISCHARGED
```

No Lean, Lake, native, or CI execution was performed for this local layer.

## Provenance

- Mathematical direction and source selection: R.A. Jacob Martone.
- Formal construction and bounded source audit: OpenAI.
- Mathlib results retain upstream authorship and licensing.
- The accepted external source retains its own declaration-level provenance.

No numerical contributor weights are assigned.

## Next obstruction

The next actual RH-facing obstruction remains:

\[
\exists D\ge0,\ \exists R\ge1,\ \forall A\ge R,\qquad
\operatorname{mertensResidual}(A)\le D.
\]

The quintic endpoint factor neither proves nor weakens this requirement.
