# Canonical square-tent explicit formula ledger

Issue: #488  
Parent: #486  
Stack parent: PR #487

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
```

## Why this target was selected

Three candidate source identities were compared.

1. The existing correlation identity is exact, but it does not expose the
   complete nontrivial zeta divisor.
2. The canonical square-tent formula already carries the complete actual
   nontrivial-zero family, analytic multiplicities, absolute summability,
   the actual negative-even correction, and a finite-head tail bound.
3. An unsmoothed Chebyshev formula would introduce endpoint and convergence
   obligations not needed by this increment.

The second route is therefore the bounded target.

## Exact signed identity

For (nge2), define

[
S_n=operatorname{squareTentMangoldt}(n),
]

[
P_n=operatorname{squareRadius}(n),
]

[
Z_n=-sum_{ho}^{mathrm{abs}}
m_ho K_n(ho),
]

and

[
T_n=operatorname{rationalTentCorrection}
(operatorname{squareCenter}(n),operatorname{squareRadius}(n)).
]

The inherited source theorem gives

[
S_n=P_n+Z_n+T_n.
]

This increment packages it as the signed balance

[
-S_n+P_n+Z_n+T_n=0.
]

The prime-power sign is therefore part of the typed interface.

## Channel accounting

The seven-channel ledger is signed.

- prime-power: (-S_n);
- pole/main: (P_n);
- nontrivial-zero: (Z_n);
- trivial-zero: (T_n);
- Archimedean: no separate integral in this normalization; it is accounted
  through the negative-even/trivial-zero residue correction;
- endpoint: no separate term in the selected theorem, with square-tent
  endpoint weights independently proved zero;
- tail: zero in the complete infinite-divisor identity.

The Archimedean entry being numerically zero in this ledger must not be read
as a theorem that a gamma contribution vanishes. It records that this
Perron/residue normalization represents that correction through the actual
trivial-zero series instead of a separate gamma integral.

The source proves

[
T_n=
sum_{kge0}
-K_n(-2(k+1)),
]

using the existing independently established negative-even zero series.

## Finite divisor heads

For a finite height cutoff (Tge2), define the same signed balance with the
complete nontrivial divisor replaced by the canonical finite height head.

The inherited theorem gives

[
|operatorname{finiteHeadBalance}_n(T)|
le
B_n(T),
]

where (B_n(T)) is the existing canonical tail budget, and

[
B_n(T)	o0
quad(T	oinfty).
]

Thus this increment supplies one concrete complete target identity and a
certified vanishing residual for the finite nontrivial-zero truncation.

It does not supply the nonlinear comparison to the positive prime-power
Gram.

## Remaining bridge

The exact next adapter is a source-faithful finite atom stage satisfying

[
R_{S_n}(f_n)=operatorname{squareTentMangoldt}(n).
]

Only after this atom-stage alignment is constructed can the quadraticization
residual

[
R_{S_n}(f_n)-Q_{S_n}(f_n)
]

be attached to this concrete explicit-formula identity.

## Three-plus-one boundary

The arithmetic stage remains data in the dynamically sized fourth witness
channel. The three fixed phases remain the triangular base.

## Nonclaims

No atom-stage alignment, no quadraticization decay, no Weil-form identity,
no PNT, no zero-free threshold improvement, and no RH result are established.
