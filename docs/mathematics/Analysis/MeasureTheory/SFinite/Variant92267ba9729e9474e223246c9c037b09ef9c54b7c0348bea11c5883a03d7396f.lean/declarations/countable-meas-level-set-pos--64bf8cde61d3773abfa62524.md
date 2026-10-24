# countable_meas_level_set_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9aff6da0a146029080804678d1230413d44bca3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cd0fbd9-a3e0-9f38-a2cc-309957f205cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0d19ed8-0651-999e-65f2-c9c6ba5bb660",
  "kind": "theorem",
  "lexical_name": "countable_meas_level_set_pos",
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
  "slug": "countable-meas-level-set-pos--64bf8cde61d3773abfa62524",
  "source": {
    "blob": "9aff6da0a146029080804678d1230413d44bca3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 310,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64bf8cde61d3773abfa6252478a5219131acb52bccc13c205f55f92b21cdd70a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d19ed8-0651-999e-65f2-c9c6ba5bb660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_meas_level_set_pos {α β : Type*} {_ : MeasurableSpace α} {μ : Measure α}
    [SFinite μ] [MeasurableSpace β] [MeasurableSingletonClass β] {g : α → β}
    (g_mble : Measurable g) : Set.Countable { t : β | 0 < μ { a : α | g a = t } } :=
  countable_meas_level_set_pos₀ g_mble.nullMeasurable

/-- If a measure `μ` is the sum of a countable family `mₙ`, and a set `t` has finite measure for
each `mₙ`, then its measurable superset `toMeasurable μ t` (which has the same measure as `t`)
satisfies, for any measurable set `s`, the equality `μ (toMeasurable μ t ∩ s) = μ (t ∩ s)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aff6da0a146029080804678d1230413d44bca3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
