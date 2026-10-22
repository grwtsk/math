# Uniform integer-`psi` quadratic capacity: classical no-go

Issue: #856. Parent: #846 / draft PR #851.  
Branch: `research/856-psi-capacity-pnt-nogo-v01`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## Decision

The parent fixed-budget all-integer target criterion is **mathematically false** in the presence of the classical prime number theorem (PNT), the elementary Chebyshev prime jump, and the pinned higher-prime-power estimate. All of these are established classical arithmetic facts. This is a **rejected supplier route**, not a disproof of the Riemann Hypothesis or a negative result for arbitrary nonlinear/smoothed source constructions.

The repository source presently types an abstract no-go and an exact response-to-envelope bridge. The final Lean construction of the PNT envelope, actual next-octave recurrence adapter, and unbounded prime-jump certificate remains **unreplayed/unproved in the submitted Lean increment**; the complete mathematical argument is given below.

## Exact candidate

With (X_j=2^{j+1}), consider one fixed nonnegative constant (C) and the proposed eventual bound

[
X_j|psi(m)-m| le C A_{X_j}^{,2}
]

for **all** integers (min[2X_j,4X_j]), where

[
A_X=sum_{substack{X<ple2X\p	ext{ prime}}}
 rac{log p}{p} (|	heta(p)-p|+1).
]

The parameter (C) is fixed once, before stage and target quantification. Permitting a target- or scale-fitted coefficient would change the problem and does not rescue the stated criterion.

## Step 1: sublinear theta envelope

Define the genuine least octave envelope

[
E_j=sup_{X_jle ule2X_j}igl(|	heta(u)-u|+1igr).
]

The unconditional PNT states (	heta(x)=x+o(x)), hence

[
E_j/X_jlongrightarrow0.
]

This is the only PNT input. It is **not** an RH-strength estimate.

The pinned finite coefficient theorem gives

[
A_{X_j}le L E_j,qquad L=2log4.
]

Every coefficient, absolute value, endpoint convention, and literal prime window is preserved.

## Step 2: obtain the dyadic recurrence from the proposed capacity

For a real (vin[2X_j,4X_j]), set (m=lfloor vfloor), which belongs to the same integer target interval. Since (psi(v)=psi(m)),

[
	heta(v)-v
=igl(psi(m)-migr)
 +igl(	heta(v)-psi(v)igr)+(m-v).
]

The parent integerized response hypothesis bounds the first term by

[
|psi(m)-m|le C L^2E_j^2/X_j.
]

The pinned Chebyshev theorem supplies the unconditional higher-prime-power correction

[
0lepsi(v)-	heta(v)le C_{mathrm{hp}}sqrt v
le2C_{mathrm{hp}}sqrt{X_j}.
]

The floor contribution has magnitude strictly less than (1), and the existing target uses an additional (+1). Since (X_jge2), these can be absorbed into (2sqrt{X_j}). Therefore, for

[
K=CL^2,quad H=2max(0,C_{mathrm{hp}})+2,
]

one has the rigorous implication

[
oxed{E_{j+1}le K E_j^2/X_j+Hsqrt{X_j}.}
]

Taking the least envelope ensures that a bound proved for every next-octave real target bounds (E_{j+1}). An arbitrary loose envelope cannot be used here without a separately proved least-envelope comparison.

## Step 3: bootstrap to square-root scale

Since (E_j/X_j	o0) and (Kge0), eventually

[
2K E_jle X_j.
]

At those stages,

[
K E_j^2/X_jle E_j/2.
]

Thus

[
E_{j+1}le E_j/2+Hsqrt{X_j}.
]

Choose (M) larger than (E_J/sqrt{X_J}) and (2H) at one sufficiently late starting stage (J). By induction, if (E_jle Msqrt{X_j}), then

[
E_{j+1}le(M/2+H)sqrt{X_j}
le Msqrt{X_j}
le Msqrt{X_{j+1}}.
]

Therefore

