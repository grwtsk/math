# right_seam_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02e77e1b-a460-57a9-073c-a00c9eb98fdb",
  "kind": "theorem",
  "lexical_name": "right_seam_lower_bound",
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
  "slug": "right-seam-lower-bound--76e74f4fe9a6526208fa5421",
  "source": {
    "blob": "63d9feb552a72dbe58083abf333535767d5de6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 25,
    "path": "GRWTSK/Analysis/Integration/TranslationSeamLowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76e74f4fe9a6526208fa542149c54aee1b8401a8e207275a374bf094765737d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TranslationSeamLowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02e77e1b-a460-57a9-073c-a00c9eb98fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_seam_lower_bound {g : ℝ → ℝ} {b h c : ℝ}
    (shiftPositive : 0 < h) (heightNonneg : 0 ≤ c)
    (outside : ∀ x : ℝ, b < x → g x = 0)
    (inside : ∀ y : ℝ, b - h < y → y < b → c ≤ |g y|)
    (energyIntegrable : Integrable (fun x : ℝ ↦ (g x - g (x - h)) ^ 2)) :
    c ^ 2 * h ≤ ∫ x : ℝ, (g x - g (x - h)) ^ 2 := by
  have pointwise : ∀ x ∈ Ioo b (b + h), c ^ 2 ≤ (g x - g (x - h)) ^ 2 := by
    intro x hx
    have height := inside (x - h) (by linarith [hx.1]) (by linarith [hx.2])
    have square : c ^ 2 ≤ |g (x - h)| ^ 2 :=
      (sq_le_sq₀ heightNonneg (abs_nonneg _)).mpr height
    have difference : (g x - g (x - h)) ^ 2 = g (x - h) ^ 2 := by
      rw [outside x hx.1]
      ring
    rw [difference]
    simpa only [sq_abs] using square
  have restricted := setIntegral_ge_of_const_le_real
    (c := c ^ 2) measurableSet_Ioo
    (by rw [Real.volume_Ioo]; exact ENNReal.ofReal_ne_top)
    pointwise energyIntegrable.integrableOn
  have intervalLength : volume.real (Ioo b (b + h)) = h := by
    change (volume (Ioo b (b + h))).toReal = h
    rw [Real.volume_Ioo, add_sub_cancel_left, ENNReal.toReal_ofReal shiftPositive.le]
  rw [intervalLength] at restricted
  exact restricted.trans (setIntegral_le_integral energyIntegrable
    (Filter.Eventually.of_forall (fun x ↦ sq_nonneg _)))

/-- A genuine positive trace on the interior supplies a uniform short seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/TranslationSeamLowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/TranslationSeamLowerBound.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63d9feb552a72dbe58083abf333535767d5de6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
