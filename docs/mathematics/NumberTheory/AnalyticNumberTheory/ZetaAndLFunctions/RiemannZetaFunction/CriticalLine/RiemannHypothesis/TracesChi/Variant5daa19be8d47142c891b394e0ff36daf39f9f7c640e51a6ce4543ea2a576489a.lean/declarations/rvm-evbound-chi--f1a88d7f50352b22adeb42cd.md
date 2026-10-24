# rvm_evBound_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:275b8588-f7ba-394b-a9bc-837b330f29c5",
  "kind": "lemma",
  "lexical_name": "rvm_evBound_chi",
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
  "slug": "rvm-evbound-chi--f1a88d7f50352b22adeb42cd",
  "source": {
    "blob": "002d9e76f53226936f0854e872936b9f9316bb88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 327,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a88d7f50352b22adeb42cd659f8149ea8baff0e67e145b788aa3a295ebce22",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:275b8588-f7ba-394b-a9bc-837b330f29c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rvm_evBound_chi {Z : ZeroConfig} (hR : RiemannVonMangoldtChi q Z) :
    EvBound (fun T => (Z.N T (2 * T) : ℝ) - T * ell1q q T / (2 * π)) Zeta23.l := by
  obtain ⟨C, T₀, hC⟩ := hR.main
  refine ⟨2 * max C 1, by positivity, max T₀ (4 * π ^ 2), fun T hT => ?_⟩
  have hT₀ : T₀ ≤ T := (le_max_left _ _).trans hT
  have hT4 : 4 * π ^ 2 ≤ T := (le_max_right _ _).trans hT
  have hπ := Real.pi_pos
  have hT0 : 0 < T := lt_of_lt_of_le (by positivity) hT4
  have h1 := hC T hT₀
  have h2 : T / (2 * π) * ell1q q T = T * ell1q q T / (2 * π) := by ring
  rw [h2] at h1
  have hl : Real.log T ≤ 2 * Zeta23.l T := by
    unfold Zeta23.l
    rw [Real.log_div hT0.ne' (by positivity)]
    have h3 : Real.log ((2 * π) ^ 2) ≤ Real.log T :=
      Real.log_le_log (by positivity) (by nlinarith only [hT4])
    rw [Real.log_pow] at h3
    push_cast at h3
    linarith only [h3]
  have hlog0 : 0 ≤ Real.log T := Real.log_nonneg (by nlinarith only [hT4, hπ, Real.pi_gt_three])
  calc |(Z.N T (2 * T) : ℝ) - T * ell1q q T / (2 * π)| ≤ C * Real.log T := h1
    _ ≤ max C 1 * Real.log T := mul_le_mul_of_nonneg_right (le_max_left _ _) hlog0
    _ ≤ max C 1 * (2 * Zeta23.l T) := mul_le_mul_of_nonneg_left hl (by positivity)
    _ = 2 * max C 1 * Zeta23.l T := by ring

set_option maxHeartbeats 1600000 in
/-- FactsChi for the concrete data, from the chi-inputs together with the taper facts
(including lem_ends_chi). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002d9e76f53226936f0854e872936b9f9316bb88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
