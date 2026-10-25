# getStructureCtor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3c9fdbf42037b03c76af1a56f2368635612a0b8e1dbd91cb2c5cc7e500aba5a",
  "kind": "def",
  "lexical_name": "getStructureCtor",
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
  "slug": "getstructurector--40ced7e2d2d1304eabef0465",
  "source": {
    "blob": "abd489a9ac6813ceaa5176d860866eb94f5fd566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40ced7e2d2d1304eabef04650bd99871cdbd06c01d25ad29306c24f2c5e7169a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3c9fdbf42037b03c76af1a56f2368635612a0b8e1dbd91cb2c5cc7e500aba5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getStructureCtor (env : Environment) (constName : Name) : ConstructorVal :=
  match env.find? constName with
  | some (.inductInfo { ctors := [ctorName], .. }) =>
    match env.find? ctorName with
    | some (ConstantInfo.ctorInfo val) => val
    | _ => panic! "ill-formed environment"
  | _ => panic! "structure expected"

/-- Gets the direct field names for the given structure, including subobject fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd489a9ac6813ceaa5176d860866eb94f5fd566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
