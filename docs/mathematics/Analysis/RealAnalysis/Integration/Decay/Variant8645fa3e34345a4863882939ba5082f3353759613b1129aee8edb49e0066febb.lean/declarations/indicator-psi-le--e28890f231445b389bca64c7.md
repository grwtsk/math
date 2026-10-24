# indicator_psi_le

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
      "line": 578,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e57a4e68-c4ab-fa37-aac8-5918e8f15f6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26703634-b0a4-5183-c574-ebf91bd76dfc",
  "kind": "theorem",
  "lexical_name": "indicator_psi_le",
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
  "slug": "indicator-psi-le--e28890f231445b389bca64c7",
  "source": {
    "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 578,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e28890f231445b389bca64c7b92112efb95ea3ba73bc3a857b3af4d32a65875b",
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

Occurrence: `result:26703634-b0a4-5183-c574-ebf91bd76dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem indicator_psi_le (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) (r : ℝ) :
    (Ioi (0:ℝ)).indicator (psi ϱ L w) r
      ≤ (Ioc 0 (2 / L)).indicator (fun _ => L) r
        + (Ioc (2 / L) (cRho ϱ / (2 * w))).indicator (fun x => 2 * x⁻¹) r
        + (Ioi (cRho ϱ / (2 * w))).indicator (fun x => cRho ϱ / w * x ^ (-2:ℝ)) r := by
  obtain ⟨hA, hB, hAB, -⟩ := psiints_consts hϱ hw hwL
  have hwL' : 2 * w ≤ L := by linarith
  by_cases hr : r ∈ Ioi (0:ℝ)
  · have hr0 : 0 < r := hr
    rw [indicator_of_mem hr]
    by_cases h1 : r ≤ 2 / L
    · rw [indicator_of_mem (show r ∈ Ioc 0 (2 / L) from ⟨hr0, h1⟩),
        indicator_of_notMem (show r ∉ Ioc (2 / L) (cRho ϱ / (2 * w)) from
          fun h => not_lt.mpr h1 h.1),
        indicator_of_notMem (show r ∉ Ioi (cRho ϱ / (2 * w)) from
          fun h => not_lt.mpr (h1.trans hAB) h), add_zero, add_zero]
      exact psi_le_L hϱ hw hwL' r
    · rw [not_le] at h1
      by_cases h2 : r ≤ cRho ϱ / (2 * w)
      · rw [indicator_of_notMem (show r ∉ Ioc 0 (2 / L) from fun h => not_le.mpr h1 h.2),
          indicator_of_mem (show r ∈ Ioc (2 / L) (cRho ϱ / (2 * w)) from ⟨h1, h2⟩),
          indicator_of_notMem (show r ∉ Ioi (cRho ϱ / (2 * w)) from fun h => not_lt.mpr h2 h),
          zero_add, add_zero]
        have := psi_mul_abs_le hϱ hw hwL' r
        rw [abs_of_pos hr0] at this
        rw [← div_eq_mul_inv, le_div_iff₀ hr0]
        exact this
      · rw [not_le] at h2
        rw [indicator_of_notMem (show r ∉ Ioc 0 (2 / L) from fun h => not_le.mpr h1 h.2),
          indicator_of_notMem (show r ∉ Ioc (2 / L) (cRho ϱ / (2 * w)) from
            fun h => not_le.mpr h2 h.2),
          indicator_of_mem (show r ∈ Ioi (cRho ϱ / (2 * w)) from h2), zero_add, zero_add]
        exact psi_le_rpow_neg_two hϱ hw hwL' hr0
  · rw [indicator_of_notMem hr]
    have hr0 : r ≤ 0 := not_lt.mp hr
    rw [indicator_of_notMem (show r ∉ Ioc 0 (2 / L) from fun h => hr h.1),
      indicator_of_notMem (show r ∉ Ioc (2 / L) (cRho ϱ / (2 * w)) from
        fun h => hr (lt_trans hA h.1)),
      indicator_of_notMem (show r ∉ Ioi (cRho ϱ / (2 * w)) from fun h => hr (lt_trans hB h)),
      add_zero, add_zero]

/-- [eq:psiints]: Ψ₀ := ∫₀^∞ ψ(r) dr ≤ 4 + 2 log(c_ϱ L/(4w)) (paper: "="). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67c96e7c3575ca2a9acaf1f66e4172a190ed7a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
