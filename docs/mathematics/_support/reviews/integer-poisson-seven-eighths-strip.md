# Seven-eighths strip adaptation of the integer Poisson zero frame

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** Conditional on the independently published zero-free half-plane
`Re(s)>7/8`, the zero-side Poisson frame improves from

```text
D_Z <= 2 E_Z^*
```

at the open-critical-strip optimum to

```text
16 D_Z <= 25 E_Z^(7/8).
```

The matching source-exact centered p-adic allowance improves from `1/4` to
`8/25`.  The external theorem is not replayed or imported as an axiom.  The
zero-to-prime source comparison and the centered p-adic upper estimate remain
open and visible.

## 1. External analytic input and reflection

OpenAI's preprint *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane
Re(s)>7/8* states that every nontrivial zeta zero satisfies

```text
Re rho <= 7/8.
```

Critical reflection sends `rho=beta+i gamma` to
`1-beta+i gamma`, which is another nontrivial zero. Applying the same upper
bound to the reflected point gives

```text
1/8 <= beta <= 7/8.
```

The Lean source records this exact symmetric strip as the visible proposition
`SevenEighthsSymmetricStrip`; it does not silently promote the external paper
to local verified evidence.

## 2. Endpoint-balanced sampling line

For a vertical sampling line `Re(s)=sigma`, nearest-integer frequency distance
at most `1/2`, and a zero with real part `beta`, put

```text
a = sigma-beta,
d = nearest(gamma)-gamma.
```

The Poisson kernel is

```text
K = a/(a^2+d^2).
```

Under the symmetric strip, `a` ranges over

```text
sigma-7/8 <= a <= sigma-1/8.
```

The two endpoint losses are balanced when their product is `1/4`, the square
of the maximal nearest-grid displacement:

```text
(sigma-7/8)(sigma-1/8)=1/4.
```

The admissible solution is

```text
sigma=9/8.
```

At this line one has `1/4 <= a <= 1` and `d^2<=1/4`.  Since

```text
(4a-1)(a-1)<=0,
```

it follows that

```text
4(a^2+d^2)<=5a,
```

and therefore

```text
K>=4/5.
```

This is the exact endpoint-balanced constant for the strip `[1/8,7/8]` on
the unit nearest-integer grid.

## 3. Multiplicity-sensitive lower frame

Let `M_k` be the complete analytic multiplicity assigned to frequency bin `k`
and let `P_k` be the full positive Poisson sample at that bin. Positivity gives

```text
P_k >= (4/5) M_k.
```

Because `M_k` is a nonnegative integer, `M_k^2>=M_k`. Hence

```text
25 P_k^2 >= 16 M_k.
```

The bins partition the uncredited positive-height zero inventory, including
actual analytic multiplicity. Summing gives

```text
16 D_Z <= 25 E_Z^(7/8).
```

There is no `Z+1` loss; collisions in one bin increase the square.

If an arithmetic sample energy `E_A` dominates this zero energy and

```text
E_A < 32/25,
```

then `D_Z<2`, hence `D_Z<=1` by integrality.

## 4. P-adic prime-window consequence

The already-published source identity is

```text
primeWindowFamilyEnergy = 4 * centeredPacketFamilyEnergy.
```

Therefore, after a source-exact comparison

```text
E_Z^(7/8) <= primeWindowFamilyEnergy,
```

the sufficient centered arithmetic target is

```text
centeredPacketFamilyEnergy < 8/25.
```

This improves the open-critical-strip allowance `1/4` by the factor `32/25`.
It does not prove the centered estimate.

## 5. General strip law

For a symmetric strip

```text
1-theta <= beta <= theta,   1/2<theta<1,
```

the same optimization gives

```text
L = 2 theta - 1,
r = sqrt(1+L^2),
sigma_theta = (1+r)/2,
K_min = 1/r.
```

Thus the generic frame and centered allowance are

```text
D_Z <= (1+(2theta-1)^2) E_Z^(theta),
centeredPacketFamilyEnergy < 1/(2(1+(2theta-1)^2)).
```

At `theta=7/8`, these become `25/16` and `8/25`.  At the currently recorded
working threshold `theta=0.87338196661325`, the centered allowance would be
approximately `0.3209950596`, conditional on acceptance of that stronger
external boundary.

## 6. First outer-collar obstruction

A completed logarithmic derivative contains zeros above the finite target
height. Positivity does not make them harmless.

Place a hypothetical source point one half frequency unit above the last
sample. Under the same strip, its contribution at the adjacent sample is at
least `4/5`, so its squared contribution is at least `16/25`.

An off-line point has a distinct critical reflection at the same positive
height. The pair contributes at least

```text
(4/5+4/5)^2 = 64/25.
```

This is strictly larger than the complete one-zero arithmetic threshold
`32/25`. Therefore a direct comparison with the untruncated completed
logarithmic derivative cannot close the certificate merely by positivity. It
must do at least one of the following:

1. subtract or certify the first outer height collar;
2. use a finite-head contour identity;
3. use a compact spectral test with a separately paid tail;
4. establish a signed cancellation theorem for the omitted contribution.

The source formalizes the scalar collar inequalities. It does not assert that
such an outer off-line pair exists.

## 7. Remaining load-bearing statements

1. Replay or independently verify the external `Re(s)>7/8` theorem before
   upgrading the strip premise's evidence status.
2. Prove a source-exact finite-head explicit-formula comparison to the literal
   prime-window family, paying known zeros, negative heights, outer zeros,
   gamma/pole/trivial-zero terms, and endpoint conventions.
3. Prove `centeredPacketFamilyEnergy < 8/25` cofinally while retaining all
   rough-prime subset signs and floor carries.
4. Compile, fresh-kernel check, and transitively audit the complete source
   closure.

No cofinal numerical witness or RH conclusion is claimed.
