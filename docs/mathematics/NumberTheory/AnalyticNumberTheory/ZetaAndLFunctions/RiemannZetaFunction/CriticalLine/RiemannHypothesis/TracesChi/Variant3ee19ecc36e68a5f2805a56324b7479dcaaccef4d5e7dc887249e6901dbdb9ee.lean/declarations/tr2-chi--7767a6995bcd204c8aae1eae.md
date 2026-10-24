# tr2_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27944502232eac80c7f2ae0c95bbd1998c72d40a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b75f698-3e6d-6ef6-3e2d-c709e9f6dabc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6048d800-84ba-2b16-660b-51a4370adc13",
  "kind": "theorem",
  "lexical_name": "tr2_chi",
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
  "slug": "tr2-chi--7767a6995bcd204c8aae1eae",
  "source": {
    "blob": "27944502232eac80c7f2ae0c95bbd1998c72d40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7767a6995bcd204c8aae1eae6ee38c746efac43a8095598e0443af9a25cbe565",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6048d800-84ba-2b16-660b-51a4370adc13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr2_chi : EvBound (fun T => D.trG2 T - mainTr2Chi P q T)
    (fun T => P.calE T * mainTr2Chi P q T) := by
  have hlam := h.lam_pos
  have hw1 := h.one_le_w
  have hw : 0 ≤ P.w := by linarith
  obtain ⟨CR, hCR, hR⟩ := (tr2_first_chi h).eventually_le
  obtain ⟨Cμ, hCμ, hμ⟩ := h.muints2.eventually_le
  obtain ⟨Cu, hCu, hu⟩ := h.sum_upper.eventually_le
  obtain ⟨Cl, hCl, hlo⟩ := h.sum_lower.eventually_le
  refine EvBound.of_eventually_le
    (c := 2 * π * CR + Cμ + 2 + 6 * (Cu + Cl + 2 * P.w)) (by positivity) ?_
  filter_upwards [hR, hμ, hu, hlo, h.abdef, regime_chi h, calE_ge_w_div_L hlam hw,
    calE_ge_mid hlam hw, calE_nonneg_eventually hlam hw, eventually_L_ge P hlam (2 * P.w),
    eventually_gt_atTop 0]
    with T hR hμ hu hlo hab hreg hEw hEmid hE0 hL2w hT0
  obtain ⟨hT, hl, hlog, hL, hX, hLl, hXT⟩ := hreg
  obtain ⟨hb1, hba, ha1⟩ := hab
  have hSup : D.sumL2gq T - P.L T ^ 3 / 6 ≤ Cu * P.L T ^ 2 := by
    rw [abs_of_nonneg (le_max_right _ _)] at hu
    exact (le_max_left _ _).trans hu
  have hSlo : -(Cl * P.L T ^ 2) ≤ D.sumL2gq T - (P.L T - 2 * P.w) ^ 3 / 6 :=
    (abs_le.mp hlo).1.trans (min_le_left _ _)
  exact tr2_pointwise T (P.L T) (ell1q q T) (Zeta23.l T) (P.X T) (P.calE T) (D.sumL2gq T)
    (D.intMu2 T) (D.bT T) (D.trG2 T) P.w CR Cμ Cu Cl hT hL hl hlog hX
    (l_le_ell1q h.one_le_q hT0) hLl hw1 hL2w hb1 (hba.trans ha1)
    hE0 hEw hEmid hCR.le hCμ.le hCu.le hCl.le hR hμ hSup hSlo

/-- [eq:ratio] for chi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27944502232eac80c7f2ae0c95bbd1998c72d40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
