# decodeRecords_encodeRecords

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fb13708-2026-4ae2-2049-ab97c935d05b",
  "kind": "theorem",
  "lexical_name": "decodeRecords_encodeRecords",
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
  "slug": "decoderecords-encoderecords--68bb877ae2aa579a85c7194a",
  "source": {
    "blob": "3a07c65b502f19d1b120a4895bbfb87e062fccc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 235,
    "path": "GRWTSK/GroupTheory/Words/HeisenbergWire.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68bb877ae2aa579a85c7194a7af5080f7d9bcca03c1e4850cab49fbbdac7daed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Words/HeisenbergWire.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fb13708-2026-4ae2-2049-ab97c935d05b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decodeRecords_encodeRecords (values : List IntegralHeisenberg)
    (suffix : List UInt8) (bound : ∀ value ∈ values, RecordFits value) :
    decodeRecords values.length (encodeRecords values ++ suffix) = some (values, suffix) := by
  induction values with
  | nil => rfl
  | cons value rest ih =>
    have hv := bound value (by simp)
    have ht := ih (fun item hi => bound item (by simp [hi]))
    simp only [List.length_cons, encodeRecords, List.append_assoc, decodeRecords]
    rw [List.take_left' (encodeRecord_length value),
      List.drop_left' (encodeRecord_length value), decodeRecord_encodeRecord value hv]
    simp only [ht]
    rfl

/-- The literal bytes of ASCII `NOEHEIS1`; no locale or Unicode conversion is
part of the trusted mathematical wire definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Words/HeisenbergWire.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GroupTheory/Words/HeisenbergWire.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a07c65b502f19d1b120a4895bbfb87e062fccc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
