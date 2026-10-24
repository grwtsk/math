# fractionalMellin_vertical_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a51acb0d-26e1-7ee3-f3b7-b038d0e0d2c1",
  "kind": "theorem",
  "lexical_name": "fractionalMellin_vertical_variation",
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
  "slug": "fractionalmellin-vertical-variation--37793c18014b27fd1040c37a",
  "source": {
    "blob": "09b537df0518dd3a70d50cafa8d9959127ce1382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37793c18014b27fd1040c37a190944c85c3840deba983692afba45b7d93f5211",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a51acb0d-26e1-7ee3-f3b7-b038d0e0d2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalMellin_vertical_variation {s : ℂ} (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖fractionalMellin s - fractionalMellin (s.re : ℂ)‖ ≤ 16 * |s.im| := by
  let V : Set ℂ := {z | (1 / 2 : ℝ) ≤ z.re}
  have hconv : Convex ℝ V :=
    (convex_Ici (1 / 2 : ℝ)).linear_preimage Complex.reCLM.toLinearMap
  have hF : ∀ z ∈ V, DifferentiableAt ℂ fractionalMellin z := by
    intro z hz
    exact fractionalMellin_differentiableAt (by change (1 / 2 : ℝ) ≤ z.re at hz; linarith)
  have hderiv : ∀ z ∈ V, ‖deriv fractionalMellin z‖ ≤ (16 : ℝ) := by
    intro z hz
    exact fractionalMellin_deriv_norm_le_sixteen hz
  have hc : (s.re : ℂ) ∈ V := by simpa only [V, mem_setOf_eq, ofReal_re] using hs
  have hz : s ∈ V := hs
  have h := Convex.norm_image_sub_le_of_norm_deriv_le hF hderiv hconv hc hz
  have hdiff : s - (s.re : ℂ) = (s.im : ℂ) * I := by
    apply Complex.ext <;> simp
  simpa only [hdiff, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_I, mul_one] using h

/-- If 1/2<=Re(s)<=1 and |Im(s)|<=1/16, the actual entire normalized source is nonzero.
The comparison residual has norm at most 9/16, strictly below the forced value 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b537df0518dd3a70d50cafa8d9959127ce1382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
