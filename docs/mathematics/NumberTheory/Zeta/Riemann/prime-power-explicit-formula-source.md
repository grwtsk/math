# Linear prime-power source versus positive Gram

Issue: #486  
Parent: #483  
Stack parent: PR #484

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

The repository's source-faithful arithmetic feature interface keeps seven
channels: prime-power, Archimedean, pole, trivial-zero, nontrivial-zero,
endpoint, and tail.

This increment fixes the prime-power field to the exact finite readout

[
R_S(f)=sum_{ain S}Lambda(p_a^{m_a})f(m_alog p_a).
]

The positive source from #483 is instead

[
Q_S(f)=sum_{ain S}Lambda(p_a^{m_a})f(m_alog p_a)^2.
]

These have different variance. Even one atomic contribution at test value
two satisfies

[
2Lambda(p^m)
eq4Lambda(p^m),
]

because (Lambda(p^m)=log p>0). Thus the positive Gram is not the
prime-power field of the explicit formula.

Define the exact quadraticization residual

[
r_{mathrm{quad}}(f)=R_S(f)-Q_S(f).
]

Then (R_S(f)=Q_S(f)+r_{mathrm{quad}}(f)) identically.

For any independently proved complete target identity

[
W(f)=R_S(f)+r_infty+r_{mathrm{pole}}+r_{mathrm{triv}}
+r_{mathrm{nontriv}}+r_{mathrm{endpoint}}+r_{mathrm{tail}},
]

the source drafts the exact decomposition

[
W(f)-Q_S(f)=
r_{mathrm{quad}}+r_infty+r_{mathrm{pole}}+r_{mathrm{triv}}
+r_{mathrm{nontriv}}+r_{mathrm{endpoint}}+r_{mathrm{tail}}.
]

This is an algebraic ledger theorem. It proves neither the complete target
identity nor decay of any residual.

The complete ledger is attached to the dynamically sized fourth witness
channel. It does not alter the first three fixed triangle phases.

## Next obstruction

Prove one concrete complete target identity at an exact test-function
normalization and independently bound all seven residual channels strongly
enough that their total tends to zero.

## Nonclaims

No explicit-formula theorem, no residual decay, no Weil identity, no PNT,
no zero-free improvement, and no RH result is established.
