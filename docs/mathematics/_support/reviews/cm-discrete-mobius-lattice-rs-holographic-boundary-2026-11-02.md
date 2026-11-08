# An actual discrete Möbius lattice, and the limits of an AdS/RS lift

Local attribution: **grwtsk contributors**. Formalization assistance: OpenAI.

**Disposition:** analytically motivated source proof candidates, `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`; no theorem-level novelty or physical duality claim.

## Exact mathematical objects

There are **two different meanings** of the word “Möbius,” and neither replaces the other:

1. **Geometric Möbius action:** a fractional-linear map on a genuine discretely indexed complex lattice site, selected from the actual Mathlib action of `SL(2, ℤ)` on the complex upper half-plane. The discrete point `(m,h) ∈ ℤ × ℕ` is represented by `m + i(h+1)`. Under `g=[[a,b],[c,d]] ∈ SL(2,ℤ)`, its transformed geometric location is `(az+b)/(cz+d)` as a point of the smooth upper half-plane. The positive imaginary part ensures the denominator does not vanish. The action of `g` is invertible on its **image lattice**, so original sites never collide. It does **not** generally permute the fixed Gaussian-integer grid. For instance `S(2i)=i/2`, outside the grid. The modular action on `τ` changes lattice bases and belongs to moduli geometry, not automatically to a 4D physical boundary.
2. **Arithmetic Möbius coefficient:** the unchanged `GRWTSK.RiemannHypothesis.CCC.moebiusReal n`, taken from `ArithmeticFunction.moebius n`. Every integer label `n`, its parity `n%2`, its additive class `⌊n/2⌋ mod d²`, and its original source response `pickupResponse n t` stays attached to the same discrete atom. The geometric action moves `geometricPosition`, not the arithmetic source.

The modules `CMDiscreteModularLattice.lean` and `CMDiscreteMoebiusResidueWaypoints.lean` construct and compare exactly these objects. The original `completeWave j d t` and `pickupEnergy(dyadicTime j)` are recovered by summing all unchanged signed integer weights. No residue alias, nonunit exclusion, deletion of squareful-zero sites, or change from the scalar square of a coherent sum to the Hilbert norm occurs.

## Distinct, correctly dimensioned RS/AdS geometry

For the Randall–Sundrum setting the actual *boundary sampling grid* is separately represented as `Fin 4 → ℤ`, embedded faithfully into Euclidean `ℝ⁴`. A Poincaré-patch bulk point has real horizontal coordinates `x ∈ ℝ⁴` and a strictly positive continuous radial coordinate `z`. Its Euclidean hyperbolic/AdS₅ metric is, up to a constant AdS radius,

`ds² = (Σᵢ dxᵢ² + dz²)/z²`.

The module `CMDiscreteRSBoundaryBulk.lean` defines (a) positive dilatations `(x,z) ↦ (λx,λz)` and proves the exact quadratic-metric identity by cancellation; and (b) interior inversion `(x,z) ↦ (x,z)/(|x|²+z²)`, with strictly positive denominator for `z>0`. Boundary inversion `x↦x/|x|²` is explicitly **partial** at `x=0`; it is never used as a total field action there. The module also takes an actual 4D integer lattice site to any positive bulk height and applies inversion to that lift.

These are only kinematic components of the Euclidean AdS₅ conformal group; **not** a proof of Einstein's equations, an RS brane-world solution, an AdS/CFT operator dictionary, Lorentzian dynamics, or smooth interpolation/reconstruction of bulk fields from discrete data. A bulk field would need a prescribed boundary operator or source, mass/boundary conditions, Green kernel and conservation/renormalization laws. The boundary CFT transformation law would need conformal weights and the appropriate Jacobians: moving sample points alone does not transform a CFT observable covariantly.

## Centered CERN waypoints, original residues, exact source return