[
oxed{E_j=O(sqrt{X_j}).}
]

The source module `PinnedPrimeWeightPsiCapacityNoGo.lean` encodes the general sublinear-quadratic bootstrap.

## Step 4: the proposed source capacity would bound psi error by a constant

Substitute the square-root envelope into the original criterion:

[
|psi(m)-m|
le rac{C A_{X_j}^2}{X_j}
le C L^2 rac{E_j^2}{X_j}
le K M^2.
]

The bound holds at **every integer target of every sufficiently large next octave**, with no dependence on the target, stage, or prime.

## Step 5: adjacent prime jumps contradict this bound

Bertrand's theorem supplies a prime (p) satisfying

[
2X_j<ple4X_j.
]

Both integers (p-1,p) lie in the target interval. By the literal von Mangoldt jump,

[
psi(p)-psi(p-1)=Lambda(p)=log p.
]

Subtracting the corresponding integer arguments gives

[
(psi(p)-p)-(psi(p-1)-(p-1))=log p-1.
]

The alleged uniform bound would imply

[
log p-1le2KM^2.
]

But (p>2X_j	oinfty), hence (log p	oinfty). Contradiction.

This uses neither RH nor a conjectural zero distribution. The PNT, Chebyshev prime-power estimate, Bertrand's theorem, and prime jump are unconditional classical mathematics.

## Formal status and correct disposition

The source module proves a *conditional Lean proposition*:

~~~
sublinear dyadic envelope
+ square-root-forced quadratic recurrence
+ actual squared-envelope integer-psi response
+ unbounded adjacent psi jumps
-> False.
~~~

The source also constructs

~~~
the ACTUAL pinned integer psi capacity
+ the ACTUAL current theta-octave envelope
-> squared-envelope integer-psi response.
~~~

The control module types the remaining arithmetic adapters: the classical-PNT envelope profile, the recurrence from the full target and pinned higher-prime-power correction, and the Bertrand/prime-jump-unbounded constructor. **None of these is claimed kernel-checked by this packet.** In particular, a true mathematical derivation in the documentation is not proof that the submitted Lean term has elaborated.

The previous parent theorem of the form

~~~
PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity
  -> QuadraticThetaDescentAt rho
~~~

is only a conditional implication. Its hypothesis is now mathematically excluded. The conditional theorem can remain as a logical interface, but its premise should be labeled **REJECTED_ROUTE** rather than a missing positive arithmetic estimate.

## Reusable content retained

Preserve the actual prime-window norm bound, precise (psi/	heta) signed split, integerization and sawtooth correction, complete (O(sqrt x)) higher-prime-power residual, and Abel/Mellin threshold-preserving transports. None is invalidated by this no-go.

A future nonlinear program must change the source theorem itself: for example, specify a different smoothed/averaged response and derive its exact target reconstruction, exceptional-set handling, and complete residual. Merely replacing (psi(v)) with (psi(lfloor vfloor)), relabeling the coefficient, or allowing a nonuniform constant is not the same proof.

## Source credit

- Classical prime number theorem in Chebyshev theta form (	heta(x)sim x), independently of RH.
- Bertrand's postulate and the von Mangoldt identity (Lambda(p)=log p) on primes.
- Pinned Mathlib `Mathlib/NumberTheory/Chebyshev.lean`, revision `db584cd6d46c92f209a44c0f1c829460d327499d`, for (psi,	heta), monotonicity and prime-power square-root control.
- Existing repository `PinnedPrimeWeightRatioSandwich.lean` for the literal amplitude upper bound and `PinnedPrimeWeightIntegerizedPsiSourceRule.lean` for the integer-target source.

## Prohibited claims

No Lean/Lake build, no kernel audit, no accepted PNT lemma in this child, no accepted prime-jump-unbounded adapter, no unconditional formal `¬ capacity` claim, no new zeta-zero theorem, no RH theorem, and no merge or closure. The *mathematical* rejection is grounded in accepted classical facts; the *formal* artifact remains source draft.
