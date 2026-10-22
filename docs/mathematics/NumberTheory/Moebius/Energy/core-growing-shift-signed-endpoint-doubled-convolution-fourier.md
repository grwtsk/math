# Doubled endpoint convolution and frequency-diagonal bulk

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #884  
Parent draft PR: #879  
Parent revision: `32a1f8485ae3502f2ca0c95459eb4390a3223a6a`

This note records an exact finite reorganization of the signed endpoint packet from #876. It introduces no analytic estimate and does not discharge the remaining arithmetic source premise.

## 1. Parent decomposition

At scale \(j\), write

\[
Y=2^{j+1}.
\]

The parent branch expresses the strict endpoint coefficient as

\[
A_j(n,m)=B_j(m-n)-R_j(n,m-n),
\qquad 1\le n<m<Y,
\]

where \(B_j(h)\) depends only on the ordinary positive difference \(h\), while \(R_j(n,h)\) is the exact left-endpoint clipping correction.

On the parent cyclic group of order \(Y\), the strict bulk matrix is upper triangular. It is Toeplitz on its support, but it is not a circulant matrix: replacing \(m-n\) by the modular difference would create wrapped reverse pairs. Therefore its two-dimensional DFT cannot be collapsed merely by calling the parent kernel translation-invariant.

## 2. Move the window into the arithmetic sequence

Define the doubled modulus

\[
Q=2Y.
\]

The endpoint Möbius sequence is extended to \(\mathbf Z/Q\mathbf Z\) by

\[
f_j^{(Q)}(x)=
egin{cases}
\mu(x),&1\le x_{\mathrm{val}}<Y,\\
0,&	ext{otherwise}.
\end{cases}
\]

More precisely, the source reuses the parent zero-padded Möbius function on the initial canonical window \([0,Y)\) and sets it to zero on \([Y,Q)\).

This is the critical placement of the cutoff. The kernel will be genuinely convolutional on all of \(\mathbf Z/Q\mathbf Z\); the finite endpoint window is enforced by \(f_j^{(Q)}\), not by adding a triangular indicator to the convolution kernel.

## 3. Positive-difference symbol

Define the doubled bulk symbol

\[
b_j^{(Q)}(z)=
egin{cases}
B_j(z_{\mathrm{val}}),&1\le z_{\mathrm{val}}<Y,\\
0,&	ext{otherwise}.
\end{cases}
\]

The cyclic bulk kernel is

\[
K^{\mathrm{bulk},Q}_j(x,y)=b_j^{(Q)}(y-x).
\]

This is a genuine difference kernel on the full doubled group.

For canonical representatives \(x_{\mathrm{val}},y_{\mathrm{val}}<Y\):

- if \(x_{\mathrm{val}}<y_{\mathrm{val}}\), then
  
  \[
  (y-x)_{\mathrm{val}}=y_{\mathrm{val}}-x_{\mathrm{val}}<Y;
  \]

- if \(y_{\mathrm{val}}=x_{\mathrm{val}}\), then \(y-x=0\), where the symbol vanishes;

- if \(y_{\mathrm{val}}<x_{\mathrm{val}}\), then the canonical representative of \(y-x\) lies in \([Y,Q)\), where the symbol also vanishes.

Thus the doubled convolution reproduces the parent strict upper-triangular bulk after multiplication by the endpoint window:

\[
oxed{
 f_j^{(Q)}(x)f_j^{(Q)}(y)K^{\mathrm{bulk},Q}_j(x,y)
 =
 f_j^{(Y)}(x)f_j^{(Y)}(y)K^{\mathrm{bulk},0}_j(x,y)
}
\]

under the exact canonical-representative reindexing.

No reverse pair, diagonal term, or wrapped difference is introduced.

## 4. Exact clipping lift

The clipping correction is not translation-invariant. It is lifted to the doubled group by initial-window zero extension:

\[
K^{\mathrm{clip},Q}_j(x,y)=
egin{cases}
K^{\mathrm{clip},0}_j(x_{\mathrm{val}},y_{\mathrm{val}}),
&x_{\mathrm{val}},y_{\mathrm{val}}<Y,\\
0,&	ext{otherwise}.
\end{cases}
\]

The complete doubled signed kernel is

\[
K^{\mathrm{signed},Q}_j
=
K^{\mathrm{bulk},Q}_j-K^{\mathrm{clip},Q}_j.
\]

Finite reindexing proves separately that the doubled bulk and clipping bilinear forms equal their parent forms. Hence

\[
oxed{
\sum_{x,y\in\mathbf Z/Q\mathbf Z}
 f_j^{(Q)}(x)f_j^{(Q)}(y)K^{\mathrm{signed},Q}_j(x,y)
=
\sum_{x,y\in\mathbf Z/Y\mathbf Z}
 f_j^{(Y)}(x)f_j^{(Y)}(y)K^{\mathrm{diff-clip},0}_j(x,y).
}
\]

