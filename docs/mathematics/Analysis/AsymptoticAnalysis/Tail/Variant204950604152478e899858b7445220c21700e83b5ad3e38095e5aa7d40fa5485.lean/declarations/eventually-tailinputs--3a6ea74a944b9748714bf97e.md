# eventually_tailInputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94b3bd36-7c79-80bc-6da7-cf8681202302",
  "kind": "theorem",
  "lexical_name": "eventually_tailInputs",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "eventually-tailinputs--3a6ea74a944b9748714bf97e",
  "source": {
    "blob": "2b4f18d0facc79b76677a7ad506b0a698a7fc21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 659,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a6ea74a944b9748714bf97e7677e77f3dcb853061a53bb71dbdf779942b6d9d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94b3bd36-7c79-80bc-6da7-cf8681202302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_tailInputs (Z : ZeroConfig) (P : Params) (hP : P.Valid) {A₀ : ℝ}
    (hA₀ : 1 ≤ A₀) (hloc : ∀ t : ℝ, (Z.N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3))
    (C₁ : ℝ → ℝ) (hC₁ : ∀ T, 0 ≤ C₁ T)
    (hdecay : ∀ᶠ T in atTop, ∀ (r y : ℝ), |y| ≤ 1 / 2 → (r : ℂ) - I * y ≠ 0 →
      ‖P.phiHat T (r - I * y)‖ ≤ Real.exp (P.L T / 4) * C₁ T / ‖(r : ℂ) - I * y‖ ^ 2)
    (ha : ∀ᶠ T in atTop, 0 < P.a T)
    (hconj : ∀ᶠ T in atTop, ∀ z : ℂ,
      P.phiHat T ((starRingEnd ℂ) z) = (starRingEnd ℂ) (P.phiHat T z)) :
    ∀ᶠ T in atTop, Assembly.TailInputs Z P T (theta0 A₀ (Real.exp (P.L T / 4) * C₁ T) T) := by
  have hL2 : ∀ᶠ T in atTop, 2 ≤ P.L T := (tendsto_L_atTop P hP).eventually_ge_atTop 2
  filter_upwards [eventually_ge_atTop T₀, hL2, hdecay, ha, hconj] with T hT hL hd ha' hc
  have H : TailHyp Z P T A₀ (C₁ T) :=
    { hT := hT, hL := hL, hA₀ := hA₀, hloc := hloc, hC₁ := hC₁ T, hdecay := hd }
  exact H.tailInputs ha' hc

/-- **The "so that" clause, eventually**: if C₁(T) ≤ 2R (R = ‖ϱ″‖₁; Taper's C1_le with w ≥ 1),
then θ₀(T) ≤ 32A₀R² · l(T) · T^{λ/2−1} for T ≥ T₀; hence ∃ C, eventually θ₀ ≤ C·l·T^{λ/2−1}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4f18d0facc79b76677a7ad506b0a698a7fc21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
