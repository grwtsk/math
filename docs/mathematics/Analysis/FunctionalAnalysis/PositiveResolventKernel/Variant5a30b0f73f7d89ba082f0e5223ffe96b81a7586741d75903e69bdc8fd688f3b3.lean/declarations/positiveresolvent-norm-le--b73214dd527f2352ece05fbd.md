# positiveResolvent_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f6ecf49fe4715612ffb5fe2c38206c15a376190",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fcc6149-d4f1-7dc8-539c-163afa192cd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb9743fc-0a65-adef-ea6a-57ade1323b25",
  "kind": "theorem",
  "lexical_name": "positiveResolvent_norm_le",
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
  "slug": "positiveresolvent-norm-le--b73214dd527f2352ece05fbd",
  "source": {
    "blob": "2f6ecf49fe4715612ffb5fe2c38206c15a376190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b73214dd527f2352ece05fbdd88df05e193f270b628263320a5b0072e5e8a520",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb9743fc-0a65-adef-ea6a-57ade1323b25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveResolvent_norm_le (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : ‖positiveResolvent S α‖ ≤ 1 / α := by
  have ha := ContinuousLinearMap.antilipschitz_of_forall_le_inner_map (positiveShift S α)
    (c := ⟨α, hα.le⟩) (by exact_mod_cast hα) (fun x => by
      have hc : ‖x‖ ^ 2 * (⟨α, hα.le⟩ : ℝ≥0) ≤
          (inner ℂ (positiveShift S α x) x).re := by
        simpa only [NNReal.coe_mk, mul_comm] using positiveShift_coercive S hS α x
      exact hc.trans (Complex.re_le_norm _))
  apply (positiveResolvent S α).opNorm_le_bound (by positivity)
  intro x
  have h := ha.le_mul_dist (positiveResolvent S α x) 0
  simp only [map_zero, dist_zero_right, positiveShift_resolvent_apply S hS α hα] at h
  change ‖positiveResolvent S α x‖ ≤ α⁻¹ * ‖x‖ at h
  simpa only [one_div] using h

/-- The admitted inverse itself is a positive operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f6ecf49fe4715612ffb5fe2c38206c15a376190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
