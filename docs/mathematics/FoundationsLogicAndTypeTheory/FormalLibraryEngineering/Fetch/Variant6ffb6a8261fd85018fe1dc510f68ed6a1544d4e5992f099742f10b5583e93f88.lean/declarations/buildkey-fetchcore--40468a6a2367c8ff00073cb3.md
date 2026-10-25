# BuildKey.fetchCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df373a5e40045217838ca57d95e59863b4aff44909207f4c0a31dfd26bc64caa",
  "kind": "def",
  "lexical_name": "BuildKey.fetchCore",
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
  "slug": "buildkey-fetchcore--40468a6a2367c8ff00073cb3",
  "source": {
    "blob": "aae2fdaf28df467cb73d52b3b7234df501435ea1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40468a6a2367c8ff00073cb3788bad5ae033b0f088cb4ebdb6cf3f14aec73cea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df373a5e40045217838ca57d95e59863b4aff44909207f4c0a31dfd26bc64caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BuildKey.fetchCore
  (self : BuildKey)
: FetchM (Job (BuildData self)) :=
  match self with
  | module modName => do
    let some mod ← findModule? modName
      | error s!"invalid target '{root}': module '{modName}' not found in workspace"
    return cast (by simp) <| Job.pure mod
  | package pkgName => do
    let some pkg ← findPackageByKey? pkgName
      | error s!"invalid target '{root}': package '{pkgName}' not found in workspace"
    return cast (by simp) <| Job.pure pkg.toPackage
  | packageModule pkgName modName => do
    let some pkg ← findPackageByKey? pkgName
      | error s!"invalid target '{root}': package '{pkgName}' not found in workspace"
    let some mod := pkg.findTargetModule? modName
      | error s!"invalid target '{root}': module '{modName}' not found in package '{pkg.prettyName}'"
    return cast (by simp) <| Job.pure mod
  | packageTarget pkgName target => do
    let some pkg ← findPackageByKey? pkgName
      | error s!"invalid target '{root}': package '{pkgName}' not found in workspace"
    fetch <| pkg.target target
  | facet target facetName => do
      let job ← target.fetchCore
      let kind := job.kind
      if h : kind.isAnonymous then
        error s!"invalid target '{self}': targets of opaque data kinds do not support facets"
      else
        let some cfg := (← getWorkspace).findFacetConfig? facetName
          | error s!"invalid target '{root}': unknown facet '{facetName}'"
        (job.cast h).bindM (kind := cfg.outKind) fun data =>
          fetch (.facet target kind data facetName)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aae2fdaf28df467cb73d52b3b7234df501435ea1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
