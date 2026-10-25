# resolveGlobalName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26fc1166ec118d8522198aa779ba54168c5bf3b28a8e64388af47ed9b9df871b",
  "kind": "def",
  "lexical_name": "resolveGlobalName",
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
  "slug": "resolveglobalname--c92179405163f415a9c4eecc",
  "source": {
    "blob": "b687cc6b3cb76fc6a2f6f726d494f46ea541614b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c92179405163f415a9c4eeccf167d6f25423d1bddaf98d36044a2c8dd04743ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26fc1166ec118d8522198aa779ba54168c5bf3b28a8e64388af47ed9b9df871b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveGlobalName (env : Environment) (opts : Options) (ns : Name) (openDecls : List OpenDecl) (id : Name) : List (Name × List String) :=
  -- decode macro scopes from name before recursion
  let extractionResult := extractMacroScopes id
  let rec loop (id : Name) (projs : List String) : List (Name × List String) :=
    match id with
    | .str p s =>
      -- NOTE: we assume that macro scopes always belong to the projected constant, not the projections
      let id := { extractionResult with name := id }.review
      match resolveUsingNamespace env opts id ns with
      | resolvedIds@(_ :: _) => resolvedIds.eraseDups.map fun id => (id, projs)
      | [] =>
        match resolveExact env opts id with
        | some newId => [(newId, projs)]
        | none =>
          let resolvedIds := if containsDeclOrReserved env id then [id] else []
          let resolvedIds := if let some idPrv := resolvePrivateName env opts id then [idPrv] ++ resolvedIds else resolvedIds
          let resolvedIds := resolveOpenDecls env opts id openDecls resolvedIds
          let resolvedIds := getAliases env id (skipProtected := id.isAtomic) ++ resolvedIds
          match resolvedIds with
          | _ :: _ => resolvedIds.eraseDups.map fun id => (id, projs)
          | []     => loop p (s::projs)
    | _ => []
  loop extractionResult.name []

/-! # Namespace resolution -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b687cc6b3cb76fc6a2f6f726d494f46ea541614b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
