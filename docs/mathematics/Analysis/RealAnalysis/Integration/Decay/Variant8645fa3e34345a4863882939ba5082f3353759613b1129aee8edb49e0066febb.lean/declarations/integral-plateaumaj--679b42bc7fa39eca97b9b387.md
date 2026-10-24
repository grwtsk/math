# integral_plateauMaj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 468,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f86ccd2e-4558-e244-7683-42487ad87d4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bab44df4-00a5-14e2-36f4-a6e262d02f93",
  "kind": "theorem",
  "lexical_name": "integral_plateauMaj",
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
  "slug": "integral-plateaumaj--679b42bc7fa39eca97b9b387",
  "source": {
    "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 468,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:679b42bc7fa39eca97b9b3870657e5cc9602baff8d060a3b37277f068133a80f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bab44df4-00a5-14e2-36f4-a6e262d02f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_plateauMaj (a b : ℝ) : ∫ r, plateauMaj a b r = 2 * a + 2 * b := by
  have h1 : Integrable ((Icc (-1:ℝ) 1).indicator (fun _ => a)) :=
    (integrable_indicator_iff measurableSet_Icc).mpr (integrableOn_const (by simp))
  have h2 := tail_indicator_integrable
  have h3 : Integrable (fun r => (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) (-r)) := h2.comp_neg
  have e1 : ∫ r, (Icc (-1:ℝ) 1).indicator (fun _ => a) r = 2 * a := by
    rw [integral_indicator measurableSet_Icc, setIntegral_const, measureReal_def,
      Real.volume_Icc, ENNReal.toReal_ofReal (by norm_num), smul_eq_mul]
    norm_num
  have e2 : ∫ r, (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) r = 1 := by
    rw [integral_indicator measurableSet_Ioi, integral_Ioi_rpow_of_lt (by norm_num) one_pos]
    norm_num
  have e3 : ∫ r, (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) (-r) = 1 := by
    rw [MeasureTheory.integral_neg_eq_self ((Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ))) volume]
    exact e2
  have h23 : Integrable (fun r => (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) r
      + (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) (-r)) := h2.add h3
  unfold plateauMaj
  calc ∫ r, ((Icc (-1:ℝ) 1).indicator (fun _ => a) r
        + b * ((Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) r
          + (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) (-r)))
      = (∫ r, (Icc (-1:ℝ) 1).indicator (fun _ => a) r)
        + ∫ r, b * ((Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) r
          + (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) (-r)) :=
        integral_add h1 (h23.const_mul _)
    _ = 2 * a + b * ((∫ r, (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) r)
          + ∫ r, (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) (-r)) := by
        rw [e1, integral_const_mul]
        congr 2
        exact integral_add h2 h3
    _ = 2 * a + 2 * b := by rw [e2, e3]; ring

/-- The integrable majorant of ψ: L on [−1,1] and (c_ϱ/w)|r|⁻² outside. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67c96e7c3575ca2a9acaf1f66e4172a190ed7a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
