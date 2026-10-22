# Positive-source / signed-consumer orientation connections

Issue: #545  
Parent: #521  
Stack parent: PR #525

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## Generic theorem

For a finite real coordinate space, choose a Boolean sector mask and define
the involutive fundamental symmetry

[
Jx=
egin{cases}
+x & 	ext{on the selected sector},\
-x & 	ext{on its complement}.
end{cases}
]

Let

[
E(x)=langle x,xangle,
qquad
q_J(x)=langle Jx,xangle.
]

Writing (E_+) and (E_-) for the two positive sector energies, the source
drafts

[
oxed{E=E_++E_-}
]

and

[
oxed{q_J=E_+-E_-}.
]

Therefore positive metric energy does not imply signed-consumer positivity.

On a pure positive sector,

[
q_J=Ege0.
]

On a pure negative sector,

[
-q_J=Ege0.
]

This is encoded by the proof-bearing `OrientationCertificate` type:

```text
sign : R
sign^2 = 1
positiveSource : X -> R
signedConsumer : X -> R
positiveSource >= 0
sign * signedConsumer = positiveSource
```

The sign remains explicit. A positive scalar cannot replace a missing sign
reversal.

## Proof-bearing repository connections

### Finite Hodge sectors

`FinitePositiveHodgeHeat` supplies the positive Euclidean/Hodge metric and
complementary coordinate projectors.

The generic negative-sector certificate has sign (-1):

[
-;q_J(x)=E(x).
]

This is the exact local algebraic pattern meant by a primitive-sector sign
twist. It does not prove a global Hodge standard conjecture.

### CommonJ sign conjugation

The existing theorem

```text
flip_commonJ_reverse
```

proves that the canonical flip conjugates the common generator to its
negative.

This is an exact operator-level sign-conjugation model. The CommonJ
generator itself squares to (-I), so it is not identified with the
involutive fundamental symmetry above.

### Signed root traces

The existing theorem

```text
SignedRootTrace.squareTrace_nonneg_iff_real
```

states, under conjugation closure and positive weights, that all bounded
degree signed polynomial-square traces are nonnegative exactly when every
node is real.

Positive weights alone therefore do not orient the signed trace correctly
when a nonreal conjugate pair survives. This is a direct finite analogue of
the same obstruction.

### Screw/quartic penalty

The existing screw-path code defines

[
operatorname{quarticPenalty}(alpha,gamma)
=
-H(alpha,gamma)ge0.
]

It now inhabits the same abstract `OrientationCertificate` type with sign
(-1).

This records a shared sign architecture, not an equivalence between Hodge
theory and the screw construction.

### Canonical prime-power quartic probe

The current RH-facing source proves

[
Q_n(v_{alpha,gamma})
=
-H(alpha,gamma)widetilde C_n.
]

This is a second proof-bearing negative-orientation certificate with an
arithmetic source factor.

Again, sharing `OrientationCertificate` does not identify the Hodge,
screw, and prime-power constructions.

### Weil positive-Gram obstruction

The existing theorem

```text
no_positiveGramLimit_at_negativeWitness
```

says that if an independently defined Weil diagonal value is negative at a
test vector, then no sequence of nonnegative Gram diagonals can converge to
that value at the same vector.

This is the infinite-dimensional limiting form of the finite orientation
obstruction.

### Signed settlement ledger

The existing exact source ledger is

[
E_{mathrm{local}}
=
E_{mathrm{mature}}
+
E_{mathrm{horizon}}
+
C_{mathrm{signed}},
]

where both square energies are independently nonnegative but the cross term
retains its sign.

Thus positive component energies do not permit replacing the signed cross
term by an unsigned quantity.

## Conjecture and program profiles

The following entries are deliberately metadata only.

### Grothendieck standard conjecture of Hodge type

Registry status:

```text
SOURCE_REVIEW_REQUIRED
```

Shared pattern: positive metric data does not by itself orient the signed
intersection consumer; a primitive/degree sign convention is essential.

No standard conjecture is imported or proved.

### Arithmetic Hodge-index / height positivity

Registry status:

```text
SOURCE_REVIEW_REQUIRED
```

Shared pattern: the conjectural signed/degree-sensitive pairing is not the
same object as a raw positive metric.

No height nondegeneracy or arithmetic positivity theorem is asserted.

### Rational CM Hodge cellular program

Repository profile: issue #176.

Status:

```text
PROPOSED_INTERFACE
```

Its own issue already requires algebraic Hodge, cellular Hodge, and positive
metric Hodge layers to remain noncoercible from signed Hermite/screw
consumers.

### C3 SOS / signed screw

Repository profiles: issues #196 and #199.

Status:

```text
PROPOSED_INTERFACE
```

The positive SOS/reconstruction-error form is distinct from the literal
signed screw. The current generic theorem records exactly why positivity of
the former cannot orient the latter automatically.

### Weil positive-Gram program

Repository profile: issue #215.

The negative-witness obstruction is already a local theorem. The arithmetic
comparison family remains open.

### Recent Hodge sign/cancellation failure class

The registry includes only a `SOURCE_REVIEW_REQUIRED` profile in this
increment. No external revision or paper result is admitted. A later source
review may bind an exact withdrawn/corrected source and statement.

## What is now genuinely unified

The following statement is now mathematical, not analogical:

> A nonnegative source can represent a signed consumer only after an explicit
> orientation datum. On a negative sector the correct positive object is the
> negative of the signed consumer, and positive scalar normalization cannot
> reverse that orientation.

The repository now has actual instances of that pattern in finite Hodge
sectors, screw/quartic penalty, the prime-power quartic probe, signed root
traces, signed settlement, and Weil negative-witness exclusion.

What is **not** unified is the source-specific theorem that produces the
orientation operator in each subject.

## Next obstruction

For the RH route the remaining theorem has the shape

[
[u,v]_{mathrm{target}}
=
langle J,Uu,Uvangle_+
]

or a source-equivalent primitive-sector formulation, where (J) is an
independently constructed sign/fundamental-symmetry operator.

The current arithmetic probe supplies the negative orientation. The missing
signed-screw theorem must explain the passage to the positive RH-facing
orientation without:

- changing sign by a positive scalar;
- assuming RH;
- assuming target positivity;
- selecting a stage after seeing the target sign;
- or conflating the positive metric with the signed consumer.

## Nonclaims

No Hodge standard conjecture, arithmetic height positivity theorem, rational
Hodge theorem, global C3 signed-screw theorem, Weil-form comparison, PNT,
zero-free threshold improvement, or RH result is proved here.
