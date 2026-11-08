# Flat-periodic Navier–Stokes: actual source field, geometric port, and exact residual covariance

Local attribution: **grwtsk contributors**. Formalization assistance: OpenAI ChatGPT. Date: 2026-11-02.

**Disposition:** a complete ordinary mathematical argument for spatial-translation covariance of the original flat-periodic PDE residual, a Lean proof-source candidate with no `sorry`/research `axiom`, exact SymPy diagnostics for a nonzero solution family, and a genuine classical CHSH bound. **Lean compilation, declaration-type checking, fresh kernel replay, and transitive axiom audit: NOT_RUN.** The external comparator and independent audit have their own, different source identities and evidence.

## 1. The actual mathematical objects and why the old toroidal picture was insufficient

Use the **flat periodic physical domain** `X = R^3/Z^3`, represented by smooth one-periodic fields on `R^3`. Time is `t ≥ 0` (the field definitions extend to all real time so that ordinary directional derivatives are unambiguous). The source fluid data are independently specified velocity `u(x,t) ∈ R^3`, pressure `p(x,t) ∈ R`, forcing `f(x,t) ∈ R^3`, and initial velocity `u₀(x)`. Their actual differential residual is

    R_ν(u,p,f) = ∂_t u + (u·∇)u + ∇p − ν Δu − f.

The divergence is `Σ_i ∂_i u_i`, not a picture-space normal derivative. The source model's derivatives are defined from its field functions by one-variable `deriv` along coordinate time/space lines. They are **not unconstrained jet coefficients**. On smooth fields these are the ordinary coordinate derivatives of the Navier–Stokes equation. The source additionally tracks `C∞` smoothness, one-periodicity of velocity/pressure/force/initial state, the initial condition, divergence zero, the residual zero on `t≥0`, and arbitrary-order unit-coordinate derivative decay of the forcing with constants depending on derivative order and decay power, uniformly in spatial position. These constitute an actual, nonempty class of periodic fluid solutions (zero and spatially constant solutions qualify with zero force).

The prior `GRWTSK.Geometry.SphereFourMobiusTorusPorts` retains the **original** five real sphere coordinates, two Möbius-transformed circle phases and the original integer source index. It does **not** turn the entire four-sphere into a physical flat three-torus or replace the fluid equations with a cloth animation. The new `GeometricPort` evaluates the actual fluid fields at `(spherePosition S + anchor,time)`, where `spherePosition` is the first three ORIGINAL coordinates of `S∈S⁴`. The periodic fields make this evaluation independent of adding an integer spatial period. The torus visual `liftTorus(project S)` remains a separate readout over the same source point.

## 2. Real covariance theorem (complete argument)

For any `a∈R³` set `τ_a(x,t)=(x−a,t)`. Define `u_a=u∘τ_a`, `p_a=p∘τ_a`, `f_a=f∘τ_a`, `u₀,a(x)=u₀(x−a)`. This is an actual isometry of the flat periodic cover. The source Lemma `shiftPoint_direction` is the exact identity

    τ_a(s + h d) = τ_a(s) + h d

for every spacetime point `s`, direction `d` and scalar `h`. Therefore the real functions of `h` used to take each directional derivative agree *pointwise*, and

    ∂_d(F∘τ_a)(s) = (∂_d F)(τ_a(s)).

By induction, this holds for every finite word of spatial/time coordinate derivatives. The viscosity and all coefficients are unchanged. Apply the identity to time derivative, every term in `Σ_i u_i ∂_i u`, every pressure gradient, and every second spatial derivative, to obtain the **whole original signed vector equation**

    R_ν(u_a,p_a,f_a)(x,t)=R_ν(u,p,f)(x−a,t).

Likewise `div u_a(x,t)=div u(x−a,t)`. Time is fixed, so the domain `t≥0`, the original initial condition with `u₀,a`, periodicity and all forcing temporal decay constants are unchanged. The translated mapping `s↦s−(a,0)` is smooth (`ContDiff`), so composition preserves C∞ regularity. The reverse translation by `−a` recovers the original fields: this is a genuine invertible correspondence **within this local solution class**.

