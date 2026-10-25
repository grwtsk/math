# InfoTree.deepestNodesM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5d0bab040618b952b95091791d9242ff26edf3d68a70316c2d743a7c4dd6aa9",
  "kind": "def",
  "lexical_name": "InfoTree.deepestNodesM",
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
  "slug": "infotree-deepestnodesm--e10faeb17749b0750679629f",
  "source": {
    "blob": "fb0304c8f9114f65df16c25b2ae77ec110b6afe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e10faeb17749b0750679629f79005c90f718d905fc12bceed7b81002fa9822c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5d0bab040618b952b95091791d9242ff26edf3d68a70316c2d743a7c4dd6aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def InfoTree.deepestNodesM [Monad m] (p : ContextInfo → Info → PersistentArray InfoTree → m (Option α)) (infoTree : InfoTree) : m (List α) :=
  infoTree.collectNodesBottomUpM fun ctx i cs rs => do
    if rs.isEmpty then
      match ← p ctx i cs with
      | some r => return [r]
      | none   => return []
    else
      return rs

/--
  For every branch of the `InfoTree`, find the deepest node in that branch for which `p` returns
  `some _`  and return the union of all such nodes. The visitor `p` is given a node together with
  its innermost surrounding `ContextInfo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0304c8f9114f65df16c25b2ae77ec110b6afe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
