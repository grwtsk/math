# reducedW_inverse_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7ff5968-b422-52d4-0913-406ff2a3a222",
  "kind": "theorem",
  "lexical_name": "reducedW_inverse_uniform_bound",
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
  "slug": "reducedw-inverse-uniform-bound--f83c03079b37d9dcd5fb05b0",
  "source": {
    "blob": "074c85ba77c38b1d12238ec978ebb8ba7d48246d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f83c03079b37d9dcd5fb05b0ea4c044239b019a741e75e3e7c47dcd100fbd936",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7ff5968-b422-52d4-0913-406ff2a3a222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedW_inverse_uniform_bound (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ w : ℂ, ε ≤ w.re →
      ‖(reducedW w)⁻¹‖ ≤ C * (1 + ‖w‖)^4 := by
  let R : ℝ := max 1 (1060 / (1 - Real.exp (-2*ε)))
  let K : Set ℂ := Metric.closedBall 0 R ∩ {w : ℂ | ε ≤ w.re}
  have hK : IsCompact K := (isCompact_closedBall (0 : ℂ) R).inter_right
    (isClosed_le continuous_const Complex.continuous_re)
  have hc : ContinuousOn (fun w : ℂ => (reducedW w)⁻¹) K :=
    reducedW_differentiable.continuous.continuousOn.inv₀
      (fun w hw => reducedW_ne_zero w (hε.trans_le hw.2))
  obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn hc
  let T : ℝ := Real.sqrt (45056/1105 : ℝ) / (192 * (1 - Real.exp (-2*ε)))
  have hq := sourceTailGap_pos ε hε
  have hT : 0 ≤ T := by dsimp [T]; positivity
  refine ⟨1 + |M| + T, by positivity, ?_⟩
  intro w hw
  have hpow : 1 ≤ (1 + ‖w‖)^4 := one_le_pow₀ (by linarith [norm_nonneg w])
  by_cases hr : R ≤ ‖w‖
  · have ht := reducedW_inverse_tail_bound ε hε w hw hr
    calc
      _ ≤ T * ‖w‖^4 := ht
      _ ≤ T * (1 + ‖w‖)^4 := by gcongr; linarith
      _ ≤ (1 + |M| + T) * (1 + ‖w‖)^4 := by gcongr; linarith [abs_nonneg M]
  · have hmem : w ∈ K := by
      refine ⟨?_, hw⟩
      simpa only [Metric.mem_closedBall, dist_zero_right] using (le_of_lt (lt_of_not_ge hr))
    calc
      _ ≤ M := hM w hmem
      _ ≤ |M| := le_abs_self M
      _ ≤ 1 + |M| + T := by linarith
      _ ≤ (1 + |M| + T) * (1 + ‖w‖)^4 := by
        exact le_mul_of_one_le_right (by positivity) hpow

end
end ReducedFilterInverseScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c85ba77c38b1d12238ec978ebb8ba7d48246d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
