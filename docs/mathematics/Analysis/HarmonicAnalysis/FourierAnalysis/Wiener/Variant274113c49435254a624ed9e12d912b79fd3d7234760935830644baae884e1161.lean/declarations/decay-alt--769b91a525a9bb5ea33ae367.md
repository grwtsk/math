# decay_alt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49d5b060-37fd-8a9d-5a41-1a78ca720d55",
  "kind": "theorem",
  "lexical_name": "decay_alt",
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
  "slug": "decay-alt--769b91a525a9bb5ea33ae367",
  "source": {
    "blob": "43f526b5c8c6d9715b27eec3c62dac88fb6eeb90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 365,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:769b91a525a9bb5ea33ae36744c6630c2a69f100de406b31173f9b9fc5635c61",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49d5b060-37fd-8a9d-5a41-1a78ca720d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decay_alt (ψ : ℝ → ℂ) (hψ : Integrable ψ) (habscont : AbsolutelyContinuous ψ)
    (hvar : BoundedVariationOn (deriv ψ) Set.univ) (u : ℝ) :
    ‖𝓕 (ψ : ℝ → ℂ) u‖ ≤
      ((∫ t, ‖ψ t‖) + (eVariationOn (deriv ψ) Set.univ).toReal / (2 * π) ^ 2) /
        (1 + ‖u‖ ^ 2) := by
  rw [le_div_iff₀' <| one_add_sq_pos ‖u‖]
  by_cases hu : u = 0
  · subst hu
    simp only [norm_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow, add_zero,
      one_mul]
    calc ‖𝓕 ψ 0‖ ≤ ∫ t, ‖ψ t‖ := prelim_decay ψ 0
      _ ≤ (∫ t, ‖ψ t‖) + (eVariationOn (deriv ψ) Set.univ).toReal / (2 * π) ^ 2 := by
          have : 0 ≤ (eVariationOn (deriv ψ) Set.univ).toReal / (2 * π) ^ 2 := by positivity
          linarith
  · have bound1 : ‖𝓕 ψ u‖ ≤ ∫ t, ‖ψ t‖ := prelim_decay ψ u
    have bound2 : ‖𝓕 ψ u‖ ≤ (eVariationOn (deriv ψ) Set.univ).toReal / (2 * π * ‖u‖) ^ 2 :=
      prelim_decay_3 ψ hψ habscont hvar u hu
    have : (2 * π * ‖u‖) ^ 2 = (2 * π) ^ 2 * ‖u‖ ^ 2 := by ring
    calc (1 + ‖u‖ ^ 2) * ‖𝓕 ψ u‖
        = ‖𝓕 ψ u‖ * 1 + ‖𝓕 ψ u‖ * ‖u‖ ^ 2 := by ring
      _ ≤ (∫ t, ‖ψ t‖) * 1 +
            (eVariationOn (deriv ψ) Set.univ).toReal / (2 * π * ‖u‖) ^ 2 * ‖u‖ ^ 2 := by
          gcongr
      _ = (∫ t, ‖ψ t‖) + (eVariationOn (deriv ψ) Set.univ).toReal / (2 * π) ^ 2 := by
          rw [mul_one, this, div_mul_eq_div_div]
          congr 1
          rw [div_mul_eq_mul_div, div_eq_iff (pow_ne_zero 2 <| norm_ne_zero_iff.mpr hu)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant274113c49435254a624ed9e12d912b79fd3d7234760935830644baae884e1161.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f526b5c8c6d9715b27eec3c62dac88fb6eeb90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
