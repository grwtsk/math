# HaveTelescopeInfo.computeFixedUsed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a754cef0ec5c0a1a0ca5bd4ce392fd8e69729ded860b2b3dee2947ae2adcc109",
  "kind": "def",
  "lexical_name": "HaveTelescopeInfo.computeFixedUsed",
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
  "slug": "havetelescopeinfo-computefixedused--400afd96a4612bb8e93dc585",
  "source": {
    "blob": "4e020348ec2f18dbc5fa70001e85ec4b22868421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:400afd96a4612bb8e93dc58501e5f3776ad682b95bb83521bfa93cf5255aeadc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a754cef0ec5c0a1a0ca5bd4ce392fd8e69729ded860b2b3dee2947ae2adcc109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HaveTelescopeInfo.computeFixedUsed (info : HaveTelescopeInfo) (keepUnused : Bool) :
    MetaM (Array Bool × Array Bool) := do
  let fixed ← go info.bodyTypeDeps
  if keepUnused then
    return (fixed, #[])
  else
    let used ← go info.bodyDeps
    return (fixed, used)
where
  updateArrayFromBackDeps (arr : Array Bool) (s : Std.HashSet Nat) : Array Bool :=
    s.fold (init := arr) fun arr idx => arr.set! idx true
  go init : MetaM (Array Bool) := do
    let numHaves := info.haveInfo.size
    let mut used : Array Bool := Array.replicate numHaves false
    -- Initialize `used` with the body's dependencies.
    -- There is no need to consider `info.bodyTypeDeps` in this computation.
    used := updateArrayFromBackDeps used init
    -- For each used `have`, in reverse order, update `used`.
    for i in *...numHaves do
      let idx := numHaves - i - 1
      if used[idx]! then
        let hinfo := info.haveInfo[idx]!
        used := updateArrayFromBackDeps used hinfo.typeBackDeps
        used := updateArrayFromBackDeps used hinfo.valueBackDeps
    return used

/--
Auxiliary structure used to represent the return value of `simpHaveTelescopeAux`.
See `simpHaveTelescope` for an overview and `HaveTelescopeInfo` for an example.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e020348ec2f18dbc5fa70001e85ec4b22868421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
