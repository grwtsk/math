# concurrently

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cd9b42850eea5dc8e4c04eac03b24ea85060ad040001010066252875ed4919b",
  "kind": "def",
  "lexical_name": "concurrently",
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
  "slug": "concurrently--ff7e7812915237e4e4257b9e",
  "source": {
    "blob": "2a8d4c5cacda3cd78aff0809fbe6ee07fb23e53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 516,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0651c4b7bc0b06489260af9064f567e042e734fe7910586f182081b726eaff39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff7e7812915237e4e4257b9eba18e79919fe4d4d5094ce0e845069c5429155bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0651c4b7bc0b06489260af9064f567e042e734fe7910586f182081b726eaff39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cd9b42850eea5dc8e4c04eac03b24ea85060ad040001010066252875ed4919b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def concurrently (x : BaseAsync α) (y : BaseAsync β) (prio := Task.Priority.default) : BaseAsync (α × β) := do
  let taskX : Task _ ← MonadAsync.async x (prio := prio)
  let taskY : Task _ ← MonadAsync.async y (prio := prio)
  let resultX ← MonadAwait.await taskX
  let resultY ← MonadAwait.await taskY
  return (resultX, resultY)

/--
Runs two computations concurrently and returns the result of the one that finishes first.
The other result is lost and the other task is not cancelled, so the task will continue the execution
until the end.
-/
@[inline, specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0651c4b7bc0b06489260af9064f567e042e734fe7910586f182081b726eaff39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0651c4b7bc0b06489260af9064f567e042e734fe7910586f182081b726eaff39.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8d4c5cacda3cd78aff0809fbe6ee07fb23e53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
