# findInfoTree?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f794f5174bd2cac39b0196eb496bb2b1a05940426c6bfb6220c8233b4f2d880",
  "kind": "def",
  "lexical_name": "findInfoTree?",
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
  "slug": "findinfotree--412d4864502ca600bbc6737a",
  "source": {
    "blob": "91f4f795bbbcfa90d583aabacfd114820fd9bd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:412d4864502ca600bbc6737afe5a19bb3998572fd7fecec8337ee2d2f020b3ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f794f5174bd2cac39b0196eb496bb2b1a05940426c6bfb6220c8233b4f2d880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findInfoTree? (kind : SyntaxNodeKind) (tgtRange : Lean.Syntax.Range)
  (ctx? : Option ContextInfo) (t : InfoTree)
  (f : ContextInfo → Info → Bool) (canonicalOnly := false) :
    Option (ContextInfo × InfoTree) :=
  match t with
  | .context ctx t => findInfoTree? kind tgtRange (ctx.mergeIntoOuter? ctx?) t f canonicalOnly
  | node@(.node i ts) => do
    if let some ctx := ctx? then
      if let some range := i.stx.getRange? canonicalOnly then
        -- FIXME: info tree needs to be organized better so that this works
        -- guard <| range.includes tgtRange
        if i.stx.getKind == kind && range == tgtRange && f ctx i then
          return (ctx, node)
    for t in ts do
      if let some res := findInfoTree? kind tgtRange (i.updateContext? ctx?) t f canonicalOnly then
        return res
    none
  | _ => none

/--
A code action which calls all `@[command_code_action]` code actions on each command.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Variant6a4d58de2ecd7df9c2b659b092eae09035ad4aa123b092cf193217e720a243eb.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f4f795bbbcfa90d583aabacfd114820fd9bd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
