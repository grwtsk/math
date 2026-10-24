# eq_zero_of_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bceae5e0-bbc2-8c9c-3a93-c3b90a21472f",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_midpoint",
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
  "slug": "eq-zero-of-midpoint--cd7bdefe4c8564d76c236de2",
  "source": {
    "blob": "4210a126e3342ca11436202c1640b5afdc33df8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 14,
    "path": "GRWTSK/Analysis/Real/ContinuousMidpointAffine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd7bdefe4c8564d76c236de2761810b5d93b53948ce6829965e67e215582a2d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bceae5e0-bbc2-8c9c-3a93-c3b90a21472f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_midpoint (f : ℝ → ℂ) (a b : ℝ) (hab : a < b)
    (hc : ContinuousOn f (Icc a b)) (ha : f a = 0) (hb : f b = 0)
    (hm : ∀ u ∈ Icc a b, ∀ v ∈ Icc a b, u < v →
      f ((u + v) / 2) = (f u + f v) / 2) :
    ∀ x ∈ Icc a b, f x = 0 := by
  obtain ⟨z, hz, hmax⟩ := isCompact_Icc.exists_isMaxOn (nonempty_Icc.mpr hab.le) hc.norm
  have hz0 : ‖f z‖ = 0 := by
    by_cases hza : z = a
    · simp [hza, ha]
    by_cases hzb : z = b
    · simp [hzb, hb]
    have haz : a < z := lt_of_le_of_ne hz.1 (Ne.symm hza)
    have hzb' : z < b := lt_of_le_of_ne hz.2 hzb
    by_cases hleft : z ≤ (a + b) / 2
    · have hv : 2 * z - a ∈ Icc a b := ⟨by linarith, by linarith⟩
      have he := hm a ⟨le_refl _, hab.le⟩ (2 * z - a) hv (by linarith)
      rw [show (a + (2 * z - a)) / 2 = z by ring, ha, zero_add] at he
      have hn := congrArg norm he
      norm_num only [norm_div, Complex.norm_ofNat] at hn
      have hbound := hmax hv
      change ‖f (2 * z - a)‖ ≤ ‖f z‖ at hbound
      nlinarith [norm_nonneg (f z)]
    · have hu : 2 * z - b ∈ Icc a b := ⟨by linarith, by linarith⟩
      have he := hm (2 * z - b) hu b ⟨hab.le, le_refl _⟩ (by linarith)
      rw [show (2 * z - b + b) / 2 = z by ring, hb, add_zero] at he
      have hn := congrArg norm he
      norm_num only [norm_div, Complex.norm_ofNat] at hn
      have hbound := hmax hu
      change ‖f (2 * z - b)‖ ≤ ‖f z‖ at hbound
      nlinarith [norm_nonneg (f z)]
  intro x hx
  have hbound : ‖f x‖ ≤ ‖f z‖ := hmax hx
  exact norm_eq_zero.mp (le_antisymm (hbound.trans_eq hz0) (norm_nonneg _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/ContinuousMidpointAffine.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4210a126e3342ca11436202c1640b5afdc33df8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
