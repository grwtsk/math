# fetchTransImportArts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f71366876f88cdff0e4b5eac227ca7b49841e8110263f5b1184fcc62b463e5af",
  "kind": "def",
  "lexical_name": "fetchTransImportArts",
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
  "slug": "fetchtransimportarts--ef6659323c6728de2617cf49",
  "source": {
    "blob": "3e86af6463090dc2137ba05b5b4fed84e5d42a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef6659323c6728de2617cf4961e324d2d819e5027ade9c3d837605fd077fd4ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f71366876f88cdff0e4b5eac227ca7b49841e8110263f5b1184fcc62b463e5af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def fetchTransImportArts
  (directImports : Array ModuleImport) (directArts : NameMap ImportArtifacts) (nonModule : Bool)
: FetchM (NameMap ImportArtifacts) := do
  let q ← directImports.foldrM (init := #[]) fun imp q => do
    let some mod := imp.module? | return q
    let input ← (← mod.input.fetch).await
    let importAll := strictOr nonModule imp.importAll
    return enqueue importAll imp.isMeta input q
  walk directArts {} q
where
  walk s (metaVisited : NameSet) (q : Array TransImportEntry) := do
    if h : 0 < q.size then
      let {mod, importAll, needsMeta} := q.back
      let q := q.pop
      if let some arts := s.find? mod.name then
        /-
        A module system `import` may need to be promoted to a
        wider import (`meta import`, `import all`) on another branch.
        -/
        -- Only re-process a module sitting at the plain public-module level: `.server` present =>
        -- module, no `.private` => not already `import all`. An entry already at `import all` (with
        -- `.private`) or a non-module (no `.server`) must not be re-inserted, as that would demote it.
        let needsMeta := needsMeta && !metaVisited.contains mod.name
        unless (importAll || needsMeta) && arts.oleanServer?.isSome && arts.oleanPrivate?.isNone do
          return ← walk s metaVisited q
      let info ← (← mod.exportInfo.fetch).await
      let arts := if importAll then info.allArts else info.arts
      let s := s.insert mod.name arts
      let metaVisited := if importAll || needsMeta then metaVisited.insert mod.name else metaVisited
      let input ← (← mod.input.fetch).await
      let q := enqueue importAll needsMeta input q
      walk s metaVisited q
    else
      return s
  enqueue importAll needsMeta input q :=
    input.imports.foldr (init := q) fun imp q =>
      if let some mod := imp.module? then
        let reachable := importAll || imp.isExported
        let importAll := nonModule || (importAll && imp.importAll)
        let needsMeta := needsMeta || (reachable && imp.isMeta)
        if reachable || needsMeta then
          q.push {mod, importAll, needsMeta}
        else q
      else q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e86af6463090dc2137ba05b5b4fed84e5d42a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
