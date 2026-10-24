# fract_add_le

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
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba06bfb1-a739-6afd-18a9-d01e26e0135d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73824712-3616-aca6-b4f1-2c86f58cbe11",
  "kind": "theorem",
  "lexical_name": "fract_add_le",
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
  "slug": "fract-add-le--1952aedcaf58460182138dfa",
  "source": {
    "blob": "b61896e58605b1c9593250a0cd0f0a3a0fc407e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 286,
    "path": "GRWTSK/Algebra/Ring/Variant5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1952aedcaf58460182138dfa03dcb125ee775a09c70252440f6f4fa89a248e95",
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

Occurrence: `result:73824712-3616-aca6-b4f1-2c86f58cbe11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fract_add_le (a b : R) : fract (a + b) ≤ fract a + fract b := by
  rw [fract, fract, fract, sub_add_sub_comm, sub_le_sub_iff_left, ← Int.cast_add, Int.cast_le]
  exact le_floor_add _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant5287b427dd98c39d3a57813ea1256cc12230822cb2dbea3ad8bf6972030dd057.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61896e58605b1c9593250a0cd0f0a3a0fc407e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
