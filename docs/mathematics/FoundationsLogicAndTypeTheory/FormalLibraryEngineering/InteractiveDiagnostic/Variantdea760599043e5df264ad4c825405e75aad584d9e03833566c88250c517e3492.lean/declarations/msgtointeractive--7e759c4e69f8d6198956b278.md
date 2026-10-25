# msgToInteractive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45d19b7ee9b52a29af99bfe49fac0e322d0e61020c704d591a35fe891578f246",
  "kind": "def",
  "lexical_name": "msgToInteractive",
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
  "slug": "msgtointeractive--7e759c4e69f8d6198956b278",
  "source": {
    "blob": "b416041049cc11a2238454238f74c81fd864a083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e759c4e69f8d6198956b278096d2ec532e963efaf16c56ea022603fcb31e8d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45d19b7ee9b52a29af99bfe49fac0e322d0e61020c704d591a35fe891578f246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def msgToInteractive (msgData : MessageData) (hasWidgets : Bool) (indent : Nat := 0) : IO InteractiveMessage := do
  if !hasWidgets then
    return (TaggedText.prettyTagged (← msgData.format)).rewrite fun _ tt => .text tt.stripTags
  let (fmt, embeds) ← msgToInteractiveAux msgData
  let rec fmtToTT (fmt : Format) (indent : Nat) : IO InteractiveMessage :=
    (TaggedText.prettyTagged fmt indent).rewriteM fun (n, col) tt =>
      match embeds[n]! with
        | .code ctx infos => do
          return .tag (.expr (← tagCodeInfos ctx infos tt)) default
        | .goal ctx lctx g =>
          ctx.runMetaM lctx do
            return .tag (.goal (← goalToInteractive g)) default
        | .widget wi alt =>
          return .tag (.widget wi (← fmtToTT alt col)) default
        | .trace cls msg collapsed children => do
          -- absolute column = request-level indentation (e.g. from nested lazy trace request) +
          -- offset inside `fmt`
          let col := indent + col
          let children ←
            match children with
              | .lazy children => pure <| .lazy <| ← WithRpcRef.mk {
                  indent := col+2
                  children := ← children.mapM (WithRpcRef.mk ·)
                }
              | .strict children => pure <| .strict (← children.mapM (fmtToTT · (col+2)))
          return .tag (.trace indent cls (← fmtToTT msg col) collapsed children) default
        | .ignoreTags => return .text tt.stripTags
  fmtToTT fmt indent

/-- Transform a Lean Message concerning the given text into an LSP Diagnostic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b416041049cc11a2238454238f74c81fd864a083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
