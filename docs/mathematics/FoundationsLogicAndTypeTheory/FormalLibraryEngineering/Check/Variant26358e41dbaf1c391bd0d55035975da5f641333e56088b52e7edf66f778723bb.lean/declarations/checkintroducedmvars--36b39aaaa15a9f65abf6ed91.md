# checkIntroducedMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaa22e4831d102057d6d38e125ed6d7c19c46871bea71619df87cd41e5c2afbe",
  "kind": "def",
  "lexical_name": "checkIntroducedMVars",
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
  "slug": "checkintroducedmvars--36b39aaaa15a9f65abf6ed91",
  "source": {
    "blob": "3469c7a1357d471e36988d02f8f2f3e0aa4aace1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36b39aaaa15a9f65abf6ed91fe53d80f58e671fdd94450971ceec4e684947209",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaa22e4831d102057d6d38e125ed6d7c19c46871bea71619df87cd41e5c2afbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkIntroducedMVars (root : MVarClusterRef)
    (rootMetaState : Meta.SavedState) : MetaM Unit := do
  let declaredAtRoot : Std.HashSet MVarId :=
    rootMetaState.meta.mctx.decls.foldl (init := ∅) λ acc mvarId _ =>
      acc.insert mvarId
  let introducedMVarsRef ← IO.mkRef declaredAtRoot
  preTraverseDown
    (λ gref => do
      for mvarId in (← gref.get).mvars do
        unless (← introducedMVarsRef.get).contains mvarId do
          throwError "{Check.tree.name}: at goal {(← gref.get).id}: no introducing rapp found for mvarId {mvarId.name}"
      return true)
    (λ rref => do
      let introduced := (← rref.get).introducedMVars
      introducedMVarsRef.modify λ mvars => mvars.insertMany introduced
      return true)
    (λ _ => return true)
    (.mvarCluster root)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3469c7a1357d471e36988d02f8f2f3e0aa4aace1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
