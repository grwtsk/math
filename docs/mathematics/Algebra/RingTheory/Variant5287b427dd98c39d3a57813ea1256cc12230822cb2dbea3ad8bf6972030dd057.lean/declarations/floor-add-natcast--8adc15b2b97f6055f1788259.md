# floor_add_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b61896e58605b1c9593250a0cd0f0a3a0fc407e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9dbc1c7-a28a-6c84-e192-32db5a4104b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f17323e-7b0e-a448-2d7b-6826e8b54242",
  "kind": "theorem",
  "lexical_name": "floor_add_natCast",
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
  "slug": "floor-add-natcast--8adc15b2b97f6055f1788259",
  "source": {
    "blob": "b61896e58605b1c9593250a0cd0f0a3a0fc407e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 139,
    "path": "GRWTSK/Algebra/Ring/Variant5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8adc15b2b97f6055f178825955647d9092c35ea73ac7da8ebc81a866eb5ac1fa",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f17323e-7b0e-a448-2d7b-6826e8b54242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_add_natCast (a : R) (n : ℕ) : ⌊a + n⌋ = ⌊a⌋ + n := by
  rw [← Int.cast_natCast, floor_add_intCast]

@[deprecated (since := "2025-04-01")] alias floor_add_nat := floor_add_natCast

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61896e58605b1c9593250a0cd0f0a3a0fc407e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
