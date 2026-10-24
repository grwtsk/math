# Complete source: GRWTSK.NumberTheory.DerivativeBound.Variant81c015902b0b3a1013d7ac16dc470ee8d5758ac225965bdebc77e202d3646f7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `345e2b4f0fbf1518148aa748ac234828bef4757b` · SHA-256 `81c015902b0b3a1013d7ac16dc470ee8d5758ac225965bdebc77e202d3646f7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Maksym Radziwill. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Maksym Radziwill
-/

import Architect
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.NumberTheory.ArithmeticFunction.Defs
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.Zeta
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Analysis.Analytic.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.Analytic.Constructions
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.Calculus.Deriv.Slope
import Mathlib.Analysis.Analytic.Within
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Complex.AbsMax
import PrimeNumberTheoremAnd.BorelCaratheodory

@[blueprint "DerivativeBound"
  (title := "DerivativeBound")
  (statement := /--
  Let $R,\,M>0$ and $0 < r < r' < R$. Let $f$ be analytic on $|z|\leq R$ such that $f(0)=0$ and
  suppose $\Re f(z)\leq M$ for all $|z|\leq R$. Then we have that
  $$|f'(z)|\leq\frac{2M(r')^2}{(R-r')(r'-r)^2}$$
  for all $|z|\leq r$.
  -/)
  (proof := /--
  By Cauchy's integral formula we know that
  $$f'(z)=\frac{1}{2\pi i}\oint_{|w|=r'}\frac{f(w)}{(w-z)^2}\,dw=
  \frac{1}{2\pi }\int_0^{2\pi}\frac{r'e^{it}\,f(r'e^{it})}{(r'e^{it}-z)^2}\,dt.$$
  Thus,
  \begin{equation}\label{pickupPoint0}
      |f'(z)|=\left|\frac{1}{2\pi}\int_0^{2\pi}
      \frac{r'e^{it}\,f(r'e^{it})}{(r'e^{it}-z)^2}\,dt\right|
      \leq\frac{1}{2\pi}\int_0^{2\pi}\left|\frac{r'e^{it}\,f(r'e^{it})}{(r'e^{it}-z)^2}\right|\,dt.
  \end{equation}
  Now applying Theorem \ref{borelCaratheodory-closedBall}, and noting that $r'-r\leq|r'e^{it}-z|$,
  we have that
  $$\left|\frac{r'e^{it}\,f(r'e^{it})}{(r'e^{it}-z)^2}\right|
  \leq\frac{2M(r')^2}{(R-r')(r'-r)^2}.$$
  Substituting this into Equation (\ref{pickupPoint0}) and evaluating the integral completes the
  proof.
  -/)
  (proofUses := ["borelCaratheodory-closedBall"])]
theorem derivativeBound {R M r r' : ℝ} {z : ℂ} {f : ℂ → ℂ}
    (analytic_f : AnalyticOn ℂ f (Metric.closedBall 0 R)) (f_zero_at_zero : f 0 = 0)
    (re_f_le_M : ∀ z ∈ Metric.closedBall 0 R, (f z).re ≤ M) (pos_r : 0 < r)
    (z_in_r : z ∈ Metric.closedBall 0 r) (r_le_r' : r < r') (r'_le_R : r' < R) :
    ‖(deriv f) z‖ ≤ 2 * M * (r')^2 / ((R - r') * (r' - r)^2) := by sorry
```
