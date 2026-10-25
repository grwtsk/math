# contextOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5819b25fb215642b6299e49e7943535efd9337486ebc1acb71b2ec8ecf16baa",
  "kind": "def",
  "lexical_name": "contextOf",
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
  "slug": "contextof--df59449c31c96fb0ae1f77e3",
  "source": {
    "blob": "7cf1d0807bcb73dc1e1c0899c9093b6bea3df7a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommandState/Variante8fc270abadd3e164a0b7b9eb432c3bdd4a511ae3748d72ff0e821c400525862.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df59449c31c96fb0ae1f77e3fa29c66c83f59e28bb859360c809d67b0d0b391f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommandState/Variante8fc270abadd3e164a0b7b9eb432c3bdd4a511ae3748d72ff0e821c400525862.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5819b25fb215642b6299e49e7943535efd9337486ebc1acb71b2ec8ecf16baa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contextOf (state : Elab.Command.State) : RawContext :=
  let scope := state.scopes.head!
  {
    scopeHeaders := state.scopes.reverse.toArray.map (·.header)
    currentNamespace := scope.currNamespace.toString
    openDeclarations := sorted (scope.openDecls.toArray.map toString)
    options := optionRecords scope.opts
    universeNames := scope.levelNames.toArray.map Name.toString
    variableBinders := scope.varDecls.map fun binder => binder.raw.reprint.getD ""
    includedVariables := scope.includedVars.toArray.map Name.toString
    omittedVariables := scope.omittedVars.toArray.map Name.toString
    attributes := scope.attrs.toArray.map fun attr => attr.raw.reprint.getD ""
    isNoncomputable := scope.isNoncomputable
    autoImplicit := scope.opts.get `autoImplicit true
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommandState/Variante8fc270abadd3e164a0b7b9eb432c3bdd4a511ae3748d72ff0e821c400525862.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommandState/Variante8fc270abadd3e164a0b7b9eb432c3bdd4a511ae3748d72ff0e821c400525862.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf1d0807bcb73dc1e1c0899c9093b6bea3df7a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
