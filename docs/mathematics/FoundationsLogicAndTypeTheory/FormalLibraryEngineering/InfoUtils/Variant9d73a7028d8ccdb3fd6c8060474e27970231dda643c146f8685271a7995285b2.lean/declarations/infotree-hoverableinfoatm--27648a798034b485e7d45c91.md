# InfoTree.hoverableInfoAtM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d23a92489244a1a8e637b10b412f8251aa0fcbbc5ec99af00571f961054d679",
  "kind": "def",
  "lexical_name": "InfoTree.hoverableInfoAtM?",
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
  "slug": "infotree-hoverableinfoatm--27648a798034b485e7d45c91",
  "source": {
    "blob": "fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27648a798034b485e7d45c9112e8ef17408ec4f2f039889e42f4785e854e4f2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d23a92489244a1a8e637b10b412f8251aa0fcbbc5ec99af00571f961054d679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def InfoTree.hoverableInfoAtM? [Monad m] (t : InfoTree) (hoverPos : String.Pos.Raw) (includeStop := false)
    (filter : (ctx : ContextInfo) → (info : Info) → (children : PersistentArray InfoTree) →
      (results : List (HoverableInfoPrio × InfoWithCtx)) →
      m (List (HoverableInfoPrio × InfoWithCtx)) := fun _ _ _ results => pure results) :
    m (Option InfoWithCtx) := do
  let postNode ctx info children results : m (Option (HoverableInfoPrio × InfoWithCtx)) := do
    let results ← results.filterMap (fun r? => r?.join) |> filter ctx info children
    let maxPrio? := results.map (·.1) |>.max?
    let bestResult? := results.find? (·.1 == maxPrio?)
    if let some (prio, i) := bestResult? then
      -- Prefer innermost results
      return (prio, i)
    -- We skip `info` nodes associated with the `nullKind` and `withAnnotateState` because they are used by tactics (e.g. `rewrite`) to control
    -- which goal is displayed in the info views. See issue #1403.
    let isAuxInfo := info.stx.isOfKind nullKind
      || info.toElabInfo?.any (·.elaborator == `Lean.Elab.Tactic.evalWithAnnotateState)
    if isAuxInfo then
      return none
    let isEligibleInfoKind := info matches .ofFieldInfo _ | .ofOptionInfo _ | .ofErrorNameInfo _ || info.toElabInfo?.isSome
    let some r := info.stx.getRange? (canonicalOnly := true)
      | return none
    if ! r.contains hoverPos includeStop || ! isEligibleInfoKind then
      return none
    let priority : HoverableInfoPrio := {
      isHoverPosOnStop := r.stop == hoverPos
      size := r.start.byteDistance r.stop
      isVariableInfo := info matches .ofTermInfo { expr := .fvar .., .. }
      isPartialTermInfo := info matches .ofPartialTermInfo ..
    }
    let result := { ctx, info, children }
    return some (priority, result)
  let results ← t.visitM (m := m) (postNode := postNode)
  let bestResult? : Option InfoWithCtx := results.join.map (·.2)
  if let some bestResult := bestResult? then
    if let .ofTermInfo ti := bestResult.info then
      if ti.expr.isSyntheticSorry then
        return none
  return bestResult?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
