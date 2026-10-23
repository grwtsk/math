# Zero-parameterized canonical probe and quartic sign orientation

Issue: #521  
Parent: #514  
Stack parent: PR #517

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## Why the previous interface was still too rigid

The radius-normalized source

[
widetilde C_nge0
]

was fixed independently of the candidate zero.

If one compares that same scalar sequence to

[
H(alpha,gamma)
=
-4alpha^2(alpha^2+3gamma^2),
]

then at (alpha=0) the target is zero. A vanishing-error comparison would
therefore force the entire global source sequence (widetilde C_n) to tend
to zero.

That is an unrelated analytic requirement.

The correct fixed-family architecture is:

- the stage/operator family is fixed by the arithmetic source;
- the probe vector may depend on ((alpha,gamma)) through one globally
  defined source formula;
- the stage may not be selected after seeing a candidate zero.

## Explicit quartic-magnitude probe

Define

[
b(alpha,gamma)
=
2alphasqrt{alpha^2+3gamma^2}.
]

Then

[
oxed{
b(alpha,gamma)^2
=
-H(alpha,gamma).
}
]

Using the previously fixed radius-normalized amplitude (a_n), define

[
v_{n,alpha,gamma}(u)
=
b(alpha,gamma)a_n(u).
]

Finite Gram scaling gives the exact source identity

[
oxed{
Q_n(v_{n,alpha,gamma})
=
-H(alpha,gamma),widetilde C_n.
}
]

This is a genuine positive Gram. The source therefore realizes the
**negative** orientation of the signed quartic witness.

## Critical-line compatibility

If (alpha=0), then

[
b(0,gamma)=0,
qquad
v_{n,0,gamma}=0,
]

so

[
Q_n(v_{n,0,gamma})=0
]

at every stage.

Thus the RH locus no longer requires the unrelated normalized arithmetic
source (widetilde C_n) itself to decay.

## Reusable obstruction witness

The exact sign fact is marked as

```text
WITNESS_QUARTIC_SIGN_ORIENTATION
```

with mathematical content

[
Q_n(v_{n,alpha,gamma})
=
-H(alpha,gamma)widetilde C_n.
]

The positive source naturally gives (-H), while the existing RH extraction
needs a positive-scale approximation to (+H).

A sign-reversing bridge is therefore a genuine theorem obligation. It cannot
be supplied by a positive scalar normalization.

## Exact positive-orientation control

If at one stage there were an exact identity

[
Q_n(v_{n,alpha,gamma})
=
wH(alpha,gamma),
qquad w>0,
]

then positivity of the left side immediately gives

[
H(alpha,gamma)ge0,
]

and the existing quartic theorem forces

[
alpha=0.
]

So a positive exact orientation cannot be inserted as harmless metadata: it
already carries the critical-line conclusion.

## Preferred comparison interface

The fixed stage is still

[
operatorname{canonicalStage}(n).
]

The probe is the globally defined (v_{n,alpha,gamma}).

The remaining conditional comparison is

[
Q_n(v_{n,alpha,gamma})
=
w_nH(alpha,gamma)+e_n,
]

with

[
w_n	o L>0,
qquad
e_n	o0.
]

A record carrying those data constructs the existing generic positive-Gram
extraction and therefore forces (alpha=0).

No such comparison is constructed in this increment.

## Interpretation of the three-plus-one structure

The first three phases remain the fixed triangular base.

The fourth channel supplies a dynamically sized source stage. A candidate
zero selects a probe vector inside that fixed source channel; it does not
select or resize the stage itself.

## Next obstruction

The exact missing theorem is now a **signed-screw orientation bridge**:
derive a positive-scale (+H) comparison from the zeta source despite the
natural positive Gram carrying (-H).

Any such theorem must state exactly where the sign reversal comes from and
why it does not destroy positivity or assume the desired critical-line
conclusion.

## Nonclaims

No signed-screw orientation theorem, no Weil-form identity, no PNT, no
zero-free threshold improvement, and no unconditional RH result are
established.
