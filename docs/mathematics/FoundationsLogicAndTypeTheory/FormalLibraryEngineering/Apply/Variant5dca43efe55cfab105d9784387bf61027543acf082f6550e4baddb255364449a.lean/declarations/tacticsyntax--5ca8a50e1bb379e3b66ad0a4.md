# tacticSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6419f4dc89c18385d627e51f640954e9788bad645698a4bc9eee569835dce2b",
  "kind": "def",
  "lexical_name": "tacticSyntax",
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
  "slug": "tacticsyntax--5ca8a50e1bb379e3b66ad0a4",
  "source": {
    "blob": "223fb24b9564959d7a348f25cacc8fc33d02c30b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant5dca43efe55cfab105d9784387bf61027543acf082f6550e4baddb255364449a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ca8a50e1bb379e3b66ad0a4f7fa649cb24bcb476234933d454f5cdf2ab45ced",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant5dca43efe55cfab105d9784387bf61027543acf082f6550e4baddb255364449a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6419f4dc89c18385d627e51f640954e9788bad645698a4bc9eee569835dce2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tacticSyntax (lemmaName : Premise) (proof : Expr) (isClosing justLemmaName : Bool) :
    MetaM (TSyntax `tactic) := do
  if justLemmaName then
    let id := mkIdent (← lemmaName.unresolveName)
    -- We can only use `exact` instead of `apply` if the proof has no explicit arguments.
    if ← pure isClosing <&&> hasOnlyImplicitArgs proof then
      `(tactic| exact $id)
    else
      `(tactic| apply $id)
  else
    let proof ← withOptions (pp.mvars.set · false) (PrettyPrinter.delab proof)
    if isClosing then
      `(tactic| exact $proof)
    else
      `(tactic| refine $proof)
where
  hasOnlyImplicitArgs (e : Expr) : MetaM Bool := do
    let info ← getFunInfoNArgs e.getAppFn e.getAppNumArgs
    return !info.paramInfo.any (·.binderInfo.isExplicit)

/-- Generate the suggestion for applying `lem`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant5dca43efe55cfab105d9784387bf61027543acf082f6550e4baddb255364449a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant5dca43efe55cfab105d9784387bf61027543acf082f6550e4baddb255364449a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `223fb24b9564959d7a348f25cacc8fc33d02c30b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
