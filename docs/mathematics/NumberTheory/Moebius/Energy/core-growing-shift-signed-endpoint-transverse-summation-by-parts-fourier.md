# Transverse anchor-tail summation by parts

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #943  
Parent draft PR: #938  
Parent revision: `61ceabc31ef78024c954fd860fbcc5129d7d9d30`

This note records an exact finite reorganization of the explicit transverse clipping numerator from #934. It introduces no arithmetic Fourier estimate and discharges no RH-facing source premise.

## 1. Parent numerator

The parent branch writes the nonzero transverse clipping resolvent as

\[
 m_j(u)^{-1}\widehat N_j(u,s),
\]

where

\[
 m_j(u)=e_{Q_j}(u)-1,
 \qquad Q_j=2Y_j,
 \qquad Y_j=2^{j+1},
\]

and

\[
 \widehat N_j(u,s)
 =\widehat I_j(u,s)
 +e_{Q_j}(-c_ju)\widehat e_j(s-u).
\]

Here:

- \(I_j\) is the explicit interior reciprocal-drop kernel;
- \(c_j=Y_j-1\);
- \(e_j\) is the one-dimensional right-window boundary symbol.

The affine boundary symbol remains part of the numerator throughout this increment.

## 2. Exact fixed-difference support

For an ordinary positive difference \(h\), define

\[
 D_j(h)
 =\max(H_j+1,2^j-h),
\]

\[
 U_j(h)
 =\min(Y_j-H_j,Y_j-h),
\]

and the strict interior upper cutoff

\[
 \boxed{
 V_j(h)=\min\bigl(U_j(h),Y_j-h-1\bigr).
 }
\]

The interior numerator excludes the right-window atom at

\[
 x+h+1=Y_j.
\]

Therefore, for \(h\ge1\), its exact ordinary support is

\[
 \boxed{
 [D_j(h),V_j(h)).
 }
\]

No modular endpoint is used in this support description.

## 3. Anchor and affine tail

Recall

\[
 q_j(h)=\max(h,H_j),
\]

\[
 C_j=2^j+H_j-1,
\]

and

\[
 T_j(h)=2^j+H_j-q_j(h).
\]

The interior interval splits exactly as

\[
 [D_j(h),V_j(h))
 =A_j(h)\sqcup T_j^{\mathrm{aff}}(h),
\]

where

\[
 A_j(h)
 =
 [D_j(h),\min(V_j(h),T_j(h))),
\]

and

\[
 T_j^{\mathrm{aff}}(h)
 =
 [\max(D_j(h),T_j(h)),V_j(h)).
\]

On the anchor block, the normalized denominator is constant:

\[
 \max(C_j,x+q_j(h))=C_j.
\]

On the affine tail,

\[
 \max(C_j,x+q_j(h))=x+q_j(h).
\]

Thus the interior coefficient is

\[
 \Delta(C_j)
\]

on the anchor and

\[
 \Delta(x+q_j(h))
 =
 \frac1{x+q_j(h)}-
 \frac1{x+q_j(h)+1}
\]

on the affine tail.

## 4. Negative finite character

For transverse frequency \(u\), define

\[
 \chi_u(n)=e_{Q_j}(-nu).
\]

The exact successor relation is

\[
 \boxed{
 \chi_u(n+1)e_{Q_j}(u)=\chi_u(n).
 }
\]

Equivalently,

\[
 \chi_u(n+1)-\chi_u(n)
 =-igl(e_{Q_j}(u)-1\bigr)\chi_u(n+1).
\]

The factor on the right is exactly the transverse multiplier \(m_j(u)\).

## 5. Finite summation by parts

Let \(A<B\), let \(q\in\mathbb N\), and write

\[
 a_n=\frac1{n+q}.
\]

Then the source proves

\[
 \boxed{
 \begin{aligned}
 \sum_{n=A}^{B-1}
   \chi_u(n)(a_n-a_{n+1})
 &=
   \chi_u(A)a_A
   -\chi_u(B-1)a_B \\
 &\quad
   -m_j(u)
    \sum_{n=A+1}^{B-1}\chi_u(n)a_n.
 \end{aligned}
 }
\]

In repository notation:

```text
finite_transverseCharacter_reciprocalDrop_Ico_summationByParts
```

The identity includes both endpoint terms. It introduces no estimate and does not divide by \(m_j(u)\).

## 6. Fixed-difference transform

Let

\[
 \mathcal I_{j,h}(u)
 =
 \sum_x e_{Q_j}(-xu)I_j(x,h).
\]

The source defines three exact pieces.

The constant-anchor transform is

\[
 \mathcal A_{j,h}(u)
 =
 \Delta(C_j)
 \sum_{x\in A_j(h)}\chi_u(x).
\]

Let

\[
 a_j(h)=\max(D_j(h),T_j(h)),
 \qquad
 b_j(h)=V_j(h).
\]

The affine-tail endpoint transform is

\[
 \mathcal E_{j,h}(u)
 =
 \begin{cases}
 \displaystyle
 \frac{\chi_u(a_j(h))}{a_j(h)+q_j(h)}
 -
 \frac{\chi_u(b_j(h)-1)}{b_j(h)+q_j(h)},
 &a_j(h)<b_j(h),\\[3mm]
 0,&a_j(h)\ge b_j(h).
 \end{cases}
\]

The affine-tail harmonic transform is

\[
 \mathcal H_{j,h}(u)
 =
 \begin{cases}
 \displaystyle
 \sum_{x=a_j(h)+1}^{b_j(h)-1}
 \frac{\chi_u(x)}{x+q_j(h)},
 &a_j(h)<b_j(h),\\[3mm]
 0,&a_j(h)\ge b_j(h).
 \end{cases}
\]

The complete fixed-difference identity is

