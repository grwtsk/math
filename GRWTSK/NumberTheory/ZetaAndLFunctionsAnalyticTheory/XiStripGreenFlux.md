# Spatial mass and curvature of the strip measurement

Let \(k=\pi/L\) and \(0\le kd<\pi/2\). The derivative in the horizontal displacement of the [midpoint Green kernel](XiStripGreenKernel.md) has the positive density
\[
 \partial_d G_L(d,x)=
 \frac{k\cos(kd)\cosh(kx)}{\sinh^2(kx)+\cos^2(kd)}
 =\partial_x\arctan\left(\frac{\sinh(kx)}{\cos(kd)}\right).
\]
The denominator follows by multiplying \(\cosh(kx)+\sin(kd)\) by \(\cosh(kx)-\sin(kd)\). The finite flux integral on \([-R,R]\) is exactly \(2\arctan(\sinh(kR)/\cos(kd))\); it increases to \(\pi\). Tonelli in \(0\le v\le d\) therefore gives
\[
 \int_{\mathbb R}G_L(d,x)\,dx=\pi d.
\]
The norm of the spatial response to one zero measures its displacement linearly, with no dependence on strip width. The Lean companion verifies both derivative identities and the finite-interval integral for the logarithmic potential; its first theorem identifies that potential with the Green function at the relevant ratio. The infinite-limit and distributional assertions below are analytic arguments. [Lean companion](XiStripGreenFlux.lean)

For a fixed \(L\), allow the left boundary \(\sigma\) to vary where \(1/2<\sigma<1\) and \(\sigma+L/2>1\). Each zero contributes \(G_L((\beta-\sigma)_+,\gamma-b)\). In the region \(\sigma<\beta\) the Green function is harmonic in \((\sigma,b)\), since the log-ratio is the logarithm of the modulus of a nonvanishing holomorphic quotient there. In \(\sigma>\beta\) it vanishes. At the interface its value is continuous and its first normal derivative jumps from \(-k\sech(k(\gamma-b))\) to zero. Integrating by parts on the two sides gives the distributional identity
\[
 (\partial_\sigma^2+\partial_b^2)D_{\sigma,L}(b)
   = k\sum_\rho m_\rho\,\delta_\beta(d\sigma)\sech(k(\gamma-b))\,db .
\]
Use compactly supported tests inside the stated open region. The finite-height head is locally finite and all tails, including the derivatives required away from the interfaces, are bounded by a constant times \(m_\rho e^{-k|\gamma|}\). The anchor majorant allows summation after integration by parts. Integrating this curvature over a slab on the \(\sigma\)-axis measures the complete height distribution of the zeros in that range of real parts, smoothed by a kernel with nonvanishing Fourier transform. For an atomic slice \(d\sigma=\delta_\beta\), deconvolution at the level of distributions recovers every ordinate and its order. More precisely, divide the Fourier transform locally by the nonzero smooth multiplier on compact frequency tests; injectivity follows without asserting that division preserves temperedness for arbitrary input data.

For comparison of two admissible widths, the Fourier transform in \(x\), with convention \(e^{-i\omega x}\), is
\[
 \widehat G_L(d,\omega)=\frac{\pi\sinh(\omega d)}{\omega\cosh(L\omega/2)}
\]
with value \(\pi d\) at zero. Indeed harmonicity gives \(\partial_d^2\widehat G=\omega^2\widehat G\); at \(d=0\) its value is zero and its normal derivative is \(\pi/\cosh(L\omega/2)\). Exponential localization justifies differentiating for \(d\) in every compact subinterval of \([0,L/2)\). The endpoint \(d=L/2,x=0\) is singular and is excluded by the source-point condition. These formulas reconstruct a measured divisor. They leave the decisive question of whether its part strictly to the right of the critical line has zero mass.

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob e39c277dc23306244820ab3e50a3b9d670ee3e93. A new empty kernel environment replayed the used declaration closure (8 roots, 41176 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
