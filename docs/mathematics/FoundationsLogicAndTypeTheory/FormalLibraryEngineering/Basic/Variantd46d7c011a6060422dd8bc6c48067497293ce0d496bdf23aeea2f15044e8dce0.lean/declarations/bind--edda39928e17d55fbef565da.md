# bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8848c3b25fd88170271c1df8c26c05ba7ca7edd86910a0998f59778fda018bb9",
  "kind": "def",
  "lexical_name": "bind",
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
  "slug": "bind--edda39928e17d55fbef565da",
  "source": {
    "blob": "7f8106a4fab5a5754a6fc4b933d2b8ed7015692a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 445,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edda39928e17d55fbef565da54e02c2a59cc460bdac51327fcbeda8dd335623a",
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

Occurrence: `declaration:8848c3b25fd88170271c1df8c26c05ba7ca7edd86910a0998f59778fda018bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def bind (self : BaseAsync α) (f : α → BaseAsync β) (prio := Task.Priority.default) (sync := false) : BaseAsync β :=
  mk <| self.toRawBaseIO >>= (bindAsyncTask · f |>.toRawBaseIO)
where
  bindAsyncTask (t : MaybeTask α) (f : α → BaseAsync β) : BaseAsync β := .mk <|
    match t with
    | .pure a => (f a) |>.toRawBaseIO
    | .ofTask t => .ofTask <$> BaseIO.bindTask t (fun a => MaybeTask.toTask <$> (f a |>.toRawBaseIO)) prio sync

/--
Lifts a `BaseIO` action into a `BaseAsync` computation.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f8106a4fab5a5754a6fc4b933d2b8ed7015692a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
