# processLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39d68bec3f70317cf6a5c47f1ed660de624f7e81ae839443d23916d4130dc1ee",
  "kind": "def",
  "lexical_name": "processLemma",
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
  "slug": "processlemma--657caff27a98744acf5a8284",
  "source": {
    "blob": "9526a4826dc2d07f7a058e26812a74db8a681f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:657caff27a98744acf5a8284ddf94bc1d3ca2d714832dcdf7cc3f9b387b5be22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39d68bec3f70317cf6a5c47f1ed660de624f7e81ae839443d23916d4130dc1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processLemma (name : Name) (constInfo : ConstantInfo) :
    MetaM (Array (Array (DiscrTree.Key true) × (Name × DeclMod))) := do
  if constInfo.isUnsafe then return #[]
  if ← name.isBlackListed then return #[]
  withNewMCtxDepth do withReducible do
    let (_, _, type) ← forallMetaTelescope constInfo.type
    let keys ← DiscrTree.mkPath type
    let mut r := #[(keys, (name, .none))]
    match type.getAppFnArgs with
    | (``Iff, #[lhs, rhs]) => do
      return r.push (← DiscrTree.mkPath rhs, (name, .mp))
        |>.push (← DiscrTree.mkPath lhs, (name, .mpr))
    | _ => return r

/-- Insert a lemma into the discrimination tree. -/
-- Recall that `apply?` caches the discrimination tree on disk.
-- If you are modifying this file, you will probably want to delete
-- `build/lib/MathlibExtras/LibrarySearch.extra`
-- so that the cache is rebuilt.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9526a4826dc2d07f7a058e26812a74db8a681f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
