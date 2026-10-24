# half_interval_subset_interior_integrableExpSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b4b2f2c-0e09-26cc-0dab-7630d803f1ea",
  "kind": "theorem",
  "lexical_name": "half_interval_subset_interior_integrableExpSet",
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
  "slug": "half-interval-subset-interior-integrableexpset--922fcfbdba542d97c55e0cf6",
  "source": {
    "blob": "2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:922fcfbdba542d97c55e0cf60f736804a42db43f41f3be2df6b1a9efe4999f78",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4b2f2c-0e09-26cc-0dab-7630d803f1ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_interval_subset_interior_integrableExpSet
    (ν : Measure ℝ) (hexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) ν) :
    Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ) ⊆ interior (integrableExpSet id ν) := by
  apply isOpen_Ioo.subset_interior_iff.mpr
  intro s hs
  apply hexp.mono'
  · exact (Real.continuous_exp.comp (continuous_const.mul continuous_id)).aestronglyMeasurable
  · filter_upwards [] with x
    rw [Real.norm_of_nonneg (Real.exp_pos _).le]
    apply Real.exp_le_exp.mpr
    have habs : |s| ≤ (1 / 2 : ℝ) := (abs_le.mpr ⟨hs.1.le, hs.2.le⟩)
    calc
      s * x ≤ |s * x| := le_abs_self _
      _ = |s| * |x| := abs_mul _ _
      _ ≤ (1 / 2 : ℝ) * |x| := mul_le_mul_of_nonneg_right habs (abs_nonneg _)
      _ = |x| / 2 := by ring

/-- Equal moments and independently checked exponential domains imply exact
Hamburger measure equality, via local complex series and the common strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
