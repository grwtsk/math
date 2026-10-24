# prescribed_horizon_no_uniform_bounded_realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a422ae5c-b973-1410-b1e8-43b8323eef9a",
  "kind": "theorem",
  "lexical_name": "prescribed_horizon_no_uniform_bounded_realization",
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
  "slug": "prescribed-horizon-no-uniform-bounded-realization--0919a36c6be053eac1c87dd1",
  "source": {
    "blob": "970397fd684e83af649d2e2dd3efe6a2fcbf9d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 234,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0919a36c6be053eac1c87dd1d9fa60a589757555bb4a486b31a19d271961c398",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a422ae5c-b973-1410-b1e8-43b8323eef9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_horizon_no_uniform_bounded_realization {C : ℝ} (nonnegative : 0 ≤ C) :
    ¬ ∀ δ : ℝ, ∀ gap : 0 < δ,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        ‖map‖ ≤ C ∧
          map (originalWindowL2 (2 * ((Real.log (8 : ℝ) + δ) / 2)) 8) =
            prescribedSourceL2 ((Real.log (8 : ℝ) + δ) / 2)
              (log_eight_near_contact_scale_bounds gap).2 8 := by
  intro uniform
  apply no_uniform_bounded_realization_for_scale_family (n := 8) (by norm_num)
    (fun δ ↦ (Real.log (8 : ℝ) + δ) / 2)
    (fun _ gap ↦ (log_eight_near_contact_scale_bounds gap).2) nonnegative
  intro δ gap
  obtain ⟨map, normBound, realizes⟩ := uniform δ gap
  refine ⟨map, normBound, ?_⟩
  rw [show 2 * ((Real.log (8 : ℝ) + δ) / 2) = Real.log (8 : ℝ) + δ by ring] at realizes
  exact realizes

end

end GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970397fd684e83af649d2e2dd3efe6a2fcbf9d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
