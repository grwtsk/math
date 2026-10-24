# PiX_shift_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18d2f59a-3d00-135d-2f2a-bbe50744d9f4",
  "kind": "lemma",
  "lexical_name": "PiX_shift_bound",
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
  "slug": "pix-shift-bound--1f2a606bcc7ac1ad0115ddf3",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1116,
    "line": 1089,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2a606bcc7ac1ad0115ddf32440001e1d8984f8efc6f951c58fd74db462c6e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18d2f59a-3d00-135d-2f2a-bbe50744d9f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1089–1116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PiX_shift_bound (hF : LocalHypsCore cϱ p F) {t : ℝ} (ht : 2 ≤ t) (r : ℝ) :
    |Zeta23.PiX p.X (t + r)| ≤ 6 * Real.sqrt p.X / t + 12 * Real.sqrt p.X * r ^ 2 / t ^ 2 := by
  have ht0 : 0 < t := by linarith
  have hsX : 0 ≤ Real.sqrt p.X := Real.sqrt_nonneg _
  have hb := hF.PiX_bound (t + r)
  have hA : 0 ≤ 6 * Real.sqrt p.X / t := by positivity
  have hB : 0 ≤ 12 * Real.sqrt p.X * r ^ 2 / t ^ 2 := by positivity
  rcases le_or_gt |r| (t / 2) with hr | hr
  · refine hb.trans ((le_of_le_of_eq ?_ rfl).trans (le_add_of_nonneg_right hB))
    -- 3√X/(1+|t+r|) ≤ 6√X/t since 1 + |t+r| ≥ t/2
    have : t / 2 ≤ 1 + |t + r| := by
      have : t - |r| ≤ |t + r| := by
        have := abs_sub_abs_le_abs_sub t (-r)
        rw [abs_neg, sub_neg_eq_add, abs_of_pos ht0] at this; linarith
      linarith
    calc 3 * Real.sqrt p.X / (1 + |t + r|) ≤ 3 * Real.sqrt p.X / (t / 2) :=
          div_le_div_of_nonneg_left (by positivity) (by linarith) this
      _ = 6 * Real.sqrt p.X / t := by field_simp; ring
  · refine hb.trans (le_trans ?_ (le_add_of_nonneg_left hA))
    -- 3√X/(1+|t+r|) ≤ 3√X ≤ 12√X r²/t²
    have h1 : 3 * Real.sqrt p.X / (1 + |t + r|) ≤ 3 * Real.sqrt p.X :=
      div_le_self (by positivity) (by linarith [abs_nonneg (t + r)])
    refine h1.trans ?_
    rw [le_div_iff₀ (by positivity)]
    have : t ^ 2 ≤ 4 * r ^ 2 := by nlinarith [abs_nonneg r, sq_abs r]
    nlinarith


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L1089).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
