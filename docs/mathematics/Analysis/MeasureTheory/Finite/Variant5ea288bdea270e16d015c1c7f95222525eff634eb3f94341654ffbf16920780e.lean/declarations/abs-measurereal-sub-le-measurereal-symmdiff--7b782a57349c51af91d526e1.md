# abs_measureReal_sub_le_measureReal_symmDiff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc07583ec7858ca76ed495cb0d8f84a6e1c665fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03b71c73-531a-8603-abd1-93541a9064c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1314880-43b3-d391-7cde-cf1ef0a25f2f",
  "kind": "theorem",
  "lexical_name": "abs_measureReal_sub_le_measureReal_symmDiff'",
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
  "slug": "abs-measurereal-sub-le-measurereal-symmdiff--7b782a57349c51af91d526e1",
  "source": {
    "blob": "fc07583ec7858ca76ed495cb0d8f84a6e1c665fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 183,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b782a57349c51af91d526e1789eeb37b325a23b32e35bcaa42ada7299cc783c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1314880-43b3-d391-7cde-cf1ef0a25f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_measureReal_sub_le_measureReal_symmDiff'
    (hs : NullMeasurableSet s μ) (ht : NullMeasurableSet t μ) (hs' : μ s ≠ ∞) (ht' : μ t ≠ ∞) :
    |μ.real s - μ.real t| ≤ μ.real (s ∆ t) := by
  simp only [Measure.real]
  have hst : μ (s \ t) ≠ ∞ := (measure_lt_top_of_subset diff_subset hs').ne
  have hts : μ (t \ s) ≠ ∞ := (measure_lt_top_of_subset diff_subset ht').ne
  suffices (μ s).toReal - (μ t).toReal = (μ (s \ t)).toReal - (μ (t \ s)).toReal by
    rw [this, measure_symmDiff_eq hs ht, ENNReal.toReal_add hst hts]
    convert abs_sub (μ (s \ t)).toReal (μ (t \ s)).toReal <;> simp
  rw [measure_diff' s ht ht', measure_diff' t hs hs',
    ENNReal.toReal_sub_of_le measure_le_measure_union_right (measure_union_ne_top hs' ht'),
    ENNReal.toReal_sub_of_le measure_le_measure_union_right (measure_union_ne_top ht' hs'),
    union_comm t s]
  abel

@[deprecated (since := "2025-04-18")] alias
  abs_toReal_measure_sub_le_measure_symmDiff' := abs_measureReal_sub_le_measureReal_symmDiff'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc07583ec7858ca76ed495cb0d8f84a6e1c665fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
