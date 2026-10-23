# RH #942 — Formal comparison of anchored coefficients with authentic centered support

**Evidence:** `SOURCE_DRAFT` for this new Lean layer. No Lean/Lake elaboration, kernel checking, axiom/trust audit, or independent replay of the new declarations is established.

## 1. Exact terminal consumer and source audit

- Repository `grwtsk/math`; exact base branch `main`, pinned commit `2382e05d0ec48bc45ec64e538f4b792e277f0d76`, tree `04890262523f398117d5c77ebc5392c694b1a1f0`. This is **not** a stacked PR. The earlier PRs [#1048](https://github.com/grwtsk/math/pull/1048) and [#1052](https://github.com/grwtsk/math/pull/1052) are merged into main; their existence does not by itself certify a kernel replay of the new source.
- Existing issue selected: [#942](https://github.com/grwtsk/math/issues/942). Related genuine centered-support owner [#805](https://github.com/grwtsk/math/issues/805), prior all-packets kernel no-go [#956](https://github.com/grwtsk/math/issues/956), restricted norm-direction issue [#966](https://github.com/grwtsk/math/issues/966), RH root [#15](https://github.com/grwtsk/math/issues/15).
- Lean pin `leanprover/lean4:v4.33.0`; Mathlib pin `db584cd6d46c92f209a44c0f1c829460d327499d`.
- The source imports the existing:
  - `AnchoredPairPositiveShiftBoundary.lean`, blob `d4b7ff5d6b64e9bbdeea3931b4f43f6d6e6477cd`, furnishing `anchoredPositiveShiftDivisorTransform` and the **unconditional finite arithmetic identity with the exact \(a=1,2\) boundary**.
  - `RegularOrbitCenteredWindingZeroModeVariance.lean`, which declares `parityCenteredIntegerCoordinateAmplitude` as the actual `parityZeroWindingShiftFiberCorrelation`. This in turn imports the existing `RegularOrbitZeroWindingCenteredCorrelation.lean`, blob `70facd58b855c1a0aad2eb4c0ba1f7210f7d1ed5`, containing the authentic `zeroWindingCenteredShiftSet` and `parityZeroWindingCenteredMobiusCorrelation`.
  - `CenteredMobiusLogGreenFourierBridge.lean`, blob `6b11fea2492a8552f93919bc215f0e40a53deb7e`, via the first direct import, for the exact historical Fourier coordinate.
- **Terminal RH-facing consumer**: `GRWTSK.RiemannHypothesis.riemannHypothesis_of_arithmeticFourierCoordinateBound` in `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenCoordinateEnergyCriterion.lean`, blob `f40915f82fa625ab74d0cfd9c6459db08e65b75b`. This proves `_root_.RiemannHypothesis` **conditionally** from `AllDyadicArithmeticFourierCoordinateBound`, a complete all-dyadic-scale/all-finite-Fourier-head energy inequality \(\ll_\eta X^{-1+\eta}\), including the original two boundary-square channels. The analytic premise remains **OPEN**.
- **Immediate declared intermediate** consumed by this increment: the already defined `parityCenteredIntegerCoordinateAmplitude b r H c` and `thinGreenArithmeticFourierCoordinate X k`. Their mathematical contents are retained exactly. No new spectral model or Weil form is constructed.

The main branch advanced one documentation-oriented commit while this audit was in progress; the selected base is the later immutable `2382e05d0e...`, rather than the initial inspected `7dfa8648cd...`. Both source layers materially imported here are unchanged.

## 2. Three candidate suppliers (and selection)

| Candidate | Exact consumer | Missing premise, support and witness | Strength / tractability / failure value |
|---|---|---|---|
| **Authentic centered support and exact signed defect (selected)** | `parityCenteredIntegerCoordinateAmplitude`, then the existing finite Green/Fourier coordinate | Recover each anchored term with exact \((b,r,c,h)\), separate other shifts and omitted-family factors; actual \(\mu\)-pair and divisor-antidiagonal coefficients | Exact finite algebra, no speculative analytic bridge; detects multiplicity/zero-shift/support loss |
| Transfer a fixed-affine ordinary Chowla bound directly into the complete dyadic maximal/four-family centered energy | `AllDyadicArithmeticFourierCoordinateBound` | Needs uniformity in growing shifts, prefixes, every Fourier head, both boundary channels and the defect; published fixed-form quantifiers do not supply these automatically | Missing genuinely quantitative strengthening; importing fixed-shift cancellation as sufficient would be invalid |
| Infer Weil-form positivity from nonnegative finite packet energy | `WeilCriterion.lean` / `AllDyadicArithmeticFourierCoordinateBound` | Missing actual test-space map, signed form identity, uniform limit, positivity transport | No typed source-to-Weil comparison; positivity in another space is not a proof of the RH form |

The single implementation layer is the first candidate. The latter two are **documented unproved connections or potential nonimplications**, not Lean axioms, assumptions, or imported theorems.

## 3. Exact canonical observable, normalization, and support

For a positive integer factor \(a\) define the inherited genuine centered-pair index \(x(a)\). Set
\[
r(a)=x(a).r,\quad c(a)=x(a).center,\quad h(a)=x(a).h,\quad
f(a)=\mu(x(a).left)\mu(x(a).right).
\]

The inherited parity-anchoring gives \(\varepsilon(a)f(a)=\mu(a)\), \(\varepsilon(a)=1\) for odd \(a\) and \(-1\) for even \(a\), with \(h(a)>0\iff a\ge3\). The source proves the exact symmetric endpoint identities:
\[
c(a)-h(a)+r(a)=x(a).left,\qquad
c(a)+h(a)+r(a)=x(a).right=a.
\]

For every **positive** \(a\le b\) and any specified genuine shift family \(H:\mathrm{Finset}\,\mathbb N\), the theorem `anchored_shift_mem_authentic_centered_iff` proves
\[
\boxed{
h(a)\in \mathrm{zeroWindingCenteredShiftSet}(b,r(a),c(a),H)
\iff h(a)\in H .
}
\]
This derives the other authentic constraints, not just the shift sign: \(h\le c\), \(2\mid(c-h)\), \(1\le c-h+r\), \(c+h+r\le b\). The centered triple \((r,c,h)\) determines the original positive factor \(a\), so the source index is injective with all three labels retained.

**Canonical signed observable:** \(\mathrm{parityCenteredIntegerCoordinateAmplitude}(b,r,H,c)\) is the actual sum over the exact admissible centered shifts. The source establishes
\[
C_{b,r,H}(c(a))=
\mathbf{1}_{h(a)\in H}\,f(a)+D_{\rm other}(b,a,H),
\]
where
\[
D_{\rm other}(b,a,H)
=\!\!\sum_{\substack{g\in\mathrm{zeroWindingCenteredShiftSet}\\g\neq h(a)}}
\mu(c(a)-g+r(a))\mu(c(a)+g+r(a)).
\]
This is an **exact signed sum**, implemented with `Finset.erase`. The proof consumes the repository's `parityZeroWindingShiftFiberCorrelation_eq_symmetric` and `parityZeroWindingSymmetricMobiusCorrelation_eq_centered`; it does not replace the actual summed amplitude by one source coefficient.

## 4. Exact finite Green connection with all correction channels

At fixed dyadic stage \(X\), retain the original
\[
P_X=\{1,\ldots,2X\},\qquad
Y_X=\{n:X<n\le2X\}.
\]
The source proves the centered membership equivalence for **every genuine antidiagonal divisor factor** \(a\) of \(n\in Y_X\); in particular \(a>0\) and \(a\le 2X\) follow from the actual finite index set, not a loose support enlargement.

The positive anchored transform is partitioned into precisely two signed real contributions for any finite shift family \(H\):

1. \(M_X(n;H)\): each \(a\ge3\) whose \(h(a)\) is in its authentic \(\mathrm{zeroWindingCenteredShiftSet}\), weighted by \(\varepsilon(a)\,[C_{2X,r(a),H}(c(a))-D_{\rm other}(2X,a,H)]\log(n/a)\).
2. \(D_{\rm omit}(X,n;H)\): each \(a\ge3\) not in that authentic support, weighted by the original \(\varepsilon(a)f(a)\log(n/a)\).

The new principal finite theorem `anchoredPositiveDivisor_eq_authentic_matched_add_omitted` proves the **unconditional, exact** identity
\[
T_X^+(f_{\rm anchored};n)=M_X(n;H)+D_{\rm omit}(X,n;H).
\]
The merged predecessor adds the complete \(h(a)=0\) correction
\(B(n)=\log n-\mathbf1_{2\mid n}\log(n/2)\), so the new `vonMangoldt_eq_authentic_matched_add_all_defects` proves
\[
\boxed{\Lambda(n)=M_X(n;H)+D_{\rm omit}(X,n;H)+B(n)}
\qquad(n\in Y_X).
\]

With **no change** to \(1/n\), real-to-complex embedding, \(n/X-1\), Fourier test \(\phi_k\), or the continuum background, the declaration
`thinGreenArithmeticFourierCoordinate_eq_authentic_corrected` establishes
\[
\operatorname{thinGreen}(X,k)
=\operatorname{background}(k)
-\sum_{n\in Y_X}
 \frac{M_X(n;H)+D_{\rm omit}(X,n;H)+B(n)}{n}\,\phi_k(n/X-1).
\]
This is the genuine named consumer of the signed finite comparison.

### Hostile controls

- **Other shifts cannot be discarded.** Example: \(a=b=9\), \(H=\{2,4\}\). Then \(r=1,c=4,h=4\), \(f(9)=\mu(1)\mu(9)=0\), but the additional shift \(g=2\) gives \(\mu(3)\mu(7)=1\). Hence the actual center amplitude is \(1\) while the anchored contribution is \(0\); \(D_{\rm other}=1\). This is an exact finite arithmetic fixture, not an asymptotic statement.
- **Missing-family factors are not zero.** Choosing a shift family \(H\) not containing \(h(a)\) leaves the original anchored coefficient in the named \(D_{\rm omit}\), never coerces it into an admitted center.
- **Zero-shift boundary remains.** At \(n=3,X=2\), the inherited \(B(3)=\log3>0\); the earlier correction cannot be silently dropped.
- **Do not sum parity-family amplitudes or count the same source twice** without a proved equality of chosen \(H\) and the actual family partition. This theorem is parameterized by one specified \(H\), and the exact indexed-pair contribution appears in exactly one of \(M\) or \(D_{\rm omit}\).
- An original fixed-shift \(\mu(n)\mu(n+h)\) estimate does not give uniform growing-shift cancellation, maximal-prefix energy, or an all-head Fourier bound.
- Positive finite squared norms do not imply positivity of a distinct signed Weil Hermitian form; no positive-cone, trace, test-function map or tail is transported.
- The finite comparison is **not** a construction of a bounded inverse or positive lower frame on the actual centered difference space.

## 5. Finite evidence, positivity type and provenance

The exact result is arithmetic linearity, authentic support, a signed remainder, and coefficient equality. **No positivity** of the selected signed observable is proved or assumed: no strict positivity, nonnegativity, PSD kernel, positive measure, positive trace, averaged or finite-height/global Weil positivity. The finite sums include negative \(\mu\)-coefficients and can cancel.

Independent bounded checks executed for this packet:
- 12,480 positive-anchor/finite-center-family cases (\(1\le a\le b\le64\), six representative \(H\) families per endpoint), testing authentic membership and center-amplitude decomposition: no discrepancies.
- 12,480 divisor/prime-log exponent-vector cases (all target \(X<n\le2X\), \(1\le X\le64\), six shift families), testing the three-channel exact \(\Lambda\) coefficient: no discrepancies.

These are **finite computational diagnostics**, not analytic estimates, Lean elaboration or kernel acceptance.

**Actual evidence states:** `SOURCE_DRAFT` established for the new source; `LITERATURE_REVIEWED`, `ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`, `EXTERNALLY_REPLAYED`, `ANALYTIC_PREMISES_DISCHARGED` not established here. The imported repository branches and external works have their own independent verification histories. No attempt was made to run unavailable Lean/Lake locally, and printed `#print axioms` directives are not an execution receipt.

**Exact outside comparison (not an imported theorem):** `openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a`, `lean/OAI/NumberTheory/TwoPoint/Main.lean` blob `5a1a015c0cfe8221af315933c579eb7fb2885d3f`, contains the authored `liouvilleLogSaving`, `binaryCorrectedElliott` and `affineCorrectedElliott`. Their exact predicates occur in `TwoPoint/Statements.lean`, blob `c637ede9f0a7891859f28c9f4a3a208b7a85a8c0`. The Liouville theorem has a fixed-affine-form constant; corrected Elliott requires a uniform nonpretentiousness predicate. Neither is an automatic proof of the repo's complete growing-shift centered Green-energy supplier. Nothing from `openai/math` is imported, ported or treated as accepted proof by this increment.

**Separate Weil-form endpoint (not an imported result):** `GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean`, blob `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a`, contains the typed `WeilHermitianForm` and `PositiveDiagonal` with source-specific positivity transports. The current signed arithmetic coefficient decomposition has no typed map to that form. Alpöge–Furman/Lamzouri-style handling of indefinite forms is a **conceptual comparison only**, not an implemented theorem edge.

**Provenance DAG:**
pinned Mathlib Möbius/divisor identities → existing GRWTSK anchored-pair and zero-shift boundary declarations → existing authentic zero-winding support and centered-amplitude declarations → new indexed authentic support/other-shift defect and omitted-factor decomposition → exact inherited Green/Fourier readout. The required **analytic** all-head decay remains absent. Inherited work, new source implementation, negative diagnosis, finite diagnostics and verification activity are distinct roles; no arbitrary numerical contributor credit is assigned.

## 6. Exactly one next obstruction

**Prove an exact finite matrix identity for the canonical four centered families** \(r=0,1\) and \(H=\mathrm{positiveEndpointEvenShiftSet}(2X)\) or \(\mathrm{positiveEndpointOddShiftSet}(2X)\), preserving their true multiplicities, their complete signed defect channels, and every frequency/head normalization when mapping into the actual Green Fourier packet. Do not assert a frame constant, norm comparison or analytic estimate until this matrix has been constructed and its admissible domain verified.

This increment stops with the one signed source/defect comparison; neither RH nor a Weil positivity theorem is claimed.
