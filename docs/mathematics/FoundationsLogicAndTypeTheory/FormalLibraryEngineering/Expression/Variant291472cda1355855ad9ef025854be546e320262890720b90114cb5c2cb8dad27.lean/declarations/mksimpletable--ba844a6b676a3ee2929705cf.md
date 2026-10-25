# mkSimpleTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b79649f7460e89a4b40e8aed2207e1b6120a1e2ccf9858bb1da28cb33b432098",
  "kind": "def",
  "lexical_name": "mkSimpleTable",
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
  "slug": "mksimpletable--ba844a6b676a3ee2929705cf",
  "source": {
    "blob": "9def4cb6714c8731dadad0aeeaf818463f899c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant291472cda1355855ad9ef025854be546e320262890720b90114cb5c2cb8dad27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba844a6b676a3ee2929705cfbe7f7047977dada72548591ed770ef2bcf0da964",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant291472cda1355855ad9ef025854be546e320262890720b90114cb5c2cb8dad27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b79649f7460e89a4b40e8aed2207e1b6120a1e2ccf9858bb1da28cb33b432098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkSimpleTable (items : Array Keyval) : Table :=
  items.foldl (init := {}) fun t ⟨kRef,k,v⟩ =>
    match k.components with
    | .nil => t
    | .cons k ks => insert t kRef k ks v
where
  simpVal : Value → Value
    | .table ref t => .table ref <| t.items.foldl (init := {}) fun t ⟨k,v⟩ =>
      match k.components with
      | .nil => t
      | .cons k ks => insert t ref k ks v
    | .array ref vs => .array ref <| vs.map simpVal
    | v => v
  insert t kRef k ks newV :=
    match ks with
    | .nil => t.alter k fun v? =>
      match v?, simpVal newV with
      | some (.table ref vt), .table _ newT => .table ref (vt ++ newT)
      | some (.array ref vs), .array _ newVs => .array ref (vs ++ newVs)
      | some (.array ref vs), newV => .array ref (vs.push newV)
      | _, newV => newV
    | k' :: ks => t.alter k fun v? =>
      if let some v := v? then
        match v with
        | .array ref vs =>
          .array ref <| vs.modify (vs.size - 1) fun
          | .table ref t' => .table ref <| insert t' kRef k' ks newV
          | _ => .table kRef {}
        | .table ref t' => .table ref <| insert t' kRef k' ks newV
        | _ => .table kRef <| insert {} kRef k' ks newV
      else
        .table kRef <| insert {} kRef k' ks newV

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant291472cda1355855ad9ef025854be546e320262890720b90114cb5c2cb8dad27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant291472cda1355855ad9ef025854be546e320262890720b90114cb5c2cb8dad27.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9def4cb6714c8731dadad0aeeaf818463f899c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
