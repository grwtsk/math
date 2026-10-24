# meas_le_ne_meas_lt_subset_meas_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9aeb10ce211de0ececd83a30212e61be39f0b41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6495cdc1-ccdf-a890-9fe6-8a6e6f70dfcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfb7ba90-05b6-8206-f159-5a62fcc35c73",
  "kind": "theorem",
  "lexical_name": "meas_le_ne_meas_lt_subset_meas_pos",
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
  "slug": "meas-le-ne-meas-lt-subset-meas-pos--1f5e84031c3e4cc2b78a0aff",
  "source": {
    "blob": "c9aeb10ce211de0ececd83a30212e61be39f0b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 271,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f5e84031c3e4cc2b78a0aff61e534e9b9e07778620d1f76dcf2993beaa98b68",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfb7ba90-05b6-8206-f159-5a62fcc35c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meas_le_ne_meas_lt_subset_meas_pos {R : Type*} [LinearOrder R] [MeasurableSpace R]
    [MeasurableSingletonClass R] {g : α → R} (g_mble : Measurable g) {t : R}
    (ht : μ {a : α | t ≤ g a} ≠ μ {a : α | t < g a}) : 0 < μ {a : α | g a = t} := by
  have uni : {a : α | t ≤ g a} = {a : α | t < g a} ∪ {a : α | t = g a} := by
    ext a
    simp only [mem_setOf, mem_union]
    apply le_iff_lt_or_eq
  rw [show {a : α | t = g a} = {a : α | g a = t} by simp_rw [eq_comm]] at uni
  have disj : {a : α | t < g a} ∩ {a : α | g a = t} = ∅ := by
    ext a
    simp only [mem_inter_iff, mem_setOf, mem_empty_iff_false, iff_false_iff, not_and]
    exact ne_of_gt
  have μ_add : μ {a : α | t ≤ g a} = μ {a : α | t < g a} + μ {a : α | g a = t} := by
    rw [uni,
      measure_union (disjoint_iff_inter_eq_empty.mpr disj)
        (g_mble (Finite.measurableSet (finite_singleton t)))]
  by_contra con
  rw [not_lt, nonpos_iff_eq_zero] at con
  rw [con, add_zero] at μ_add
  exact ht μ_add
#align measure.meas_le_ne_meas_lt_subset_meas_pos Measure.meas_le_ne_meas_lt_subset_meas_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9aeb10ce211de0ececd83a30212e61be39f0b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
