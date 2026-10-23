# Riemann conjecture junction at the canonical rectangle-edge witness

Issue: #445  
Parent source: PR #345 at `9356655ba5ce3a8473b718b41a525d19bdaf21bb`  
Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

## 1. Exact terminal object

The maintained deterministic obstruction is:

```lean
CanonicalRectangleEdgeWitness N
```

It contains one natural count, one source-correct half-unit rectangle-edge report, and a proof that the induced rational count interval is accepted by the existing exact isolation test. It therefore proves

```lean
positiveHeightCount (contourHeight N) = count
```

at one selected finite stage. With a separately aligned critical-line family and a strict deficit below two omitted positive-height multiplicity units, it feeds the existing consumer `RHThrough N`.

No listed conjectural program is identified with this witness. A route reaches it only through an explicit theorem inhabiting

```lean
WitnessBridge route N
```

or bypasses it through an explicit theorem inhabiting

```lean
BypassBridge route N.
```

## 2. Formal connection shapes

A `RouteClaim route` stores an exact proposition-valued formulation supplied by a future source module. This permits different formulations of the same broad conjectural program without identifying them.

A witness bridge has the shape

```lean
structure WitnessBridge (route : Route) (N : ℕ) where
  claim : RouteClaim route
  deterministicUpgrade : Prop
  produce :
    claim.statement → deterministicUpgrade →
      CanonicalRectangleEdgeWitness N
```

The second premise is mandatory. It carries the theorem converting average, asymptotic, statistical, deformation, or spectral information into the deterministic fixed-contour certificate.

A bypass bridge has the shape

```lean
structure BypassBridge (route : Route) (N : ℕ) where
  claim : RouteClaim route
  deterministicUpgrade : Prop
  proveRHThrough :
    claim.statement → deterministicUpgrade → RHThrough N
```

A bypass is lawful only when it enters the already declared bounded consumer directly. It cannot consist solely of a new slogan, operator analogy, or untyped comparison.

## 3. Connection map

| Route | Principal mechanism | Exact conversion still required before this witness | Formal route name |
|---|---|---|---|
| Lindelöf | value distribution | deterministic lower separation from zero; pointwise logarithmic-derivative enclosure; source alignment; exact count isolation | `Route.lindelof` |
| Keating–Snaith moments | value distribution | average-to-pointwise upgrade; lower separation; pointwise logarithmic-derivative enclosure; source alignment; isolation | `Route.keatingSnaithMoments` |
| Shifted moments | value distribution | average-to-pointwise upgrade at the selected contour; lower separation; pointwise enclosure; source alignment; isolation | `Route.shiftedMoments` |
| Montgomery pair correlation | zero spacing | statistical-to-deterministic upgrade; fixed-contour zero separation; pointwise logarithmic-derivative enclosure; source alignment; isolation | `Route.montgomeryPairCorrelation` |
| GUE spacing | zero spacing | statistical-to-deterministic upgrade; fixed-contour zero separation; pointwise logarithmic-derivative enclosure; source alignment; isolation | `Route.gueSpacing` |
| Simplicity | zero spacing | quantitative separation from the selected contour; pointwise logarithmic-derivative enclosure; source alignment; isolation | `Route.simplicity` |
| Gonek–Hejhal negative moments | reciprocal stability | average-to-uniform reciprocal upgrade; fixed-contour separation; pointwise logarithmic-derivative enclosure; source alignment; isolation | `Route.gonekHejhalNegativeMoments` |
| Ratios conjecture | averaged logarithmic derivative | average-to-pointwise upgrade; pointwise logarithmic-derivative enclosure; source alignment; isolation | `Route.ratios` |
| de Bruijn–Newman | heat flow | effective transfer from the deformed family to the actual zeta contour; fixed-contour separation; pointwise enclosure; source alignment; isolation | `Route.deBruijnNewman` |
| Hilbert–Pólya | spectral resolvent | exact operator and domain; self-adjointness; multiplicity-preserving zero correspondence; effective resolvent bound; resolvent-to-log-derivative comparison; source alignment; isolation | `Route.hilbertPolya` |
| Berry–Keating | spectral resolvent | exact quantization and domain; self-adjointness; multiplicity-preserving zero correspondence; effective resolvent bound; resolvent-to-log-derivative comparison; source alignment; isolation | `Route.berryKeating` |

