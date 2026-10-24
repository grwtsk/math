# iUnion_null_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eb7db97-3f78-5873-e169-103b24620ac8",
  "kind": "theorem",
  "lexical_name": "iUnion_null_iff'",
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
  "slug": "iunion-null-iff--c31afec638a519dd28b3eab2",
  "source": {
    "blob": "6ff67b37e84e9f2cb08fd440bd19b779c9beb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 137,
    "path": "GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c31afec638a519dd28b3eab25797226df464db13df6b7b278c160b18da46dfb1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eb7db97-3f78-5873-e169-103b24620ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_null_iff' (m : OuterMeasure α) {ι : Prop} {s : ι → Set α} :
    m (⋃ i, s i) = 0 ↔ ∀ i, m (s i) = 0 :=
    ⟨ fun h i => mono_null m (subset_iUnion s i) h,
      by by_cases i : ι <;> simp [i]; exact (fun h => h (Iff.mpr (Iff.of_eq (eq_true i)) trivial)) ⟩
#align measure_theory.outer_measure.Union_null_iff' MeasureTheory.OuterMeasure.iUnion_null_iff'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff67b37e84e9f2cb08fd440bd19b779c9beb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
