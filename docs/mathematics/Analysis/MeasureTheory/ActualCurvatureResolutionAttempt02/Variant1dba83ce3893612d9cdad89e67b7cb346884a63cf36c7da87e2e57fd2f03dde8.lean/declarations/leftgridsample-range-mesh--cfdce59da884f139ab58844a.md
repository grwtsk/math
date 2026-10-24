# leftGridSample_range_mesh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e755e90-e11c-dc22-3d7b-24726fef5ebb",
  "kind": "theorem",
  "lexical_name": "leftGridSample_range_mesh",
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
  "slug": "leftgridsample-range-mesh--cfdce59da884f139ab58844a",
  "source": {
    "blob": "e5f98547956f127a97508a74ba09476347994ebb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 73,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfdce59da884f139ab58844a7da7c9af0fff374699f2448a14dc2691d3e4ac29",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e755e90-e11c-dc22-3d7b-24726fef5ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftGridSample_range_mesh {A u : ℝ} {n : ℕ} (hA : 0<A) (hn : 0<n)
    (hu : u∈Icc (0:ℝ) (2*A)) :
    leftGridSample A n u∈Icc (0:ℝ) (2*A) ∧ |leftGridSample A n u-u|≤2*A/n := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  let h : ℝ := 2*A/n
  have hh : 0<h := by dsimp [h];positivity
  have hx : 0≤u/h := div_nonneg hu.1 hh.le
  have hf := Nat.floor_le hx
  have ht := Nat.lt_floor_add_one (u/h)
  have hlo : 0≤h*(⌊u/h⌋₊:ℝ) := by positivity
  have hle : h*(⌊u/h⌋₊:ℝ)≤u := by
    have hf2 := (le_div_iff₀ hh).mp hf
    nlinarith
  have hdiff : u-h*(⌊u/h⌋₊:ℝ)≤h := by
    have ht2 := (div_lt_iff₀ hh).mp ht
    nlinarith
  change h*(⌊u/h⌋₊:ℝ)∈Icc (0:ℝ) (2*A) ∧ |h*(⌊u/h⌋₊:ℝ)-u|≤h
  constructor
  · exact ⟨hlo,hle.trans hu.2⟩
  · rw [abs_sub_comm,abs_of_nonneg (sub_nonneg.mpr hle)]
    exact hdiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5f98547956f127a97508a74ba09476347994ebb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
