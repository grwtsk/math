# Semaphore.release

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58902cd680db31aeff5757c829263a21b5d59d16cfce1afdd6b5408269bcfd9b",
  "kind": "def",
  "lexical_name": "Semaphore.release",
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
  "slug": "semaphore-release--c21ec991f4a7b1eadb9471b9",
  "source": {
    "blob": "d5ba7d526b9a7f498f16a67f682a63680c310264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c21ec991f4a7b1eadb9471b9adddb5fdb4ad143d5f6c237f61d68a05588d0505",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58902cd680db31aeff5757c829263a21b5d59d16cfce1afdd6b5408269bcfd9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Semaphore.release (sem : Semaphore) : BaseIO Unit := do
  let waiter? ← sem.lock.atomically do
    let st ← get
    match st.waiters.dequeue? with
    | some (waiter, waiters) =>
      set { st with waiters }
      return some waiter
    | none =>
      set { st with permits := st.permits + 1 }
      return none
  if let some waiter := waiter? then
    waiter.resolve ()

/--
Returns the number of currently available permits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ba7d526b9a7f498f16a67f682a63680c310264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
