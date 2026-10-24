# not_differentiable_of_left_linear_contact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5db79495-ce72-f633-3acd-5ef90d7a3988",
  "kind": "theorem",
  "lexical_name": "not_differentiable_of_left_linear_contact",
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
  "slug": "not-differentiable-of-left-linear-contact--2390e8b8ea62936ceb10e470",
  "source": {
    "blob": "fe7d2abd63413ae8c14676e3d9fc122185b2dd62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 42,
    "path": "GRWTSK/Analysis/Calculus/SupportEdgeDifferentiability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2390e8b8ea62936ceb10e470b354ebd72079657464c370a4ec4cb2249a305506",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SupportEdgeDifferentiability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5db79495-ce72-f633-3acd-5ef90d7a3988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_differentiable_of_left_linear_contact {f : ℝ → ℝ} {b c : ℝ}
    (heightPositive : 0 < c) (rightZero : ∀ x : ℝ, b ≤ x → f x = 0)
    (leftContact : ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε → c * h ≤ f (b - h)) :
    ¬ DifferentiableAt ℝ f b := by
  intro differentiable
  have derivativeZero := deriv_zero_of_zero_right differentiable rightZero
  have slopeLimit : Tendsto (fun h : ℝ ↦ h⁻¹ * (f (b + h) - f b))
      (𝓝[<] 0) (𝓝 0) := by
    simpa only [smul_eq_mul, derivativeZero] using
      differentiable.hasDerivAt.tendsto_slope_zero_left
  obtain ⟨ε, positiveε, lower⟩ := leftContact
  have near : ∀ᶠ h in 𝓝 (0 : ℝ), -ε < h := Ioi_mem_nhds (by linarith)
  have leftNear : ∀ᶠ h in 𝓝[<] (0 : ℝ), -ε < h :=
    near.filter_mono nhdsWithin_le_nhds
  have slopeBound : ∀ᶠ h in 𝓝[<] (0 : ℝ), h⁻¹ * (f (b + h) - f b) ≤ -c := by
    filter_upwards [leftNear, self_mem_nhdsWithin] with h short negative
    change h < 0 at negative
    have contact := lower (-h) (by linarith) (by linarith)
    have shifted : b - -h = b + h := by ring
    rw [shifted] at contact
    have quotient : (f (b + h) - f b) / h ≤ -c :=
      (div_le_iff_of_neg negative).mpr (by rw [rightZero b le_rfl]; nlinarith)
    simpa only [div_eq_mul_inv, mul_comm] using quotient
  have impossible : (0 : ℝ) ≤ -c := le_of_tendsto slopeLimit slopeBound
  linarith

end GRWTSK.Analysis.Calculus.SupportEdgeDifferentiability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SupportEdgeDifferentiability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/SupportEdgeDifferentiability.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d2abd63413ae8c14676e3d9fc122185b2dd62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
