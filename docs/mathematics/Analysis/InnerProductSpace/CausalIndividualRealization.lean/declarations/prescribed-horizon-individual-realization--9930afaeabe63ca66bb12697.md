# prescribed_horizon_individual_realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2dfd715-8786-3b60-d9ca-0229a0e63c4b",
  "kind": "theorem",
  "lexical_name": "prescribed_horizon_individual_realization",
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
  "slug": "prescribed-horizon-individual-realization--9930afaeabe63ca66bb12697",
  "source": {
    "blob": "1c0b1f76322c939ccb53b82b4476615c43026ee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalIndividualRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9930afaeabe63ca66bb126976dfa11eded823b82cf47257382327d7903a5b3b6",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalIndividualRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2dfd715-8786-3b60-d9ca-0229a0e63c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_horizon_individual_realization {δ : ℝ} (gap : 0 < δ) :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ hA : 0 < A,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        map (originalWindowL2 (2 * A) 8) = prescribedSourceL2 A hA 8 ∧
        ‖map‖ ^ 2 = 1 / gram (2 * A) 8 8 ∧
        ∀ other : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
          other (originalWindowL2 (2 * A) 8) = prescribedSourceL2 A hA 8 →
            ‖map‖ ≤ ‖other‖ := by
  refine ⟨(Real.log (8 : ℝ) + δ) / 2, (log_eight_near_contact_scale_bounds gap).1, ?_⟩
  intro hA
  apply bounded_individual_realization_exists hA (by norm_num : 1 ≤ (8 : ℕ))
  linarith

end

end GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalIndividualRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalIndividualRealization.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c0b1f76322c939ccb53b82b4476615c43026ee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
