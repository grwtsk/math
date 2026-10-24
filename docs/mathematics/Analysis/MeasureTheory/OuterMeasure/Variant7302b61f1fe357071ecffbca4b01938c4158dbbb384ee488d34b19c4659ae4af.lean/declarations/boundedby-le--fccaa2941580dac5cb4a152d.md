# boundedBy_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cf875ce-07e9-ce70-1ed0-4c354b7e46d0",
  "kind": "theorem",
  "lexical_name": "boundedBy_le",
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
  "slug": "boundedby-le--fccaa2941580dac5cb4a152d",
  "source": {
    "blob": "6ff67b37e84e9f2cb08fd440bd19b779c9beb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 849,
    "line": 846,
    "path": "GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fccaa2941580dac5cb4a152d4c1c73e7059ebca379ac572a092dc682230dc585",
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

Occurrence: `result:5cf875ce-07e9-ce70-1ed0-4c354b7e46d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–849.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundedBy_le (s : Set α) : boundedBy m s ≤ m s :=
  (ofFunction_le _).trans iSup_const_le
#align measure_theory.outer_measure.bounded_by_le MeasureTheory.OuterMeasure.boundedBy_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff67b37e84e9f2cb08fd440bd19b779c9beb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
