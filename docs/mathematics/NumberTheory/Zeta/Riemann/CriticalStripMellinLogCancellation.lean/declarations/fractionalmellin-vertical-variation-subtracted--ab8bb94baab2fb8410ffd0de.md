# fractionalMellin_vertical_variation_subtracted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c143a42c-1882-5dd7-f0e0-4488d2da238c",
  "kind": "theorem",
  "lexical_name": "fractionalMellin_vertical_variation_subtracted",
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
  "slug": "fractionalmellin-vertical-variation-subtracted--ab8bb94baab2fb8410ffd0de",
  "source": {
    "blob": "35d8ca52a56b1691d8d54dcb105f2744f143d7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8bb94baab2fb8410ffd0de8f59a78b20909941e1504cde878c3c883fce5ef8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c143a42c-1882-5dd7-f0e0-4488d2da238c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalMellin_vertical_variation_subtracted {s : ℂ}
    (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖fractionalMellin s - fractionalMellin (s.re : ℂ)‖ ≤
      (32 / 7 : ℝ) * |s.im| := by
  let V : Set ℂ := {z | (1 / 2 : ℝ) ≤ z.re}
  have hconv : Convex ℝ V :=
    (convex_Ici (1 / 2 : ℝ)).linear_preimage Complex.reCLM.toLinearMap
  have hF : ∀ z ∈ V, DifferentiableAt ℂ fractionalMellin z := by
    intro z hz
    exact fractionalMellin_differentiableAt (by change (1 / 2 : ℝ) ≤ z.re at hz; linarith)
  have hD : ∀ z ∈ V, ‖deriv fractionalMellin z‖ ≤ (32 / 7 : ℝ) := by
    intro z hz
    exact fractionalMellin_deriv_norm_le_thirtyTwoSevenths hz
  have hc : (s.re : ℂ) ∈ V := by simpa only [V, mem_setOf_eq, ofReal_re] using hs
  have hz : s ∈ V := hs
  have h := Convex.norm_image_sub_le_of_norm_deriv_le hF hD hconv hc hz
  have hdiff : s - (s.re : ℂ) = (s.im : ℂ) * I := by
    apply Complex.ext <;> simp
  simpa only [hdiff, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_I, mul_one] using h

/-- A sharper whole-region supplier for the EXISTING derivative patch constructor.
The modulus bound, real-part margin and auxiliary exponent are distinct inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d8ca52a56b1691d8d54dcb105f2744f143d7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
