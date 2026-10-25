# visitDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c538fec123cba0eb41cb1dbf2245d7d19919c8b14fd95b16ac925cf09a27579e",
  "kind": "def",
  "lexical_name": "visitDecl",
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
  "slug": "visitdecl--75b7e0eedbe49266a0565d9f",
  "source": {
    "blob": "db2da15bb34b8609c85689c1f123aeed8e9d32b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantb1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75b7e0eedbe49266a0565d9fc0660b39b21d45fd1e24a6494f90d181d5d2e075",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantb1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c538fec123cba0eb41cb1dbf2245d7d19919c8b14fd95b16ac925cf09a27579e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visitDecl (d : Decl) : M Unit := do
  match d with
  | .fdecl (f := f) (body := b) .. =>
    match (← get).localSorryMap.find? f with
    | some _ => return ()
    | none =>
      match (← visitFnBody b |>.run) with
      | .ok _    => return ()
      | .error g =>
        modify fun s => {
          localSorryMap := s.localSorryMap.insert f g
          modified      := true
        }
  | _ => return ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantb1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantb1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2da15bb34b8609c85689c1f123aeed8e9d32b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
