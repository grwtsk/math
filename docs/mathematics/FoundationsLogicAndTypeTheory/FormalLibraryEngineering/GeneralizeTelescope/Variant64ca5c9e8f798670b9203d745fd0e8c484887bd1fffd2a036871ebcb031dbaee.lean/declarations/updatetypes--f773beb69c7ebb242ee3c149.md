# updateTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4076d843f5e88f06ce2c915d9593142e9a17ad0904a84d6841a0d013e834dbfd",
  "kind": "def",
  "lexical_name": "updateTypes",
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
  "slug": "updatetypes--f773beb69c7ebb242ee3c149",
  "source": {
    "blob": "ca90554e4faae44c94d21b64186f9312d9ee23c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f773beb69c7ebb242ee3c14977bba537dc65e8b2505cff080ac51d57e546cb14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4076d843f5e88f06ce2c915d9593142e9a17ad0904a84d6841a0d013e834dbfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def updateTypes (e eNew : Expr) (entries : Array Entry) (i : Nat) : MetaM (Array Entry) :=
  if h : i < entries.size then
    let entry := entries[i]
    match entry with
    | ⟨_, type, _⟩ => do
      let typeAbst ← kabstract type e
      if typeAbst.hasLooseBVars then do
        let typeNew := typeAbst.instantiate1 eNew
        let entries := entries.set i { entry with type := typeNew, modified := true }
        updateTypes e eNew entries (i+1)
      else
        updateTypes e eNew entries (i+1)
  else
    pure entries

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca90554e4faae44c94d21b64186f9312d9ee23c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