The equality is exact. The clipping correction is retained with its sign.

## 5. Generic frequency-diagonal theorem

For any \(a:\mathbf Z/Q\mathbf Z	o\mathbf C\), define

\[
K_a(x,y)=a(y-x).
\]

Using the repository convention

\[
\widehat K_a(r,s)
=
\sum_x e_Q(-xr)\sum_y e_Q(-ys)K_a(x,y),
\]

substitute \(z=y-x\). The inner transform becomes

\[
\sum_y e_Q(-ys)a(y-x)
=
e_Q(-xs)\widehat a(s).
\]

The outer sum is therefore

\[
\widehat a(s)\sum_x e_Qigl(-x(r+s)igr).
\]

Finite character orthogonality gives

\[
oxed{
\widehat K_a(r,s)
=
egin{cases}
Q\,\widehat a(s),&r+s=0,\\
0,&r+s
e0.
\end{cases}
}
\]

In source this is

```text
finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal
```

The gain is deterministic spectral support on one frequency relation. It is not an estimate.

## 6. One-frequency bulk packet

Apply the preceding theorem to \(a=b_j^{(Q)}\). The doubled bulk contribution

\[
Q^{-2}\sum_{r,s}
 \widehat f_j^{(Q)}(-r)
 \widehat f_j^{(Q)}(-s)
 \widehat K^{\mathrm{bulk},Q}_j(r,s)
\]

collapses exactly to

\[
oxed{
Q^{-1}\sum_s
 \widehat f_j^{(Q)}(s)
 \widehat f_j^{(Q)}(-s)
 \widehat b_j^{(Q)}(s).
}
\]

This is packaged as

```text
coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex
```

and proved equal to the full doubled two-frequency bulk packet.

No positivity statement is made. Even when the Möbius zero extension is real-valued and the two Möbius transforms are related by conjugation, the multiplier

\[
\widehat b_j^{(Q)}(s)
\]

remains signed and complex in general. The source does not replace the summand by a nonnegative energy or its absolute value.

## 7. The clipping term remains two-frequency

The exact clipping lift has transform

\[
\widehat K^{\mathrm{clip},Q}_j(r,s),
\]

with no asserted diagonal support. Its Fourier packet remains

\[
Q^{-2}\sum_{r,s}
 \widehat f_j^{(Q)}(-r)
 \widehat f_j^{(Q)}(-s)
 \widehat K^{\mathrm{clip},Q}_j(r,s).
\]

The complete deterministic packet is therefore

\[
oxed{
\mathcal P_j^{\mathrm{double}}
=
\mathcal P_j^{\mathrm{bulk},1\mathrm D}
-
\mathcal P_j^{\mathrm{clip},2\mathrm D}.
}
\]

The source proves

\[
oxed{
\mathcal P_j^{\mathrm{double}}
=
\mathcal P_j^{\mathrm{diff-clip}}
}
\]

and consequently

\[
oxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,\operatorname{coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket}(j).
}
\]

## 8. RH-facing source equivalence

The new all-scale proposition is

```text
SubpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
```

It is exactly equivalent to

```text
SubpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
```

from #876. The conditional RH endpoint is transported through this equality. No stronger arithmetic premise is introduced.

The proof-producing source interface keeps separate obligations for:

- doubled-modulus no-wrap;
- exact initial-window zero extension;
- cyclic bulk convolution;
- frequency-diagonal support of the bulk;
- exact clipping lift;
- DFT sign normalization;
- low-anchor preservation inside the bulk symbol;
- preservation of the signed bulk multiplier;
- joint signed bulk/clipping cancellation;
- all-scale uniformity;
- finite small-scale control.

## 9. Analytic frontier

The deterministic reduction is now

\[
oxed{
	ext{one-frequency signed bulk multiplier}
-
	ext{two-frequency endpoint clipping correction}.
}
\]

The remaining open obligation is a joint subpolynomial estimate for that signed combination. An estimate of the bulk alone does not discharge the clipping term, and separate absolute estimates may destroy cancellation between them.

A next bounded increment should inspect the structure of the bulk symbol transform and the support geometry of the clipping transform before selecting an analytic supplier. It must not infer a bound merely from the frequency collapse.

## 10. Evidence and nonclaims

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
DOUBLED_BULK_CONVOLUTION_ESTIMATE_OPEN
```

No claim is made of:

- Lean elaboration;
- kernel acceptance;
- trust audit;
- external replay;
- an estimate for the one-frequency bulk packet;
- an estimate for the clipping packet;
- a joint signed bulk/clipping estimate;
- a Parseval, Cauchy--Schwarz, Hilbert--Schmidt, or operator-norm argument;
- a Chowla, corrected-Elliott, Gowers, large-sieve, or dispersion adapter;
- merge;
- proof or disproof of the Riemann Hypothesis.