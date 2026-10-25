# validate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bccb3741e2ae2db60bf0f71f116312fabfb73968a1951f6c443982f0f0879a5",
  "kind": "def",
  "lexical_name": "validate",
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
  "slug": "validate--cd21ee45d147be677b43316f",
  "source": {
    "blob": "9b56611a545ea0b0831bd0abf2763f8a8a5d8fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatchValidateMain/Variantfff9604acaf0a6d8e5b55e817778719312ec040add5a361a831e54c5a41ac588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd21ee45d147be677b43316f0c004f2771ae5225e19297ff7046f7c921e8ff67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatchValidateMain/Variantfff9604acaf0a6d8e5b55e817778719312ec040add5a361a831e54c5a41ac588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bccb3741e2ae2db60bf0f71f116312fabfb73968a1951f6c443982f0f0879a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validate (json : Json) : List String :=
  let schemaErrors :=
    if stringField? json "schema" = some bundleSchema then []
    else ["INVALID_SCHEMA: expected surface.lean-patch-bundle.v1"]
  let authorityErrors :=
    if stringField? json "authority" = some "modelProposed" then []
    else ["MODEL_AUTHORITY_ERROR: authority must be modelProposed"]
  let hashErrors :=
    let projectPresent := match json.getObjVal? "projectFingerprint" with
      | .ok value => value != Json.null
      | .error _ => false
    let taskPresent := match json.getObjVal? "task" with
      | .ok value => value != Json.null
      | .error _ => false
    if projectPresent && taskPresent then []
    else ["INVALID_REQUEST: task and projectFingerprint are required"]
  let operationValidation :=
    match operations? json with
    | none => ["INVALID_REQUEST: operations must be an array"]
    | some operations =>
        let boundErrors :=
          if operations.isEmpty || operations.size > 3 then
            ["INVALID_REQUEST: operations must contain between one and three edits"]
          else []
        boundErrors ++ operations.toList.flatMap operationErrors
  schemaErrors ++ authorityErrors ++ hashErrors ++ operationValidation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatchValidateMain/Variantfff9604acaf0a6d8e5b55e817778719312ec040add5a361a831e54c5a41ac588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatchValidateMain/Variantfff9604acaf0a6d8e5b55e817778719312ec040add5a361a831e54c5a41ac588.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b56611a545ea0b0831bd0abf2763f8a8a5d8fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
