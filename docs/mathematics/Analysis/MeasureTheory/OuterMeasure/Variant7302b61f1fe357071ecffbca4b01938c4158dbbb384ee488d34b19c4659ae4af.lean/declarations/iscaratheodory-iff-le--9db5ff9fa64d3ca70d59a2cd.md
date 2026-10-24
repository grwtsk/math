# isCaratheodory_iff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:410381aa-e6fc-f270-b945-6a7188f77fb4",
  "kind": "theorem",
  "lexical_name": "isCaratheodory_iff_le",
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
  "slug": "iscaratheodory-iff-le--9db5ff9fa64d3ca70d59a2cd",
  "source": {
    "blob": "6ff67b37e84e9f2cb08fd440bd19b779c9beb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1059,
    "line": 1055,
    "path": "GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9db5ff9fa64d3ca70d59a2cdc00bd57cad5b94f44aea9f83b5fa5af492be3cd3",
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

Occurrence: `result:410381aa-e6fc-f270-b945-6a7188f77fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1059.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCaratheodory_iff_le {s : Set α} :
    MeasurableSet[OuterMeasure.caratheodory m] s ↔ ∀ t, m (t ∩ s) + m (t \ s) ≤ m t :=
  isCaratheodory_iff_le' m
#align measure_theory.outer_measure.is_caratheodory_iff_le MeasureTheory.OuterMeasure.isCaratheodory_iff_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant7302b61f1fe357071ecffbca4b01938c4158dbbb384ee488d34b19c4659ae4af.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff67b37e84e9f2cb08fd440bd19b779c9beb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
