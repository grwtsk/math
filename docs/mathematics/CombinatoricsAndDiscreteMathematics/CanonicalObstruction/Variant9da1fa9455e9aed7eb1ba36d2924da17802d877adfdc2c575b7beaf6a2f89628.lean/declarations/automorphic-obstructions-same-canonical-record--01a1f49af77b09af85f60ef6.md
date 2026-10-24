# automorphic_obstructions_same_canonical_record

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "320bcdba66d121682c998f4ba3542958354010ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a8c21d9-f4e0-74ed-580e-d9d10cd5891d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e4a2f19-d4e6-a6cc-e825-33cafd0d22b6",
  "kind": "theorem",
  "lexical_name": "automorphic_obstructions_same_canonical_record",
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
  "slug": "automorphic-obstructions-same-canonical-record--01a1f49af77b09af85f60ef6",
  "source": {
    "blob": "320bcdba66d121682c998f4ba3542958354010ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01a1f49af77b09af85f60ef6332b8001bc8d5014e0ad5de56c65a34f526cccc7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e4a2f19-d4e6-a6cc-e825-33cafd0d22b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem automorphic_obstructions_same_canonical_record
    {GroupCarrier : Type uGroup}
    {Partial : Type*}
    {Constraint : Type*}
    [DecidableEq Constraint]
    [Group GroupCarrier]
    [Fintype GroupCarrier]
    [DecidableEq GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Constraint]
    [LinearOrder
      (RawObstruction Partial Constraint)]
    (automorphism : GroupCarrier)
    (obstruction :
      RawObstruction Partial Constraint) :
    canon GroupCarrier
        (RawObstruction Partial Constraint)
        (automorphism • obstruction) =
      canon GroupCarrier
        (RawObstruction Partial Constraint)
        obstruction :=
  canon_smul
    GroupCarrier
    (RawObstruction Partial Constraint)
    automorphism obstruction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320bcdba66d121682c998f4ba3542958354010ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
