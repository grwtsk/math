# getIndirectModUses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d13097f1c0ee5ce5f25a41b0ebd4372a566ee332ea37ed470f33c5530e6b5e1e",
  "kind": "def",
  "lexical_name": "getIndirectModUses",
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
  "slug": "getindirectmoduses--3fe3ceaeea838093ef828780",
  "source": {
    "blob": "34069cafc5045084e03030f1c0103aab6d3fe2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fe3ceaeea838093ef8287807389c4df0ebdba158c22b518cbf0fd1f8e437a5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d13097f1c0ee5ce5f25a41b0ebd4372a566ee332ea37ed470f33c5530e6b5e1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getIndirectModUses (env : Environment) (modIdx : ModuleIdx) : Array IndirectModUse :=
  indirectModUseExt.getModuleEntries env modIdx

variable [Monad m] [MonadEnv m] [MonadTrace m] [MonadOptions m] [MonadRef m] [AddMessageContext m]

/--
Lets `shake` know that references to `declName` may also require importing the current module due to
some additional metaprogramming dependency expressed by `kind`. Currently this is always the name of
an attribute applied to `declName`, which is not from the current module, in the current module.
`kind` is not currently used to further filter what references to `declName` require importing the
current module but may in the future.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34069cafc5045084e03030f1c0103aab6d3fe2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
