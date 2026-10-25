# Info.docString?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1a0935f2eed946de7dd187f26591d6e2cad13fe27da6d290168f7f8df1820ed",
  "kind": "def",
  "lexical_name": "Info.docString?",
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
  "slug": "info-docstring--bb7549e8d6f80ed8cc682b33",
  "source": {
    "blob": "fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb7549e8d6f80ed8cc682b338c45d73d2a717d6d5d12a8038f569e83644039f1",
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

Occurrence: `declaration:f1a0935f2eed946de7dd187f26591d6e2cad13fe27da6d290168f7f8df1820ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Info.docString? (i : Info) : MetaM (Option String) := do
  match i with
  | .ofTermInfo ti =>
    if let some n := ti.expr.constName? then
      return (← findMarkdownDocString? n)
  | .ofDelabTermInfo ti =>
    if let some doc ← ti.docString? (← Meta.getPPContext) then
      return doc
    else if let some n := ti.expr.constName? then
      return (← findMarkdownDocString? n)
  | .ofFieldInfo fi => return ← findMarkdownDocString? fi.projName
  | .ofOptionInfo oi =>
    if let some doc ← findMarkdownDocString? oi.declName then
      return doc
    if let some decl := (← getOptionDecls).find? oi.optionName then
      return decl.fullDescr
    return none
  | .ofErrorNameInfo eni => do
    let some errorExplanation ← getErrorExplanation? eni.errorName | return none
    return errorExplanation.summaryWithSeverity
  | .ofDocInfo di =>
    return (← findMarkdownDocString? di.stx.getKind)
  | .ofDocElabInfo dei =>
    return (← findMarkdownDocString? dei.name)
  | _ => pure ()
  if let some ei := i.toElabInfo? then
    return ← findMarkdownDocString? ei.stx.getKind <||> findMarkdownDocString? ei.elaborator
  return none

/-- Construct a hover popup, if any, from an info node in a context.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
