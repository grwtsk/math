# roundtripDag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51a2f2a3f73b1e8d30ed3858d7fbf88f3e961c9d70ee688116855d037c4e50bb",
  "kind": "def",
  "lexical_name": "roundtripDag",
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
  "slug": "roundtripdag--8513a9bdea75ba37aa2d8e48",
  "source": {
    "blob": "3343ea97c2e7396cdd338074017ef78ea8d4ae5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8513a9bdea75ba37aa2d8e487f3bd32ebea734e3e685e7c08810dfa414ddda1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51a2f2a3f73b1e8d30ed3858d7fbf88f3e961c9d70ee688116855d037c4e50bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def roundtripDag : Dag :=
  let n1 := { id := ⟨"n1"⟩, expr := .const `True [] }
  let n2 := { id := ⟨"n2"⟩, expr := .const `True [] }
  let e1 := {
    id := ⟨"e1"⟩,
    from := ⟨"n1"⟩,
    to := ⟨"n2"⟩,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }
  { V := [n1, n2], E := [e1] }

/-- Encode a DAG to JSON string. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3343ea97c2e7396cdd338074017ef78ea8d4ae5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