`CMCenteredResidueWaypointDeployment.WaypointDataset` already carries `count`, `eventKey`, `properTimePs`, `observedValue`, positive conversion `tau0Ps`, and `sourceCitation`. The new `transformedWaypoint` moves an independently indexed lattice **position** through the modular map, while `eventKey`, the real time center `properTimePs/tau0Ps`, `observedValue`, and citation remain exactly unchanged. The existing `C∞` bump partition remains centered on those original times. Nothing asserts that a CERN particle event is a CM Hodge class, an arithmetic residue, or a Möbius lattice site in nature.

The exact retained accounting identity is

`dataCenteredSignal(D,k,t) + dataCenteredPaidResidual(D,k,j,d,t) = transformedLatticeReadout(g,d,j,t) = completeWave(j,d,t)`.

The right-hand equality holds because **all signed source amplitudes remain the old ones**. This is a mathematical reconstruction **with a fully unpaid data residual**; it is not a fit. The squared expression still has `anchor² + 2 anchor × residual + residual²`. There are no downloaded event rows in this increment, and no independent source-to-detector measurement map or statistical likelihood has been provided. The previous CERN record 401 (LHCb `D⁰→Kπ` masterclass events) is an identification and format candidate, not an experimental match.

## Source comparison and independent hostile checks

- Local prior published source on `grwtsk/math/main` at or after `905ed8a13884aa152fa9bdbcacfb61180bb883d6`:
  - `CMCenteredWaypointPartition.lean`, blob `7744ce316bcb4955503aba26a7d4c2d50060fb41`;
  - `CMWindowedBirthResidueRegularization.lean`, blob `bbe681cb8e5e6d85df387d503cab7dbbb6e7f055`;
  - `CMCenteredResidueWaypointDeployment.lean`, blob `b7b205c0353945bb387fe1dbfb40cc042456b244`;
  - source `DyadicSignedResidueWaveform.lean`, blob `07dfdae4a60b05f5da55cc20882411c85444fa82`;
  - source `MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.
- Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1: `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction`, `Mathlib.NumberTheory.Modular`, `Mathlib.NumberTheory.Zsqrtd.GaussianInt`.
- Primary/context references: Randall–Sundrum, *Large Mass Hierarchy from a Small Extra Dimension*, Phys. Rev. Lett. 83, 3370 (1999), DOI `10.1103/PhysRevLett.83.3370`; Pérez-Victoria, *Randall-Sundrum models and the regularized AdS/CFT correspondence*, JHEP 05 (2001) 064, DOI `10.1088/1126-6708/2001/05/064`; D’Hoker and Kaidi, *Modular Forms and String Theory*, Chapter 3 (2024), DOI `10.1017/9781009457521.005`. No theorem claims that these literature results automatically establish the new source models' physical correspondence.
- Independent exact-rational finite diagnostic `discrete_moebius_lattice_reference.py` and result JSON: **3,026 checks** on 25 explicit matrices and 28 grid points per matrix, exact matrix composition/injectivity, `S(2i)=i/2`, 4D positive bulk inversion and warped-dilation metric, and complete signed source grouping for inventories `j=0..8` and `d=1..5`. The squared sum uses **both ordered signs/cross terms**. The rational amplitude fixtures are not CERN data and do not prove analytic estimates.

## Verification and completion gates

New source files have no explicit `sorry`, `admit`, `axiom`, `native_decide` or process runners. But none has yet been elaborated by the pinned Lean toolchain; expected declarations, import closure, fresh kernel acceptance and transitive axiom audit are all **NOT_RUN**. On complete source readback pin the individual Git blobs and the eventual commit. Existing source proof candidates retain their earlier status; publication does not propagate acceptance through imports.

A full rigorous physical bridge remains open: (i) an independently established **4D conformal boundary operator and its covariance law**, (ii) a field-level bulk extension with boundary conditions and its equations of motion, (iii) an experimentally specified detector observable and unit conversion, and (iv) a genuine fit to downloaded CERN event-level data against a standard physics baseline with uncertainty and backgrounds. Neither the original all-rate signed Möbius energy estimate nor periodic Schwartz-to-`L^p` smoothing is supplied by these lattice kinematics.
