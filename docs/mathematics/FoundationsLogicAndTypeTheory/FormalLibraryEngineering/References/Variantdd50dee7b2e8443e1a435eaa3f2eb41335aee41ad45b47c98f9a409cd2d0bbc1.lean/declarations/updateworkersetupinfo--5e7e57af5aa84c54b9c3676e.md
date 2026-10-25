# updateWorkerSetupInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eda2eb076851df8b7f23076193a6e81ec86a80c2e5a0410f5f4945031c80b52",
  "kind": "def",
  "lexical_name": "updateWorkerSetupInfo",
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
  "slug": "updateworkersetupinfo--5e7e57af5aa84c54b9c3676e",
  "source": {
    "blob": "02c4ff28d6483dcaba096f1bed2f267cb157add6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 580,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variantdd50dee7b2e8443e1a435eaa3f2eb41335aee41ad45b47c98f9a409cd2d0bbc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e7e57af5aa84c54b9c3676e02165c56e17a0728deecc815ef0f4f82b0be80d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variantdd50dee7b2e8443e1a435eaa3f2eb41335aee41ad45b47c98f9a409cd2d0bbc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eda2eb076851df8b7f23076193a6e81ec86a80c2e5a0410f5f4945031c80b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateWorkerSetupInfo
    (self           : References)
    (name           : Name)
    (moduleUri      : DocumentUri)
    (version        : Nat)
    (directImports  : Array ImportInfo)
    (isSetupFailure : Bool)
    : IO References := do
  let directImports ← DirectImports.convertImportInfos directImports
  let isSetupFailure? := some isSetupFailure
  let some workerRefs := self.workers[name]?
    | return { self with workers := self.workers.insert name { moduleUri, version, directImports, isSetupFailure?, refs := ∅, decls := ∅} }
  match compare version workerRefs.version with
  | .lt => return self
  | .gt => return { self with workers := self.workers.insert name { moduleUri, version, directImports, isSetupFailure?, refs := ∅, decls := ∅} }
  | .eq =>
    let refs := workerRefs.refs
    let decls := workerRefs.decls
    return { self with
      workers := self.workers.insert name { moduleUri, version, directImports, isSetupFailure?, refs, decls }
    }

/--
Updates the worker references in `self` with the `refs` of the worker managing the module `name`.
Replaces the current references with `refs` if `version` is newer than the current version managed
in `refs` and otherwise merges the reference data if `version` is equal to the current version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variantdd50dee7b2e8443e1a435eaa3f2eb41335aee41ad45b47c98f9a409cd2d0bbc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variantdd50dee7b2e8443e1a435eaa3f2eb41335aee41ad45b47c98f9a409cd2d0bbc1.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02c4ff28d6483dcaba096f1bed2f267cb157add6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