For a geometric port with spatial anchor `b`, translate the source and the anchor together: `b↦b+a`. Then

    τ_a(spherePosition(S)+b+a,t)=(spherePosition(S)+b,t).

Thus the observed velocity, pressure, force, PDE residual and divergence match **exactly** between the transformed and original source, even for fields *not* solving the PDE (the residual is then transported, not erased). The visual sphere, Möbius torus and source integer are retained and unchanged. This establishes a commuting square of **actual physical evaluations**, not an analogy or a dropped defect.

### Scope and dimension guards

- For *constant spatial translations* the flat metric and Laplacian are preserved; no Jacobian or Christoffel corrections are required.
- A **nonlinear Möbius transformation of the physical torus coordinates** is not generally an isometry. Pulling back the same flat PDE naively changes its residual. A geometry-covariant replacement would transport the metric, divergence, Levi–Civita connection and Laplace–Beltrami operator and establish precise regularity/pullback hypotheses. This source does not make that stronger claim.
- The displayed Clifford torus has dimension 2; the fluid lives on a separate **3-dimensional** periodic domain. The 4-sphere-to-3-torus phase sampling is many-to-one, so only a source-retaining port can have a lossless lift/lower map.
- Our `Space := Fin 3 → ℝ` is a coordinate model of three-dimensional Euclidean space with the finite-product norm. The OpenAI comparator uses `EuclideanSpace ℝ (Fin 3)` with its own Banach/Hilbert structure. Their equivalence and corresponding Fréchet/`derivWithin`/Laplacian/gradient identities are **not** supplied here by definally equal types.

## 3. Bell inequalities: a genuine theorem but NOT statement equivalence

Each `residualBit` thresholds a specified component of the **actual source PDE residual** at a specified port. For any four jointly defined Boolean outcomes `A₀,A₁,B₀,B₁`, map `true↦+1`, `false↦−1`. Elementary case analysis gives the classical CHSH identity

    CHSH = A₀(B₀+B₁)+A₁(B₀−B₁) ∈ {−2,+2},
    |CHSH| ≤ 2.

This is proved in the Lean candidate for all 16 assignments, and therefore also holds for four such simultaneously defined residual probes. A translation of the fluid and all ports preserves all four bits and the CHSH value.

**Hostile non-implication:** for `u=p=0` and `f=0`, the residual is zero. For the *different* data `u=p=0`, `f=(−1,−1,−1)`, the residual is `(1,1,1)`, so the PDE is false. Thresholding with `0 ≤ R_i` gives four `true` bits **in both cases**, hence CHSH `=2` in both. The inequality is a classical observational sanity check and cannot establish a PDE equation, the injectivity of the port readout, or equivalence between an upstream proof and a local proposition. A quantum-contextual Bell violation would also invalidate the jointly assigned classical-outcome hypothesis, not establish a PDE proof.

## 4. Independent OpenAI proof: exact evidence and applicability gate

- Primary source: `openai/NavierStokesAndEuler@8937a8f4cbc7abaab5e9e97d1cc7f5d2319d9538`, `NavierStokes/ComparatorSolution.lean`, Git blob `cc232068cd384dbbddce2753b1fc4a4017c0f2d7`, theorem `NavierStokes.Comparator.navier_stokes_breakdown_periodic`.
- Its exact conclusion (for each positive `nu`) is `∃ u₀ f, InitialVelocityConditionPeriodic u₀ ∧ ForceConditionPeriodic f ∧ ¬∃ v p, NavierStokesExistenceAndSmoothnessPeriodic nu u₀ f v p`, with upstream `EuclideanSpace ℝ (Fin 3)` and the upstream definitions. The actual Comparator solution has no unproved challenge-theorem import.
- Independently published audit: `francescoantoniodeluca/navier-stokes-formal-audit`, `NAVIER_STOKES_AUDIT.md`, Git blob `ab262111080f5fa4c95a644d8d2d10bdd53e6a4e`. Its persisted `audit-artifacts/logs/comparator-systemd.log`, blob `2c0934c45c1028f4a85f6fc52cec8c86e9d4a8bb`, reports official Comparator success, Lean kernel and nanoda acceptance for the two named theorems at **the pinned OpenAI commit 8937a8** and allowed axioms `[propext,Classical.choice,Quot.sound]`. It also reports an independent `ClaySpec.lean` and formal semantic `Gap.lean`, with the end-to-end `semantic-gap-audit/Adapter.lean` (blob `abbc2b11e85e65bba004e0582333e69a813bff91`) proving `openAI_to_ClayOptionD` under the verified environment.
- The OpenAI `f9e8bc5b38b6e212696e8a30e3e91517af887bbd` head has the **same ComparatorSolution.lean blob**, but the independent audit deliberately did not claim full dependency-closure acceptance for that later commit. No receipt is transferred solely from equality of one source blob.
- The audit concerns its exact Comparator/Clay statements; it is not a Clay Mathematics Institute prize decision. The local `SmoothPeriodicSolution` has a **stronger global-all-time smoothness premise** and an independently expressed coordinate-jet decay condition, and lacks the full verified `EuclideanSpace`/closed-time-halfspace/force admissibility comparison. No formal implication between the local nonexistence predicate and the comparator's `NavierStokesExistenceAndSmoothnessPeriodic` is established.

