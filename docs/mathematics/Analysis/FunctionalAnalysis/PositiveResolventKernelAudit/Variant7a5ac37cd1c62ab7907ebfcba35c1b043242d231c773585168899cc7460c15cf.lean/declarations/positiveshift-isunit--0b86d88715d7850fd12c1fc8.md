# positiveShift_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be8fa79b-9758-bc25-64ed-e23c5b85e1a4",
  "kind": "theorem",
  "lexical_name": "positiveShift_isUnit",
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
  "slug": "positiveshift-isunit--0b86d88715d7850fd12c1fc8",
  "source": {
    "blob": "dcd44305c17b02c282f721147dc2c2bf460ef01b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b86d88715d7850fd12c1fc84a7719c5c2ad1c4e4eacb616b2f8e22277dfd455",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be8fa79b-9758-bc25-64ed-e23c5b85e1a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveShift_isUnit (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : IsUnit (positiveShift S α) := by
  apply ContinuousLinearMap.isUnit_of_forall_le_norm_inner_map (positiveShift S α)
    (c := ⟨α, hα.le⟩) (by exact_mod_cast hα)
  intro x
  have hc : ‖x‖ ^ 2 * (⟨α, hα.le⟩ : ℝ≥0) ≤
      (inner ℂ (positiveShift S α x) x).re := by
    simpa only [NNReal.coe_mk, mul_comm] using positiveShift_coercive S hS α x
  exact hc.trans (Complex.re_le_norm _)

/-- The ordinary ring inverse; the preceding theorem supplies its unit admission. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd44305c17b02c282f721147dc2c2bf460ef01b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
