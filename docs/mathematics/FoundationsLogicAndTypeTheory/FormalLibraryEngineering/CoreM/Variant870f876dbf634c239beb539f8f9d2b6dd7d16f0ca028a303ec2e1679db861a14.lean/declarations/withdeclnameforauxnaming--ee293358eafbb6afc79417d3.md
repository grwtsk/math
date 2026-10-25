# withDeclNameForAuxNaming

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ca6c3820b6ee6643dd2c4813b90c2159d8453f1bb81b6bb37e8a359b33f0695",
  "kind": "def",
  "lexical_name": "withDeclNameForAuxNaming",
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
  "slug": "withdeclnameforauxnaming--ee293358eafbb6afc79417d3",
  "source": {
    "blob": "a75d34fb9fbe65d51a9a4bb81d4247d6ee43e159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee293358eafbb6afc79417d3f77a679c9c63c56c65a5413c45a1323b7a769f51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ca6c3820b6ee6643dd2c4813b90c2159d8453f1bb81b6bb37e8a359b33f0695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withDeclNameForAuxNaming [Monad m] [MonadFinally m] [MonadDeclNameGenerator m]
    (name : Name) (x : m α) : m α := do
  let ngen ← getDeclNGen
  -- do not reset index if prefix unchanged
  if ngen.namePrefix != name then
    try
      setDeclNGen { namePrefix := name }
      x
    finally
      setDeclNGen ngen
  else
    x

namespace Core

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75d34fb9fbe65d51a9a4bb81d4247d6ee43e159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
