# positiveResolvent_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d9aa171-9bec-8d5f-3a81-66b8bd6dbfd3",
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
  "slug": "positiveresolvent-norm-le--6bc3f7f9264a11eadafd1ba5",
  "source": {
    "blob": "d9065d5d9052285331e6b3297386e45a5fad3f97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 540,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bc3f7f9264a11eadafd1ba5a5ea7d1bc909fc713eb7be7ea1568f072c8f019b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9aa171-9bec-8d5f-3a81-66b8bd6dbfd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–555.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9065d5d9052285331e6b3297386e45a5fad3f97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
