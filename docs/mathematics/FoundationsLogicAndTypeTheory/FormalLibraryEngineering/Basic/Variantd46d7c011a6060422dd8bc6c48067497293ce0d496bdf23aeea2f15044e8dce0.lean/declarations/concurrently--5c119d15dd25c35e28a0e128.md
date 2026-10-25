# concurrently

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47ac7b3510fe779587a6c8e1f8f9045b10da5f537856633d2ee62f01c3c66744",
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
  "slug": "concurrently--5c119d15dd25c35e28a0e128",
  "source": {
    "blob": "7f8106a4fab5a5754a6fc4b933d2b8ed7015692a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 524,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c119d15dd25c35e28a0e128d3e8bb04d229b5e6ec34f357438bb08266acb9c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47ac7b3510fe779587a6c8e1f8f9045b10da5f537856633d2ee62f01c3c66744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–536.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f8106a4fab5a5754a6fc4b933d2b8ed7015692a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