The corresponding formal inventory is `routeObligations`. The source proves that every route retains both `sourceAlignedFiniteCertificate` and `exactCountIsolation` in this witness path.

## 4. Why the extra bridge is mathematically necessary

The witness is a deterministic finite object. It requires rational intervals containing the actual real parts of three normalized zeta logarithmic-derivative densities over complete compact parameter domains, together with integrability and exact integer isolation.

The surrounding programs generally provide one of the following weaker information forms:

- asymptotic value distributions;
- averaged moments;
- limiting pair statistics;
- density-one or typical spacing statements;
- averages of reciprocal derivatives at zeros;
- averaged ratios and logarithmic derivatives;
- statements about a deformed heat-flow family;
- spectral asymptotics or candidate Hamiltonians.

None of these information forms has a built-in coercion to a rational enclosure at one fixed source-aligned contour. The formal bridge therefore separates the source statement from the deterministic upgrade theorem.

## 5. Named source interfaces

The source provides one witness-bridge alias and one bypass-bridge alias for every route, including:

```lean
LindelofWitnessBridge
KeatingSnaithMomentWitnessBridge
ShiftedMomentWitnessBridge
MontgomeryPairCorrelationWitnessBridge
GUESpacingWitnessBridge
SimplicityWitnessBridge
GonekHejhalNegativeMomentWitnessBridge
RatiosWitnessBridge
DeBruijnNewmanWitnessBridge
HilbertPolyaWitnessBridge
BerryKeatingWitnessBridge
```

The corresponding named theorems `hasWitness_of_*` do not prove their premises. They expose exactly what a future route-specific module must supply.

`AllRouteConnections N` is a registry type containing one actual `RouteConnection` for every route. No inhabitant is supplied. Constructing one would require eleven theorem bridges, each with its own source and deterministic-upgrade evidence.

## 6. Provenance references

These references explain the surrounding programs. They are not formal imports and do not discharge any source field.

- J. P. Keating and N. C. Snaith, *Random matrix theory and ζ(1/2+it)*, Communications in Mathematical Physics 214 (2000), DOI `10.1007/s002200000262`.
- J. B. Conrey, D. W. Farmer, J. P. Keating, M. O. Rubinstein, and N. C. Snaith, *Integral moments of L-functions*, arXiv:`math/0206018`.
- H. L. Montgomery, *The pair correlation of zeros of the zeta function*, Proceedings of Symposia in Pure Mathematics 24 (1973).
- H. M. Bui, S. M. Gonek, and M. B. Milinovich, *A hybrid Euler–Hadamard product and moments of ζ′(ρ)*, arXiv:`1302.5032`.
- W. Heap, J. Li, and J. Zhao, *Lower bounds for discrete negative moments of the Riemann zeta function*, arXiv:`2003.09368`.
- J. B. Conrey, D. W. Farmer, and M. R. Zirnbauer, *Autocorrelation of ratios of L-functions*, arXiv:`0711.0718`.
- B. Rodgers and T. Tao, *The de Bruijn–Newman constant is non-negative*, arXiv:`1801.05914`.
- M. V. Berry and J. P. Keating, *The Riemann zeros and eigenvalue asymptotics*, SIAM Review 41 (1999), DOI `10.1137/S0036144598347497`.

## 7. Nonclaims

This layer does not claim that:

- any listed conjecture is true;
- any listed conjecture implies the witness;
- any listed conjecture implies `RHThrough N` or global RH;
- average control implies pointwise control;
- simplicity implies a quantitative gap from a selected contour;
- a heat-flow statement automatically transfers to the undeformed zeta function;
- a spectral analogy defines a self-adjoint operator;
- spectral asymptotics give a multiplicity-preserving zero correspondence;
- a source draft has elaborated or been accepted by the Lean kernel.

## 8. Evidence state

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```
