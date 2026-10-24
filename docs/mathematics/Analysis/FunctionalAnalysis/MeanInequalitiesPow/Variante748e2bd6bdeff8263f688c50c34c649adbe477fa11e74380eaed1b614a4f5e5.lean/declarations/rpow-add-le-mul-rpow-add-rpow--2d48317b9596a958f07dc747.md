# rpow_add_le_mul_rpow_add_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b538b07e-a0ff-e2e0-68e3-6c5d898eccd3",
  "kind": "theorem",
  "lexical_name": "rpow_add_le_mul_rpow_add_rpow",
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
  "slug": "rpow-add-le-mul-rpow-add-rpow--2d48317b9596a958f07dc747",
  "source": {
    "blob": "f9a9d66478fec1cc87ce306165fa388dfefc4a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 300,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d48317b9596a958f07dc747b283da93eac099e32d6309051225d78f3c19098d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b538b07e-a0ff-e2e0-68e3-6c5d898eccd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_add_le_mul_rpow_add_rpow (z₁ z₂ : ℝ≥0∞) {p : ℝ} (hp : 1 ≤ p) :
    (z₁ + z₂) ^ p ≤ (2 : ℝ≥0∞) ^ (p - 1) * (z₁ ^ p + z₂ ^ p) := by
  rcases eq_or_lt_of_le hp with (rfl | h'p)
  · simp only [rpow_one, sub_self, rpow_zero, one_mul, le_refl]
  convert rpow_arith_mean_le_arith_mean2_rpow (1 / 2) (1 / 2) (2 * z₁) (2 * z₂)
      (ENNReal.add_halves 1) hp using 1
  · simp [← mul_assoc, ENNReal.inv_mul_cancel two_ne_zero two_ne_top]
  · have _ : p - 1 ≠ 0 := ne_of_gt (sub_pos.2 h'p)
    simp only [mul_rpow_of_nonneg _ _ (zero_le_one.trans hp), rpow_sub _ _ two_ne_zero two_ne_top,
      ENNReal.div_eq_inv_mul, rpow_one, mul_one]
    ring
#align ennreal.rpow_add_le_mul_rpow_add_rpow ENNReal.rpow_add_le_mul_rpow_add_rpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a9d66478fec1cc87ce306165fa388dfefc4a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
