# norm_herglotzLogIntegrand_circleMap_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba235e89-003a-d8fa-23b3-179d6df96f1e",
  "kind": "lemma",
  "lexical_name": "norm_herglotzLogIntegrand_circleMap_le",
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
  "slug": "norm-herglotzlogintegrand-circlemap-le--279ac5927901352d2e7ad83a",
  "source": {
    "blob": "f03f5d86b80d11c091232ecfc47d21f951edf1ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:279ac5927901352d2e7ad83a7e36dacb8642691726ca2e27b59dc368abd06042",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba235e89-003a-d8fa-23b3-179d6df96f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma norm_herglotzLogIntegrand_circleMap_le {w ρ : ℂ} {R r₀ r : ℝ} (hR : 0 < R)
  (hρ : ‖ρ‖ = R) (hr₀ : 0 < r₀) (hw : ‖w‖ < r₀) (hr₀r : r₀ ≤ r) (hrR : r ≤ R) (θ : ℝ)
  (hdR : 0 < ‖circleMap 0 R θ - ρ‖) :
  ‖herglotzLogIntegrand w ρ (circleMap 0 r θ)‖ ≤ ((R + ‖w‖) / (r₀ - ‖w‖))
    * (|log (2 * R)| + |log (sqrt (r₀ / R))| + |log ‖circleMap 0 R θ - ρ‖|) := by
  simp only [herglotzLogIntegrand, Pi.smul_apply', Function.comp_apply, smul_eq_mul, norm_mul,
    norm_eq_abs]
  have ⟨hrw, hr⟩ : 0 < r₀ - ‖w‖ ∧ 0 < r := by grind
  have h_norm_sub₁ := const_mul_norm_sub_circleMap_le_norm_sub_circleMap hρ hr₀ hR hr₀r hrR θ
  have h_norm_sub₂ : 0 < ‖circleMap 0 r θ - ρ‖ := lt_of_lt_of_le (by positivity) h_norm_sub₁
  gcongr
  · simp only [herglotzRieszKernel_def, sub_zero]
    calc
     |((circleMap 0 r θ + w) / (circleMap 0 r θ - w)).re|
     _ ≤ ‖circleMap 0 r θ + w‖ / ‖circleMap 0 r θ - w‖ := by grw [Complex.abs_re_le_norm, norm_div]
     _ ≤ (r + ‖w‖) / (r - ‖w‖) := by
        grw [norm_add_le, ← norm_sub_norm_le]
        all_goals simp only [norm_circleMap_zero, abs_of_pos hr]; grind
      _ ≤ (R + ‖w‖) / (r₀ - ‖w‖) := by gcongr
  · apply abs_le.mpr ⟨_, _⟩
    · have h_log_lower_bound :
          log ‖circleMap 0 r θ - ρ‖ ≥ log (sqrt (r₀ / R)) + log ‖circleMap 0 R θ - ρ‖ := by
        rw [← log_mul (by positivity) (by positivity)]
        gcongr
      grind
    · calc log ‖circleMap 0 r θ - ρ‖
      _ ≤ |log (2 * R)| + 0 + 0 := by
        grw [← le_abs_self, norm_sub_le, hρ, two_mul, norm_circleMap_zero, abs_of_pos hr, hrR]
        simp
      _ ≤ |log (2 * R)| + |log √(r₀ / R)| + |log ‖circleMap 0 R θ - ρ‖| := by
        gcongr <;> positivity

-- Auxiliary lemma for `circleAverage_re_herglotzRieszKernel_mul_log`. Dominated convergence
-- theorem: circle average can be computed by a sequence of circle averages integrating over circles
-- in the interior
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f03f5d86b80d11c091232ecfc47d21f951edf1ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
