# bump_moment_density_le_radius_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa21fdfce150b1b9d9bbea5757ea05d4c04189ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ee0cfdd-7fa2-6124-8b74-c7f2d5b90ee4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e00ca1b-c355-de99-1b14-edff4bb417f9",
  "kind": "theorem",
  "lexical_name": "bump_moment_density_le_radius_one",
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
  "slug": "bump-moment-density-le-radius-one--871232700dcf66bcb87a8479",
  "source": {
    "blob": "fa21fdfce150b1b9d9bbea5757ea05d4c04189ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:871232700dcf66bcb87a847910e00d24e99912b062edd32375e5cf398ba9b4a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e00ca1b-c355-de99-1b14-edff4bb417f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_moment_density_le_radius_one (k : ℕ) (hk : k ≤ 2) (u : ℝ) :
    bumpMomentDensity k u ≤ (16 * sourceNormalization 1) * rescaledDensity 1 u := by
  have hcoef : u ^ (2 * k) ≤ 16 * (u ^ 2 + 1 / 4) ^ 2 := by
    interval_cases k <;> norm_num <;> nlinarith [sq_nonneg u, sq_nonneg (u ^ 2)]
  have hnonneg : 0 ≤ bumpDensity u := by
    exact div_nonneg (Complex.normSq_nonneg _) (mul_pos (by norm_num) Real.pi_pos).le
  have heq : rescaledDensity 1 u = (u ^ 2 + 1 / 4) ^ 2 * bumpDensity u /
      sourceNormalization 1 := by
    rw [rescaled_density_eq_bump_fourier 1 u (by norm_num)]
    unfold bumpDensity
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  have hZ := source_normalization_pos 1 (by norm_num)
  have hmass := (eq_div_iff (ne_of_gt hZ)).mp heq
  have hb := mul_le_mul_of_nonneg_right hcoef hnonneg
  unfold bumpMomentDensity
  calc
    _ ≤ (16 * (u ^ 2 + 1 / 4) ^ 2) * bumpDensity u := hb
    _ = _ := by
      rw [mul_assoc, ← hmass]
      ring

/-- Genuine integrability of all three fixed densities follows from actual source admission. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa21fdfce150b1b9d9bbea5757ea05d4c04189ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
