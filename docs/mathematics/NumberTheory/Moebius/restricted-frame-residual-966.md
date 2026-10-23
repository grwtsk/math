# RH-E02 / #966 — Restricted frame from an approximate reconstruction residual

**Status:** SOURCE_DRAFT only. No Lean/Lake execution, elaboration, kernel acceptance, transitive-axiom audit or external replay for this new source.

## 1. Pinned repository audit

- Repository: \`grwtsk/math\`. Implementation base: **main** at \`a3b0e1ee3890708162db7d4c7e228c1b22e66abf\`, tree \`5117abe32cdd8d90510950d11d320e9e479d3c3f\`.
- A previous audited main snapshot \`2cad5952243c5d71aad679eaf49803d1860642b8\` is exactly one commit behind the base; the intervening file is \`verification/lean-subject-sort-v1.toml\`. Both imported source blobs are unchanged.
- Lean pin: \`leanprover/lean4:v4.33.0\`; Mathlib pin: \`db584cd6d46c92f209a44c0f1c829460d327499d\`. These are repository files, not replay evidence.
- Existing open issue selected: [#966](https://github.com/grwtsk/math/issues/966). Related norm/coordinate issue: [#942](https://github.com/grwtsk/math/issues/942); centered supplier audit [#929](https://github.com/grwtsk/math/issues/929); canonical RH program [#15](https://github.com/grwtsk/math/issues/15).
- PR [#958](https://github.com/grwtsk/math/pull/958), which introduced the structural additive/multiplicative obstruction, is merged into main. No non-main source dependency is used here; this is **not a stacked PR**.
- Imported files:
  - \`GRWTSK/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean\`, blob \`b52be1b426ae6d42af49314a3fe737557ef9b60c\`.
  - \`GRWTSK/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean\`, blob \`bcfb0dbdef5e924d96cc681f265414dd0708de5d\`.
- New file: \`GRWTSK/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean\`.

The imported declarations \`FiniteCenteredPacket\`, \`FiniteArithmeticBridge\`, \`finitePacketEnergy\`, \`ReconstructionResidual\`, \`RestrictedDifferenceSpace\` and \`HasRestrictedLowerFrameBound\` are repository source declarations. Previous sources carry source-level draft and generic direction-correction claims. Their presence, and this import, do **not** furnish a clean-checkout trust/replay receipt.

## 2. Exact terminal and intermediate consumers

The selected exact RH-facing reference is
\`GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy\`
in \`GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean\` (blob \`a6e624833f73ff1f0e19b1724fc17c8946b931be\`). It accepts \`SubpolynomialDyadicMaximalMertensTwoPointEnergy\` and conditionally returns \`_root_.RiemannHypothesis\`. This is an **RH-implying conditional criterion**, neither a proved arithmetic bound nor finite-height verification.

The one *immediate, existing, typed intermediate consumer* selected under #966 is
\`GRWTSK.RiemannHypothesis.HasRestrictedLowerFrameBound T D A\`:
\`0 < A ∧ ∀ f ∈ D, A * finitePacketEnergy f ≤ finitePacketEnergy (T.linearPart f)\`.
It is a finite norm-direction obligation intended for an eventual source-identical centered/additive to graded/multiplicative energy bridge.

**Important dependency boundary:** no theorem in main currently takes this abstract lower-frame result and produces \`SubpolynomialDyadicMaximalMertensTwoPointEnergy\`. The new theorem **does not** provide that absent arithmetic adapter. The RH-facing criterion is a dependency benchmark, **not** a completed directed edge from this result. The direct implication established by the new proof *as written* is only to \`HasRestrictedLowerFrameBound\`.

## 3. Three bounded candidate suppliers

| Candidate | Exact immediate consumer | Missing premise / conclusion | Support and witness | Strength, risks and failure value |
|---|---|---|---|---|
| Actual arithmetic lower frame | \`HasRestrictedLowerFrameBound\` | Construct true finite \`T_j,D_j\` from centered and graded coefficients and prove a uniform \`A_j>0\` | Main contains generic frame types but no source-matched arithmetic kernel | Potentially strong; coefficient/index/background transport absent; several speculative bridges |
| **Approximate reconstruction (selected)** | \`HasRestrictedLowerFrameBound\` | From actual \`R,C,q\` and two relative squared-energy bounds deduce \`A=(1-2q)/(2C)>0\` | Existing residual definition and finite \`ℓ²\` energy; exact algebraic sum-of-squares identity | Conditional, finite, formally local; if it cannot be instantiated, isolates which bound fails |
| Admissible kernel obstruction | \`¬HasRestrictedLowerFrameBound\` | Find nonzero \`f∈D∩ker T\` for actual arithmetic packets | Already generic \`not_hasRestrictedLowerFrameBound_of_admissibleKernel\` in main | Diagnostic only; nonzero ambient kernel without admissibility does not suffice |

The selected candidate is the only low-speculative-distance *new* implication into an already typed intermediate, without pretending the arithmetic packets or operator exist.

## 4. Mathematical theorem and proof

Let \`ι,κ\` be finite index types, \`T : FiniteArithmeticBridge ι κ\`,
\`D ⊆ (ι→ℂ)\`, and \`R : (κ→ℂ)→(ι→ℂ)\`. Define
\[
E_\iota(f)=\sum_{i\in\iota}|f_i|^2,\qquad
(Tf)_k=\sum_{i\in\iota}T_{i,k}f_i,\qquad
r(f)=f-R(Tf).
\]
Assume real constants \(C>0\), \(0\le q\), \(2q<1\), and for **every** \(f\in D\),
\[
E_\iota(R(Tf))\le C E_\kappa(Tf),\qquad
E_\iota(r(f))\le q E_\iota(f).
\]
Then
\[
\boxed{\quad
\frac{1-2q}{2C}E_\iota(f)\le E_\kappa(Tf)
\quad(f\in D),\qquad
\frac{1-2q}{2C}>0.\quad}
\]

The proof uses no zeta zeros, PNT, arithmetic positivity assumption, convergence, or spectral transport. For each complex coordinate \(x,y\), triangle inequality and \((|x|-|y|)^2\ge0\) give \(|x+y|^2\le2|x|^2+2|y|^2\). Summing and taking \(f=R(Tf)+r(f)\) gives
\[
E(f)\le2E(RTf)+2E(r(f))
  \le2CE(Tf)+2qE(f).
\]
Rearrange and divide by the explicitly positive \(2C\).

The factor 2 and the sufficient threshold \(q<1/2\) are conservative. They are **not** asserted sharp; sharper Hilbert-space inequalities could relax the threshold, but are outside this increment.

## 5. Positivity classification, witness and hostile controls

- **Canonical observable:** finite packet energy \(E:\mathbb C^\iota\to\mathbb R_{\ge0}\), unweighted \(\sum|f_i|^2\). Positive semidefinite, and positive definite on a finite complex coordinate space. The *new conclusion* is restricted positive lower-frame coercivity \(A>0\) for every \(f\in D\).
- **Not proved:** positive Weil form, kernel positivity, measure positivity, global zero positivity, averaged positivity, asymptotic estimates or any RH criterion.
- **Witness:** exact polynomial certificate \((|x|-|y|)^2\ge0\) applied to a finite sum. No rational numerical certificate, interval enclosure, zero count, or tail bound is supplied or needed.
- **A checkable instance of the constant formula:** \(C=1,q=1/4\) gives \(A=1/4\), *only if both operator and residual inequalities are separately supplied*. This is not an arithmetic instance of \(T\).
- **Failure case:** a zero transform \(T=0\), zero reconstruction \(R=0\) and a difference set containing a nonzero \(f\) satisfy residual ratio \(q=1\), but admit no positive lower frame. An ambient kernel vector outside \(D\) proves no restricted obstruction.
- **Background:** \`T.observed f = T.background - T.linearPart f\` is affine, not a substitute for the linear energy on differences. No implication involving the observed coordinate is asserted.
- **Scope:** both bounds hold on exactly the same \(D\); neither a fixed finite-height verification nor a finite coefficient identity supplies their required uniform arithmetic versions.

No interpolation, quintic witness, spectral model, Hodge geometry or \(K\)-theoretic transport is introduced. No source-bound theorem makes them inputs to this local finite comparison. No Sarnak or OpenAI external theorem is imported.

## 6. Actual evidence states

- \`SOURCE_DRAFT\`: **established** for the authored Lean source.
- \`LITERATURE_REVIEWED\`: not claimed; only existing local definitions and standard finite norm inequalities were inspected.
- \`ELABORATED\`: not established (Lean/Lake unavailable in the authoring environment).
- \`KERNEL_CHECKED\`: not established.
- \`TRUST_AUDITED\`: not established.
- \`EXTERNALLY_REPLAYED\`: not established.
- \`ANALYTIC_PREMISES_DISCHARGED\`: not established.

Any proof script must still be successfully elaborated and checked in the pinned Lean/Mathlib environment before it is a verified repository theorem.

## 7. Provenance DAG and exactly one next obstruction

\`Mathlib norm_add_le/square nonnegativity\` → exact finite energy inequality → exact residual decomposition → **new restricted-frame constructor** → *existing declared* \`HasRestrictedLowerFrameBound\`.

\`#966\` motivates the correction; the generic kernel and bounded-left-inverse statements are inherited from main. The centered/Möbius source and graded/zeta target are **not** linked by this DAG yet. No numerical allocation of credit is attempted.

**Next single obstruction:** define and prove a source-coefficient identity for one actual finite arithmetic transform \(T_j\) and its admissible difference set \(D_j\), including the affine continuum background as a separate term. Until this exists, neither a bounded reconstruction nor its residual estimate can be promoted to the RH-facing maximal-energy premise. Stop here; do not invent that map.
