# CERN waveform data guide the finite estimates—but not the Möbius bound

Research date: 2026-11-02. Source: [CERN CMS Open Data, record 5200](https://opendata.cern.ch/record/5200), DOI \`10.7483/OPENDATA.CMS.YGG7.333M\`; 2012 four-muon educational selected-event sample. The **unchanged** original \`data/cern/CMS_4mu_2012.csv\` is pinned by Git blob \`4d87fe4e859802bb225d722353c10148b96e7a95\`, originally from \`cms-opendata-education/cms-jupyter-materials-english\` at revision \`fd23734a71b863d944d44f7dbe9c0d0261c5302b\`. Original \`GRWTSK/MeasureAndIntegration/CERNOpenDataWaveform.lean\` blob \`5ca37d1507fbaa89cf7addbf5eb1ee0f3539a0bd\` accepts complete records and separately projects invariant mass through \`UniversalInput\` (blob \`639bd1f0954197c8b53510c38c8f54f61e29cd90\`).

**Evidence class:** empirical finite diagnostics and ordinary finite-dimensional mathematical inequalities; source-level Lean proof candidates where identified. No physical-time series, all-scale Kakeya inequality, original Möbius arithmetic cancellation, or kernel-verified RH proof is claimed. This derived educational sample is not suitable for a complete collider physics analysis.

## 1. Measured size and consistency of the source

The original sample contains **95 rows × 41 source columns**, with 95 distinct \`(Run,Event)\` pairs and no missing printed cells. The analysis index is **CSV row ordinal**. No detector timestamps or event sampling interval are asserted.

The displayed four-lepton invariant-mass channel \`M\` (GeV) has:

| Statistic | Finite sample value |
|---|---:|
| Minimum / median / maximum | 84.6431 / 188.527 / 742.146 GeV |
| 25th / 75th percentiles | 96.097 / 240.5925 GeV |
| Mean / population standard deviation | 197.92770421 / 115.48054253 GeV |
| \(\lVert M\rVert_2\) | 2233.50789584 GeV |
| \(\lVert M-\bar M\rVert_2\) | 1125.56509890 GeV |

Each original decimal mass was parsed as an integer mantissa and decimal scale before calculating exact finite square sums. The original finite energy is \(\sum_i M_i^2=4,988,557.52079913\) GeV². It is **not** the time integral \(\int F(t)^2dt\).

Reconstructing invariant mass from the four displayed rounded four-vectors using \(M_{\rm kin}=\sqrt{(\sum_i E_i)^2-\lvert\sum_i\vec p_i\rvert^2}\) gives an empirical mean absolute discrepancy of **0.00046675 GeV** and maximum absolute discrepancy **0.00293236 GeV** against the printed source \`M\`. These are *observed discrepancies* for this exact selected CSV, not a detector error bound or all-scale reconstruction guarantee.

## 2. A data-driven counterexample to discarding the signed transport residual

For this section alone, choose the **illustrative** event-index kernel \(K_{ij}=1\) when \(i\ne j\), zero on the diagonal. It is NOT \`pickupResponseGram T\` and is not a physical interaction kernel. Let \(m_i=M_i\) and \(c_i=m_i-\bar m\).

The exact finite identity \(X_K(x)=\sum_{i\ne j}x_ix_j=(\sum_i x_i)^2-\sum_i x_i^2\) gives:

| Packet | Signed value (GeV²) |
|---|---:|
| Original \(\sum_{i\ne j}m_i m_j\) | +348,569,211.7279985 |
| Centered \(\sum_{i\ne j}c_i c_j\) | −1,266,896.7918644 |
| **Original minus centered signed defect** | **+349,836,108.5198629** |

Thus simply centering a waveform *creates an apparent negative cross term* and changes the source by a huge residual; that subtraction is not arithmetic cancellation. Exact source-return is \(\;X_K(m)=X_K(c)+R_K(m,c)\), where all mixed and error-error terms appear in \(R_K\).

An independent signed diagnostic uses **actual CMS muon charges**, not number-theoretic Möbius values. Every selected event has exactly two \(Q=+1\) and two \(Q=-1\), with PDG charge agreement. Its charge-only ordered off-diagonal sum is exactly \(-4\). Set \(x_i=Q_i E_i\) and *artificially omit* its fourth component; the exact signed energy cross defect becomes \(\;2x_4(x_1+x_2+x_3)\). On this data it is positive in 9 events and negative in 86, has maximum absolute magnitude **93,846.127188 GeV²**, and changes the sign of the signed cross packet in **9 of 95** events. This is a real-source unit test for retaining both mixed orientations; it does not identify physical \(Q_i\) with \(\mu(n)\).

## 3. Quantization and finite kernel-error budgets

Let \(x\in\mathbb R^N\) be any original finite waveform coefficients, \(y\) a quantized, coded, centered, or geometric observation, \(e=x-y\), and \(K_{\rm off}\) the **original full signed off-diagonal kernel**. The exact identity is

\[
X_K(x)-X_K(y)=e^\top K_{\rm off}y+y^\top K_{\rm off}e+e^\top K_{\rm off}e.
\]

For any real finite matrix (even nonsymmetric), the ordinary operator-norm/Cauchy–Schwarz bound is

\[
\boxed{
|X_K(x)-X_K(y)|\le
\|K_{\rm off}\|_{\rm op}\,
\bigl(2\|y\|_2\|e\|_2+\|e\|_2^2\bigr).
}
\tag{Transport budget}
\]

This is a **finite theorem for a given kernel**. It does not supply an estimate of \(\|K_{\rm off,T}\|_{\rm op}\) as \(T\to\infty\). For finite CMS mass observations, retaining the raw source and quantizing **only** the mass channel to the nearest positive decimal grid gives:

| Decimal step | Actual \(\|M-y\|_2\) (GeV) | Bound multiplier \(2\|y\|_2\|e\|_2+\|e\|_2^2\) (GeV²) |
|---|---:|---:|
| 1 GeV | 2.922088 | 13059.10 |
| 0.1 GeV | 0.254006 | 1134.71 |
| 0.01 GeV | 0.029852 | 133.35 |
| 0.001 GeV | 0.001315 | 5.8754 |
| 0.0001 GeV | 0 | 0 |

A factor \(\|K_{\rm off}\|_{\rm op}\) remains **multiplicative** on every row. At 0.01 GeV, the error bound is therefore \(133.35\|K_{\rm off}\|_{\rm op}\) GeV². For the illustrative all-off-diagonal-one kernel, its operator norm is 94, and the observed original-minus-quantized signed cross is −663.9280 GeV², inside the corresponding conservative bound. **No quarter-unit RH endpoint allowance may be imported into these dimensioned CERN quantities.** The exact 0.0001 GeV quantization of this channel still loses the 40 OTHER event columns; that is why the original full-record \`eventInput\` remains primary.

## 4. Finite dyadic angular concentration, not an all-scale Kakeya theorem

Use all **380 printed muon azimuths** \(\phi_1,\ldots,\phi_4\) and project each to an unoriented angle modulo \(\pi\). Split the projective angle interval into \(2^j\) equal bins. The finite observed maximum bin occupancy is:

| \(j\) | Direction bins | Max occupancy | Max / uniform-mean occupancy |
|---:|---:|---:|---:|
| 1 | 2 | 190 | 1.00 |
| 2 | 4 | 100 | 1.05 |
| 3 | 8 | 65 | 1.37 |
| 4 | 16 | 35 | 1.47 |
| 5 | 32 | 19 | 1.60 |
| 6 | 64 | 11 | 1.85 |
| 7 | 128 | 8 | 2.69 |
| 8 | 256 | 5 | 3.37 |

This is a **finite angular occupancy statistic** at eight selected scales, not \(\|\mathcal K_h f\|_{L^2(S^1)}\), tube intersection geometry, spatial support, or a bound uniform in every dyadic \(j\). The CSV does not include complete detector trajectory segments, track positions or timestamps, so the azimuth observations cannot be silently promoted to a geometric Kakeya input in \(\mathbb R^2\). The rising ratio at finer bins is also affected by the finite 380-direction sample.

## 5. What the CERN observations actually recommend for the RH arithmetic estimate

The source-specific target remains \(\mathcal E(j\log2)\le C_\varepsilon\,2^{\varepsilon j}\) for every \(\varepsilon>0\) and **all** \(j\) on a fixed dyadic logarithmic set. The original Möbius source coefficients, support, signed ordered cross terms and endpoint \(\le1/4\) error are unchanged.

CERN data demonstrate *three necessary engineering/math safeguards*: (i) preserve complete original records because a scalar mass is a lossy projection; (ii) retain both mixed orientations and the error-error term, since centering/missing components can overwhelm the observation; (iii) control finite geometric congestion at measured scales without claiming it is a Kakeya maximal-function theorem.

The exact missing, genuinely arithmetic comparison would require at every \(T=j\log2\) an observed coefficient representation \(y_T\) **of the ORIGINAL Möbius-indexed source**, \(e_T=\mu_{\le e^T}-y_T\), and the ORIGINAL \(K_T(m,n)=\operatorname{pickupResponseGram}(T,m,n)\), with the actual cutoff and both ordered orientations. Then a *sufficient but not established* transfer criterion is

\[
X_{K_T}(y_T)+
\|K_{\rm off,T}\|_{\rm op}
\bigl(2\|y_T\|_2\|e_T\|_2+\|e_T\|_2^2\bigr)
\le C_\varepsilon e^{\varepsilon T}
\]
for all \(T\) on the fixed good-scale set at every positive rate. Only together with the existing quarter-unit endpoint return and its fully accepted RH theorem could that prove the proposed arithmetic condition (P).

**The CERN sample supplies none of these all-\(j\) Möbius estimates.** Indeed, a finite set of 95 observations cannot bound an arbitrary waveform outside those sampled indices: a different function can agree at all 95 rows yet have arbitrarily large values elsewhere. This is an explicit non-identifiability obstruction, not a lack of computational precision.

## 6. Reproducibility, proposed Lean interface and trust status

- Exact original source blob: \`4d87fe4e859802bb225d722353c10148b96e7a95\`.
- Derived numerical diagnostics: \`data/cern/CMS_4mu_2012_estimate_guidance.json\`, blob \`d168f20786a0e0e4ac2d89e8042d4c8ed0feda73\`, with source revision, full per-event charged-energy defect and mass reconstruction residual, all angular-bin arrays, all decimal grid diagnostics and scope caveats.
- Reproducible stdlib Python: \`scripts/cern/analyze_cms_4mu_estimates.py\`, source candidate blob \`73498ae2a4d8e1980d0cf52d466ee682394a4090\`, which calls the pre-existing pinned complete CSV/JSON verifier first. It should be replayed in a checkout; local Python execution on the original CSV was **not performed** here. The connected GitHub source was actually analyzed in JavaScript, and the signed algebraic equality was checked across the 95 original rows.
- Generic source-level Lean client: \`GRWTSK/MeasureAndIntegration/CERNWaveformSignedGram.lean\`, blob \`a2a1cf3bf6cd04677bc3072c70394e2203091e38\`. Its full by-proof candidate \`signedResidual_complete_mixed_expansion\` specializes to the existing arbitrary-typed \`UniversalInput\` and the actual full 95-event \`massInput\`. Native Lean compilation, expected interface checks, fresh kernel replay and transitive axioms are **NOT_RUN**.

This research note does **not** replace the original arithmetic completion theorem, reduce the 95 selected events to timestamps, assert CMS physics discovery, or attribute numerical CERN calibration to a universal analytic bound.
