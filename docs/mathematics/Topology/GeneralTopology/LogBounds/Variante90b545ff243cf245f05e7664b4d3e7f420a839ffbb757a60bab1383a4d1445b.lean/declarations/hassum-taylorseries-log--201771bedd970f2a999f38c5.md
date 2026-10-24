# hasSum_taylorSeries_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51164cef-6835-ec2e-a1a9-580664b307cc",
  "kind": "lemma",
  "lexical_name": "hasSum_taylorSeries_log",
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
  "slug": "hassum-taylorseries-log--201771bedd970f2a999f38c5",
  "source": {
    "blob": "13324a4b3623e5c50f44227dd3ad143d1efbc6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201771bedd970f2a999f38c5852183472c86d843b55498a2f7cd44a87ada2bdb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51164cef-6835-ec2e-a1a9-580664b307cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_taylorSeries_log {z : ℂ} (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ ↦ (-1) ^ (n + 1) * z ^ n / n) (log (1 + z)) := by
  refine (hasSum_iff_tendsto_nat_of_summable_norm ?_).mpr ?_
  · refine (summable_geometric_of_norm_lt_one hz).norm.of_nonneg_of_le (fun _ ↦ norm_nonneg _) ?_
    intro n
    simp only [norm_div, norm_mul, norm_pow, norm_neg, norm_one, one_pow, one_mul, norm_natCast]
    rcases n.eq_zero_or_pos with rfl | hn
    · simp
    conv => enter [2]; rw [← div_one (‖z‖ ^ n)]
    gcongr
    norm_cast
  · rw [← tendsto_sub_nhds_zero_iff]
    conv => enter [1, x]; rw [← div_one (_ - _), ← logTaylor]
    rw [← isLittleO_iff_tendsto fun _ h ↦ (one_ne_zero h).elim]
    refine IsLittleO.trans_isBigO ?_ <| isBigO_const_one ℂ (1 : ℝ) atTop
    have H : (fun n ↦ logTaylor n z - log (1 + z)) =O[atTop] (fun n : ℕ ↦ ‖z‖ ^ n) := by
      have (n : ℕ) : ‖logTaylor n z - log (1 + z)‖
          ≤ (max ‖log (1 + z)‖ (1 - ‖z‖)⁻¹) * ‖(‖z‖ ^ n)‖ := by
        rw [norm_sub_rev, norm_pow, norm_norm]
        cases n with
        | zero => simp [logTaylor_zero]
        | succ n =>
            refine (norm_log_sub_logTaylor_le n hz).trans ?_
            rw [mul_comm, ← div_one ((max _ _) * _)]
            gcongr
            · exact le_max_right ..
            · linarith
      exact (isBigOWith_of_le' atTop this).isBigO
    refine IsBigO.trans_isLittleO H ?_
    convert isLittleO_pow_pow_of_lt_left (norm_nonneg z) hz
    exact (one_pow _).symm

/-- The series `∑ z^n/n` converges to `-log (1-z)` on the open unit disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13324a4b3623e5c50f44227dd3ad143d1efbc6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