\[
 \boxed{
 \mathcal I_{j,h}(u)
 =
 \mathcal A_{j,h}(u)
 +\mathcal E_{j,h}(u)
 -m_j(u)\mathcal H_{j,h}(u).
 }
\]

The empty-anchor and empty-tail cases are represented exactly by zero.

## 7. Two-dimensional interior transform

After summing in the longitudinal difference frequency,

\[
 \widehat I_j(u,s)
 =
 \sum_h e_{Q_j}(-hs)\mathcal I_{j,h}(u).
\]

Define

\[
 \widehat{AE}_j(u,s)
 =
 \sum_h e_{Q_j}(-hs)
 \bigl(\mathcal A_{j,h}(u)+\mathcal E_{j,h}(u)\bigr),
\]

and

\[
 \widehat H_j(u,s)
 =
 \sum_h e_{Q_j}(-hs)\mathcal H_{j,h}(u).
\]

Then

\[
 \boxed{
 \widehat I_j(u,s)
 =
 \widehat{AE}_j(u,s)
 -m_j(u)\widehat H_j(u,s).
 }
\]

This is the exact point at which the affine reciprocal-drop tail exposes one copy of the transverse multiplier.

## 8. Retained affine boundary symbol

The right-window boundary transform from #934 remains

\[
 \widehat E_j^{\partial}(u,s)
 =
 e_{Q_j}(-c_ju)\widehat e_j(s-u).
\]

Define the complete singular boundary numerator

\[
 \boxed{
 \widehat S_j(u,s)
 =
 \widehat{AE}_j(u,s)
 +e_{Q_j}(-c_ju)\widehat e_j(s-u).
 }
\]

The word “singular” here only records that this term remains multiplied by \(m_j(u)^{-1}\) on nonzero transverse modes. It is not a size assertion.

The complete numerator is therefore

\[
 \boxed{
 \widehat N_j(u,s)
 =
 \widehat S_j(u,s)
 -m_j(u)\widehat H_j(u,s).
 }
\]

## 9. Resolved nonzero modes

For \(u\ne0\), the multiplier is nonzero. Hence

\[
 \begin{aligned}
 m_j(u)^{-1}\widehat N_j(u,s)
 &=
 m_j(u)^{-1}
 \bigl(\widehat S_j(u,s)-m_j(u)\widehat H_j(u,s)\bigr)\\
 &=
 \boxed{
 m_j(u)^{-1}\widehat S_j(u,s)
 -\widehat H_j(u,s).
 }
\end{aligned}
\]

This is an exact cancellation of one algebraic multiplier. It is not an estimate of \(\widehat H_j\).

The transverse zero mode is still not inverted.

## 10. Packet preservation

The low and regular clipping packets are rebuilt with the resolved expression

\[
 m_j(u)^{-1}\widehat S_j(u,s)-\widehat H_j(u,s).
\]

On their respective frequency sets, every \(u\) is nonzero, so the new packets are proved exactly equal to the parent explicit-numerator packets.

The complete packet remains

\[
 \boxed{
 \text{direct signed zero-mode joint packet}
 -\text{low summation-by-parts packet}
 -\text{regular summation-by-parts packet}.
 }
\]

Consequently,

\[
 \operatorname{coreGrowingShiftFirstDifferencePacket}(j)
 =
 2\,
 \operatorname{coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket}(j).
\]

The new all-scale proposition is exactly equivalent to the parent proposition.

## 11. What has and has not changed

The deterministic gain is that the affine-tail harmonic sum no longer carries the transverse small divisor after the exact resolvent identity.

The following remain analytically open:

- the constant-anchor transform;
- the affine-tail endpoint terms;
- the affine boundary symbol;
- the multiplier-free harmonic tail;
- the logarithmically many low modes;
- the regular transverse sum;
- the direct zero-mode joint packet;
- the complete signed cancellation theorem.

In particular, removing one scalar multiplier does not imply that the harmonic term is small.

## 12. Source-facing interface

The proof-producing interface keeps separate obligations for:

- exact fixed-difference support;
- anchor/tail normalization;
- finite summation by parts;
- multiplier-free tail-harmonic preservation;
- singular anchor/endpoint preservation;
- affine boundary-symbol preservation;
- scalar resolvent control;
- direct zero-mode preservation;
- low-mode arithmetic control;
- regular-mode arithmetic control;
- low-anchor preservation;
- joint signed bulk/clipping cancellation;
- all-scale uniformity;
- finite small-scale control.

No adapter value is constructed.

## 13. Current frontier

The complete nonzero resolved clipping transform now has the exact form

\[
 \boxed{
 m_j(u)^{-1}
 \left(
 \widehat{AE}_j(u,s)
 +e_{Q_j}(-c_ju)\widehat e_j(s-u)
 \right)
 -\widehat H_j(u,s).
 }
\]

The next bounded question is arithmetic rather than geometric: determine whether the multiplier-free harmonic tail can be combined with the Möbius Fourier factors before applying an absolute value, while the anchor, endpoint, and affine-boundary terms remain in the same signed packet.

## 14. Evidence and nonclaims

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
TRANSVERSE_SUMMATION_BY_PARTS_ESTIMATE_OPEN
```

No claim is made of:

- Lean elaboration;
- kernel acceptance;
- trust audit;
- external replay;
- an anchor estimate;
- an affine-tail harmonic estimate;
- a tail-endpoint estimate;
- a boundary-symbol estimate;
- a low-mode estimate;
- a regular-mode estimate;
- a direct zero-mode estimate;
- a complete signed estimate;
- a Chowla adapter;
- a corrected-Elliott adapter;
- a Gowers adapter;
- a large-sieve adapter;
- a dispersion adapter;
- merge;
- proof or disproof of the Riemann Hypothesis.