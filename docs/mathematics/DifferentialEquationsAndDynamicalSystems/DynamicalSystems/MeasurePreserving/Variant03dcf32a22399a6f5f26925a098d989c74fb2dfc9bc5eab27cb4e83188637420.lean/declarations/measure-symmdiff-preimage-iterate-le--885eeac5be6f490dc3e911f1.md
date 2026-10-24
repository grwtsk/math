# measure_symmDiff_preimage_iterate_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85034391-8bf4-a33a-059d-c5c57cf1bd01",
  "kind": "lemma",
  "lexical_name": "measure_symmDiff_preimage_iterate_le",
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
  "slug": "measure-symmdiff-preimage-iterate-le--885eeac5be6f490dc3e911f1",
  "source": {
    "blob": "7b5c694ef39da0496f448bd22e60b6bdc296464e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 206,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:885eeac5be6f490dc3e911f1783b6a9c1ab9de04f9f488a0efd9dda7eff4b7a0",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85034391-8bf4-a33a-059d-c5c57cf1bd01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_symmDiff_preimage_iterate_le
    (hf : MeasurePreserving f μ μ) (hs : NullMeasurableSet s μ) (n : ℕ) :
    μ (s ∆ (f^[n] ⁻¹' s)) ≤ n • μ (s ∆ (f ⁻¹' s)) := by
  induction n with
  | zero => simp
  | succ n ih =>
    simp only [add_smul, one_smul]
    grw [← ih, measure_symmDiff_le s (f^[n] ⁻¹' s) (f^[n + 1] ⁻¹' s)]
    replace hs : NullMeasurableSet (s ∆ (f ⁻¹' s)) μ :=
      hs.symmDiff <| hs.preimage hf.quasiMeasurePreserving
    rw [iterate_succ', preimage_comp, ← preimage_symmDiff, (hf.iterate n).measure_preimage hs]

/-- If `μ univ < n * μ s` and `f` is a map preserving measure `μ`,
then for some `x ∈ s` and `0 < m < n`, `f^[m] x ∈ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5c694ef39da0496f448bd22e60b6bdc296464e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