**Only a certified, exact-statement adapter may consume the external theorem.** For an external nonexistence theorem to exclude a *local* solution, construct the correct direction `LocalSolution → ComparatorSolution` for the same transformed admissible forcing and initial data. A reverse implication is neither logically interchangeable nor available from CHSH or visualization. Keep the independent audit receipt at its original upstream revision; do not use it as a kernel certificate for the new GRWTSK file.

## 5. Independent algebraic diagnostic

`preflight.py` ran 56 checks including exact symbolic derivatives of the nonzero, 1-periodic Beltrami family

    k=2π;   U(x,t)=exp(−ν k² t)*(sin(kz)+cos(ky), sin(kx)+cos(kz), sin(ky)+cos(kx))
    p(x,t)=−|U|²/2;   f=0.

Symbolic differentiation confirms `div U=0`, `curl U=kU`, `ΔU=−k²U`, `∂tU=ν ΔU`, and `(U·∇)U+∇p=0`. The family and pressure commute with arbitrary constant spatial translations; nine one-periodicity checks pass. The check also exercised three nondegenerate S⁴ points and all sixteen deterministic Bell assignments. It is not a check of arbitrary strong solutions, interpolation, external proof acceptance, or Lean compilation.

## 6. Verification and next noncircular mathematical bridge

- Published source-candidate modules: `GRWTSK/PartialDifferentialEquations/PeriodicNavierStokesPortCovariance.lean` (Git blob `335b3913575cca11fd0292cc24075324f2859ca9`) and `GRWTSK/PartialDifferentialEquations/PeriodicNavierStokesSolutionTranslation.lean` (Git blob `3eeee9fa13baa5ac2c1b3c6cd1f263a061f76282`), namespace `GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance`; source no `sorry`, `admit`, research `axiom`, or `native_decide`.
- Source proofs: directional and all-coordinate-jet shift, C∞ and temporal jet-envelope preservation, periodicity and initial-state covariance, exact divergence and complete PDE residual shift, preservation of a paired geometric-port observation, binary CHSH inequality and transported CHSH value.
- No actual local Lean binary or pinned Mathlib environment was available for this pass. **COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.** The mathematical argument is complete for ordinary spatial-translation covariance, but its Lean candidate is not independently admitted.
- Strongest next theorem: a separately pinned, tested adapter `LocalSolution → NavierStokes.Comparator.NavierStokesExistenceAndSmoothnessPeriodic` with the precise `EuclideanSpace`/finite-product equivalence, half-space `ContDiffOn`, `derivWithin`, `Δ`, `gradient`, divergence, initial data, pressure spatial periods, mixed force decay and exact forcing support. Until this is proved, no external breakdown theorem transports to the new source bundle. Its proof is not a matter of Bell inequalities.

Neither source translation nor Bell can substitute for the OpenAI forcing construction or for a general regularity/blowup theorem. No irreversible or physical Möbius motion is asserted at the PDE layer.