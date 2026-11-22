# Signed finite-sine energy from a shared residual table

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilFiniteSineSignedEnergy.lean](WeilFiniteSineSignedEnergy.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSignedEnergy`.
MSC2020: 11M06 (primary); 46C05, 65G20, 65D30 (supporting).
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty/prior-art completeness: UNASSESSED. No novelty asserted.
Lean parsing, elaboration, exact signatures, builds, fresh kernel replay,
transitive axiom audit, certified numerical evaluation and independent review:
NOT_RUN. The finite rational assembler has NOT been executed.

## Target and exact scope

For T>0, beta real, a finite index set I, and original finite-sine coefficient
families c_i, the target is a rational matrix Fminus such that

    v^T Fminus v <= sourceForm(T,beta, U(v),U(v))
    for EVERY real vector v in R^I,                     (WSEN-1)
    U(v)=sum_i v_i finiteLift(T,c_i).

The source and its physical L2 norm are the existing canonical objects.
Beta=-epsilon adds epsilon times PHYSICAL mass and does not shift the pole
port. This module supplies the previously missing signed trial-energy lower
matrix alongside the complete residual upper Gram. It does not prove a high
floor, a successful signed Schur inequality or universal certificate supply.

The source is the real odd conductor-one zeta form. Its complete prime
inventory, both prime-shift orientations, constant gamma term, complete
separated gamma tail and original negative pole are inherited unchanged.
There is no primitive-character transfer or new RH endpoint.

## WSEN-2: exact restoration of the arbitrary head

Write f_i=finiteInput(T,c_i), z_i=finiteOutput(T,beta,c_i), and let zhat_i be
the canonical finite gamma-lag approximation including the unchanged signed
prime/pole remainder. The preceding module uses

    h_i=finiteInput(T,d_i),  y_i=zhat_i-h_i,
    y_i(t)=spatialColumn(T,beta,x,N,c_i,d_i)(t) a.e.

Here d_i may have K modes and c_i M modes, with NO inequality between M and K.
Each y_i is supported in [-T,T] and is in physical L2. The product y_i f_j
is integrable by L2 Cauchy--Schwarz. The code states that convergence in
`corrected_input_integrable` before using the complete spatial pairing.

Let

    H_ij = sum_(a<K) d_ia sum_(b<M) 1_(a+1=b+1) c_jb.   (WSEN-2)

The original normalized zero-extended sine basis is orthonormal. More
explicitly, `finiteInput_pair` expresses <h_i,f_j> in the canonical sine
coefficients, representative invariance removes the L2 class notation, and
`sineCoefficient_finiteSine` evaluates each coefficient with the indicated
Kronecker condition. Thus <h_i,f_j>=H_ij, for all M,K, including zero.
For rational c,d this is exact rational arithmetic, with no uncertain T,
normalization, projection coefficient or inverse Gram left in H.

The defining subtraction and bilinearity give the exact identity

    <zhat_i,f_j> = H_ij + integral_(-T)^T y_i(t) f_j(t) dt.       (WSEN-3)

The integral covers ALL physical support. This is NOT the high-test
cancellation: f_j need not be high. The head term MUST be restored here.
It may be subtracted in the residual bound only because the latter pairs
against genuine high tests. Arbitrary head removal is valid in both uses
with these distinct rules.

## WSEN-3: signed mixed-cell enclosure

Use the same spatial mesh and residual sample table as in
WeilFiniteSineSpatialResidual. Let -T=s_0<=...<=s_J=T, widths w_k and
midpoints m_k. Use residual centers p_ki and input centers q_ki. Supply finite
midpoint enclosures and scalar modulus bounds

    |y_i(m_k)-p_ki|<=er_ki, |f_i(m_k)-q_ki|<=ef_ki,
    er_ki,ef_ki>=0,
    spatialSlope(T,beta,x,N,c_i,d_i)<=Lr_i,
    sineLipschitz(T,c_i)<=Lf_i.                         (WSEN-4)

The first modulus is the already-derived whole-window Lipschitz bound of
the actual residual expression, including translated zero-extension corners.
The second is the already-derived whole-line Lipschitz bound of the original
finite sine. No C4 or everywhere differentiability assumption is made.
For every point t of cell k, triangle inequality and the half-width bound give

    |y_i(t)-p_ki|<=r_ki=Lr_i w_k/2+er_ki,
    |f_i(t)-q_ki|<=s_ki=Lf_i w_k/2+ef_ki.               (WSEN-5)

These are derived whole-cell ranges, not extra oracles in the final theorem.
The global `Monotone` premises remain explicit for meshes represented as
functions on the natural numbers. Finite monotone meshes may be constantly
extended beyond their last cell; no mesh-existence theorem is claimed here.
Rational endpoints require rational T; this covers every integer cofinal
window radius. The real-cell theorem covers arbitrary positive real T.

Define the oriented, SIGNED center and spatial radius

    C_ij=H_ij+sum_(k<J) w_k p_ki q_kj,
    Esp_ij=sum_(k<J) w_k
              (|p_ki|s_kj+|q_kj|r_ki+r_ki s_kj).        (WSEN-6)

By the complete mixed integration result in SpatialMixedPairing,

    |<zhat_i,f_j>-C_ij| <= Esp_ij.                     (WSEN-7)

The cross term r_ki s_kj cannot be omitted. Centers and H remain signed;
replacing either by an absolute value would change the evaluated energy.
H, C and Esp need not be symmetric separately.

## WSEN-4: the canonical operator error and physical norm are paid

Under the original lag geometry (monotone x, x_0>0, 2T<=x_N, eta>=0,
x_(k+1)-x_k<=eta*x_k for every k<N), the pre-existing canonical theorem gives

    ||z_i-zhat_i|| <= delta D_i,
    delta=x_0+x_0^2+5eta, D_i=slopeBound(T,c_i).         (WSEN-8)

Supply nonnegative rational upper bounds e_i,n_i with

    delta D_i <= e_i,   sum_(a<M) c_ia^2 <= n_i^2.      (WSEN-9)

The second condition is an exact finite rational comparison when c_i is
rational. The code derives, rather than assumes, the actual physical norm:

    ||f_i||^2 = sum_(a<M) c_ia^2,  hence ||f_i||<=n_i.  (WSEN-10)

Proof: use the a.e. finiteInput representative in the physical L2 inner
product and the canonical `integral_finiteSine_sq`; then use n_i>=0.
There is no coefficient-norm/physical-norm identification hypothesis.

Let A_ij=sourceForm(T,beta,finiteLift(c_i),finiteLift(c_j)). The canonical
all-test source pairing and (WSEN-8)--10 give

    |A_ij-<zhat_i,f_j>| <= e_i n_j.

Combining this with (WSEN-7) yields

    |A_ij-C_ij|<=D_ij, D_ij=Esp_ij+e_i n_j.            (WSEN-11)

The spatial and gamma errors are separate, with separate meshes. Refining
only the spatial mesh cannot remove a fixed gamma-row error.

## WSEN-5: a rational lower matrix for the unchanged source

A is symmetric by `sourceForm_symmetric`. Average BOTH oriented entries
and errors:

    Csym_ij=(C_ij+C_ji)/2,
    Esym_ij=(D_ij+D_ji)/2.

The generic signed-cell theorem then gives

    Fminus=Csym-diag_i(sum_j Esym_ij),                  (WSEN-12)
    v^T Fminus v <= v^T A v for every real v.

Finally bilinearity of the original `sourceForm` on the original lifts
proves v^T A v=sourceForm(T,beta,U(v),U(v)), which is exactly (WSEN-1).
The declaration `signedEnergy_lower_of_rational_samples` composes the entire
argument: exact head restoration, integrability/support, scalar midpoint to
whole-cell ranges, rational norm check, canonical gamma-row estimate,
symmetrized entry budget, rational-to-real matrix cast and all-vector source
return. There is no `hsource`, input-norm oracle, or signed-energy oracle.

It still requires the FINITE scalar inequalities (WSEN-4) and the row-error
bound in (WSEN-9). Integrated gamma weights, elementary functions, active
prime-power inventory and all outward rounding must be certified by an
actual evaluator. None is reported executed or supplied by this increment.
Rational arithmetic is exact only after those enclosures are valid.

## Consumer: the same residual table and the existing Schur condition

The prior complete residual theorem uses p,r from (WSEN-5) to construct

    Rplus=sampleGram(s,p,J)+diag(entryRadius(s,p,r,J) 1),
    ||sum_i v_i y_i||^2 <= v^T Rplus v.

For tau>0 let Egamma=diag_i(|I| e_i^2). With an independently proved genuine
high-complement floor a[w]>=m||input(w)||^2, m>0, the previous source pairing
bound supplies the residual allowance

    v^T [(1+tau)Rplus+(1+1/tau)Egamma]v / m.

Accordingly a sufficient SIGNED matrix test, retaining the separate
low-coordinate identity required for the chosen trial synthesis, is

    Fminus - [(1+tau)Rplus+(1+1/tau)Egamma]/m >= 0.      (WSEN-13)

The new source supplies Fminus, not the truth of (WSEN-13). When m,tau and
the table bounds are rational, this is an exact rational matrix expression
for the existing `QuadraticCertificateCore` checker. No new checker or
certificate-existence theorem is introduced. A successful stage still needs
a true high floor, source-low-coordinate coverage, valid numerical tables,
a passing signed matrix, and ultimately the original cofinal family at every
required accuracy. These obligations are not inferred from finite arithmetic.

## Falsification controls

These are written controls, not executed certificates or independent review.

1. Head omission can reverse the sign. In the one-dimensional real analogue,
   take f=1, exact output z=zhat=-1 and chosen head h=-2. Then y=1. The
   residual/input product alone is +1 while the actual energy is -1. Restoring
   H=-2 gives exactly -1. This tests source correspondence, not RH.
2. A zero spatial radius does not remove the gamma error. With f=1, z=-a,
   zhat=0 and a>0, an exact zero sample still needs the allowance e*n=a.
3. No exact projection is required: replacing h_i by h_i+k_i changes H_ij by
   <k_i,f_j> and the exact mixed integral by its negative. Their sum in WSEN-3
   is unchanged. Conservative sampled allowances may change; sign invariance
   is asserted for the exact source, not for the tightness of an enclosure.
4. Unequal mode counts are handled by the literal equality a+1=b+1. A head
   mode absent from the input has zero exact overlap, not a forced diagonal.
5. Positivity of the residual Gram says nothing about the signed energy:
   the example in control 1 has nonnegative residual norm and negative source.

No uniform numerical success as T, dimension or accuracy vary is established.
For fixed finite data, shrinking spatial widths and sample errors decreases
the spatial allowance, but the gamma and arithmetic sign obligations remain.

## Individual declaration map and provenance

All names below are qualified by the namespace at the top of this record.
The complete arguments are the numbered equations above.

| Declaration | Immediate source, argument and consumer |
|---|---|
| `restoredHead_cast` | Finite rational-to-real sums/products and unchanged natural-mode equality in WSEN-2; rational endpoint. |
| `finiteInput_head_pair` | `FiniteSineSpatialResidual.finiteInput_pair`, `finiteInput_ae`, `OddSineHeadRemoval.sineCoefficient_finiteSine`; exact WSEN-2 restoration. |
| `finiteInput_norm_sq` | L2 inner product, `finiteInput_ae`, `OddSineForm.integral_finiteSine_sq`; WSEN-10 with the ORIGINAL normalization. |
| `finiteInput_norm_le` | Nonnegative norm and nonnegative n in WSEN-9--10; no square-root approximation assumed. |
| `corrected_input_integrable` | Existing residual and finite-sine MemLp, L2 product integrability; guarantees convergence in WSEN-3 and each spatial cell. |
| `correctedColumn_input_pair` | Existing a.e. representatives and full support, L2 inner product and interval restriction; WSEN-3 integral correspondence. |
| `approximate_pair_restored` | Definition of `correctedColumn`, inner-product subtraction and `finiteInput_head_pair`; restores rather than drops H. |
| `sourceMatrix_symmetric` | Canonical `ClosedSourceBilinear.sourceForm_symmetric`; required by WSEN-12. |
| `source_trial_eq_quadratic` | Both linearities of the original sourceForm and existing `FiniteSineSpatialResidual.trial`; all-vector WSEN-1 return. |
| `signedEnergy_lower_of_cells` | Complete mixed integration, restored pairing, canonical `sourceForm_pairing_error_le` and nonnegative budget multiplication; WSEN-11--12. |
| `input_midpoint_range` | Existing global `finiteSine_lipschitz` plus canonical `midpoint_range`; derives the second WSEN-5 range, including corners. |
| `signedEnergy_lower_of_rational_samples` | Existing residual midpoint modulus, previous input range, coefficient norm comparison, generic rational cast and cell theorem; composes WSEN-1--12 with only finite scalar inputs. |

Private `lift_input_eq` is the physical coercion of the canonical
`finiteLift_windowInput`, not a separate lift hypothesis. Definitions
`coefficientPair`, `restoredHead` and `sourceMatrix` are WSEN-2 and the literal
restriction of sourceForm; they introduce no new arithmetic source.

## Pinned sources and prior art

Inspected math base: `87538d799fe27620ef06524defc2bfb732193328`.
Reconciled publication base: `ee2fb00fab01ebf416df5fe698f926db3a1ee34d`,
complete tree `78c5c0ec22bf540016ff867d376278ff5b94d695`. Its four
concurrent bump/gamma-cell additions are disjoint and preserved.

* `WeilFiniteSineSpatialResidual.lean`, blob
  `f5cee6ab161db1e56e8d13e08483a9b42a694edd`: original correctedColumn,
  physical representatives, support, MemLp, spatial modulus and trial family.
* `WeilFiniteSineGammaQuadrature.lean`, blob
  `4c0038754542e9ad2e0b33b55add264d074320db`: canonical all-test gamma-output
  error, with original minimizing pole port and complete far tail.
* `WeilFiniteSineOperator.lean`, blob
  `c504693911bd7a8ee9e1dec909fa41480c185013`: original input/output/lift and
  exact complete source correspondence. Its earlier proof-candidate status
  is inherited, not silently upgraded.
* `WeilOddSineHeadRemoval.lean` and `WeilOddSineForm.lean`: exact normalized
  mode coefficients and physical finite-sine norm. Their mathematical basis
  is classical orthogonality, not a new arithmetic positivity principle.
* `SpatialMixedPairing.lean` is the accompanying reusable mixed-integration
  and signed matrix-order supplier. See its individual source/provenance map.
* Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
  supplied edition, Section 3.1, equations (3.19)--(3.20), PDF p.8: the complete
  signed pole/prime source and both prime orientations. Inspected text and
  page image. The real odd logarithmic-coordinate normalization is inherited
  through the canonical source modules; this increment does not formalize the
  whole paper or assume its conjectural limit. Proposition 3.4 is NOT used
  to assume a finite-sine form core.
* Rump, Acta Numerica 19 (2010), 287--449, supplied corrected edition,
  Sections 5--6, 10.4 and 12: interval dependency, residual corrections and
  verified quadrature methodology. Section 12, PDF p.85, was inspected.
  Its C4 Simpson bound is not applied to the cornered translated sines.

The elementary identities, Cauchy--Schwarz and interval bounds are classical.
No novelty or independent-review claim is made; name searches are incomplete.

## Evidence, publication and execution boundary

Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
No source target, dependency pin, existing module or root umbrella is changed.

Current canonical Noe main inspected as
`b3fdf53c0f782d61ffeedf076bd311b6a14f272e`. Fetch of
`workflows/research/orchestration/skills/noe-proof-automation/SKILL.md` returned
404 and no verified local skill checkout was found. Dependent execution was
not initiated. Root AGENTS.md and CONTRIBUTING.md permit source-only
publication with explicit NOT_RUN status; the .github listing contains no
workflow directory. The requested architecture README path was inaccessible
(404). Existing adjacent ownership and MSC placement were preserved, and
no architecture/taxonomy migration is claimed.

Source-text inspection, UTF-8 decoding, nested-comment/placeholder scan,
individual declaration-map comparison and exact source hashing are the only
local checks. They do NOT parse or elaborate Lean, audit transitive axioms,
verify arithmetic or establish independent review. Publication/readback and
concurrent-head reconciliation are recorded in the existing issue receipt.

Exact-source verification targets, all NOT_RUN:

    lake build GRWTSK.FunctionalAnalysis.SpatialMixedPairing
    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineSignedEnergy

Fresh kernel replay, exact declaration-type correspondence and transitive
axiom auditing remain separate required evidence. No run of a checker, no
certified sample table, no successful source sign and no RH/GRH conclusion
is reported by this increment.

## Static source identity receipt

The local Python source-text check exited 0 with
`PASS_SOURCE_TEXT_AND_IDENTITY_ONLY`. It decoded UTF-8, stripped balanced
nested Lean comments for a lexical scan, rejected whole-word `sorry`,
`admit`, `axiom` and `unsafe` in the remaining text, checked that each public
theorem name occurs individually in its adjacent record, and hashed the
exact bytes. This is not a Lean parser or an axiom audit.

| Source | Lines | Public theorem candidates | SHA-256 |
|---|---:|---:|---|
| SpatialMixedPairing.lean | 147 | 7 | `ee50d7a7bb69f21b89c136d79717e598066b5d17b797a2f736139cb0dde26438` |
| WeilFiniteSineSignedEnergy.lean | 288 | 12 | `2504d95e1328b97f2b2dd99e415fe14523ad9d9803fa9204f69608bee961ed6f` |

Static identity readback commands (not proof verification):

    sha256sum GRWTSK/FunctionalAnalysis/SpatialMixedPairing.lean
    sha256sum GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFiniteSineSignedEnergy.lean
    git hash-object GRWTSK/FunctionalAnalysis/SpatialMixedPairing.lean
    git hash-object GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFiniteSineSignedEnergy.lean

Expected Git blobs for those Lean files, respectively:
`a182cd61a6d4726f0afde06aa8660284fa80f832` and
`85594d1f1ec90cbac39100517b89284631fb40be`.
The issue publication receipt records the complete four-file blob set and
commit/main readback, without treating publication as mathematical acceptance.
