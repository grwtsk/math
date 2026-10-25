# DeclNeeds.calcIRNeeds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f7c05e294278a31aae50c62be0b69a57438dc1f772b3d7388b38170bb08bacb",
  "kind": "def",
  "lexical_name": "DeclNeeds.calcIRNeeds",
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
  "slug": "declneeds-calcirneeds--36aedb5f9a82c534b9fa89fe",
  "source": {
    "blob": "fa42e630e9f72637f0213ee564c99d66349ebfec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 692,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36aedb5f9a82c534b9fa89fef22c53dd442cafb5f1dc403bef266ac68f6a5ff3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f7c05e294278a31aae50c62be0b69a57438dc1f772b3d7388b38170bb08bacb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DeclNeeds.calcIRNeeds (declNeeds : DeclNeeds) : StanceM DeclNeeds := do
  let mut declNeeds := declNeeds
  for (decl, _) in declNeeds do
    withTraceNode `ImportGraph.Shake
      (fun _ => return m!"Calculating IR needs for {.ofConstName decl}") do←
    let some stance ← getStance? decl | continue
    if let some isMeta := stance.isMeta then
      -- TODO: handle `isMeta = some true`
      if isMeta then
        trace[ImportGraph.Shake] "Skipping meta definition (for now)"
        continue
      try
        let lcnf ← (Compiler.LCNF.toDecl decl).run
        let (_, declNeeds') ← StateT.run (s := declNeeds) <| lcnf.value.forCodeM fun code =>
          for ref in collectUsedDecls code do
            -- TODO: should we check the refstance here?
            -- SQ: Is .all lifted up into .comptime under meta import, for e.g. constructors,
            -- rendering using them unacceptable...?
            if let some modIdx := (← getEnv).getModuleIdxFor? ref then
              let modName := (← getEnv).header.modules[modIdx]!.module
              trace[ImportGraph.Shake] "uses `{.ofConstName ref}` from `{modName}`"
              modify (·.insertFixedDeclFor decl .runtimeIR modName ref)
            else if (← getEnv).contains ref then -- just in case
              trace[ImportGraph.Shake] "uses `{.ofConstName ref}` from current module"
              modify (·.insertFreeDeclFor decl .runtimeIR ref)
            -- TODO: recurse
        declNeeds := declNeeds'
      catch ex =>
        trace[ImportGraph.Shake] "`{.ofConstName ``toDecl} {.ofConstName decl}` failed:\
          {indentD ex.toMessageData}"
  return declNeeds

open Lean Elab Command in
/-- Elaborates the command and captures the `DeclNeeds` of all new declarations. Attaches the needs
implied by the command's syntax to each new declaration. Note: does **not** capture extra rev mod
uses influencing the file as a whole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa42e630e9f72637f0213ee564c99d66349ebfec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
