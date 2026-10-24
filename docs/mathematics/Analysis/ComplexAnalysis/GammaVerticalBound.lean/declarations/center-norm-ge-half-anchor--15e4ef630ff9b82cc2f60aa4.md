# center_norm_ge_half_anchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afae7553-6be1-baa6-9b9b-fbb55f3f411a",
  "kind": "theorem",
  "lexical_name": "center_norm_ge_half_anchor",
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
  "slug": "center-norm-ge-half-anchor--15e4ef630ff9b82cc2f60aa4",
  "source": {
    "blob": "6e5f8f18f1f52d26684e95996420fa0bcbf43134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 110,
    "path": "GRWTSK/Analysis/Complex/GammaVerticalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e4ef630ff9b82cc2f60aa43793c5c559b6a665b462113e44f450364cc25657",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afae7553-6be1-baa6-9b9b-fbb55f3f411a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem center_norm_ge_half_anchor (t : ℝ) :
    (3 / 4 : ℝ) * ‖Complex.Gamma ((1 / 2 : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      ‖Complex.Gamma (center t)‖ := by
  let z : ℂ := (1 / 2 : ℂ) + (t : ℂ) * Complex.I
  have hz : z ≠ 0 := by intro he; have hr := congrArg Complex.re he; norm_num [z] at hr
  have hz1 : z + 1 ≠ 0 := by intro he; have hr := congrArg Complex.re he; norm_num [z] at hr
  have hc : center t = (z + 1) + 1 := by dsimp [center, z]; ring
  have h₀ : (1 / 2 : ℝ) ≤ ‖z‖ := by
    have h := Complex.abs_re_le_norm z
    norm_num [z] at h ⊢
    exact h
  have h₁ : (3 / 2 : ℝ) ≤ ‖z + 1‖ := by
    have h := Complex.abs_re_le_norm (z + 1)
    norm_num [z] at h ⊢
    exact h
  rw [hc, Complex.Gamma_add_one (z + 1) hz1, Complex.Gamma_add_one z hz,
    norm_mul, norm_mul]
  change (3 / 4 : ℝ) * ‖Complex.Gamma z‖ ≤ _
  calc
    _ = (3 / 2 : ℝ) * ((1 / 2 : ℝ) * ‖Complex.Gamma z‖) := by ring
    _ ≤ _ := by gcongr

/-- A positive all-height floor, obtained before any logarithm or division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/GammaVerticalBound.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5f8f18f1f52d26684e95996420fa0bcbf43134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
