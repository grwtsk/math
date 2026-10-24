# logarithmic_tail_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35b1a299-4e39-a428-38a5-05c8f9e67953",
  "kind": "theorem",
  "lexical_name": "logarithmic_tail_antitone",
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
  "slug": "logarithmic-tail-antitone--89886a2723f0db9bb00b39fb",
  "source": {
    "blob": "3b056d442994d76e356c5d4440bf4e5b42ae6190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89886a2723f0db9bb00b39fbd4d16f18ccb8cf7a39e0067c973fdbe449234ef2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35b1a299-4e39-a428-38a5-05c8f9e67953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logarithmic_tail_antitone (T R : ℝ) (hT : 4 ≤ T) (hTR : T ≤ R) :
    (Real.log R + 2) / R ^ 5 ≤ (Real.log T + 2) / T ^ 5 := by
  have hTp : 0 < T := by linarith
  have hRp : 0 < R := hTp.trans_le hTR
  have hx : 1 ≤ R / T := (le_div_iff₀ hTp).mpr (by simpa using hTR)
  have hlog : 0 ≤ Real.log T := Real.log_nonneg (by linarith)
  have he : Real.log R = Real.log T + Real.log (R / T) := by
    rw [Real.log_div hRp.ne' hTp.ne']
    ring
  have hd := Real.log_le_sub_one_of_pos (div_pos hRp hTp)
  have hnum : Real.log R + 2 ≤ R / T * (Real.log T + 2) := by
    rw [he]
    nlinarith [mul_nonneg (show 0 ≤ R / T - 1 by linarith) hlog]
  have hp4 : T ^ 4 ≤ R ^ 4 := pow_le_pow_left₀ hTp.le hTR 4
  calc
    _ ≤ (R / T * (Real.log T + 2)) / R ^ 5 :=
      div_le_div_of_nonneg_right hnum (by positivity)
    _ = (Real.log T + 2) / (T * R ^ 4) := by field_simp
    _ ≤ (Real.log T + 2) / (T * T ^ 4) :=
      div_le_div_of_nonneg_left (by linarith) (by positivity)
        (mul_le_mul_of_nonneg_left hp4 hTp.le)
    _ = _ := by ring

/-- The same actual error applies to every chosen height above the prescribed one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b056d442994d76e356c5d4440bf4e5b42ae6190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
