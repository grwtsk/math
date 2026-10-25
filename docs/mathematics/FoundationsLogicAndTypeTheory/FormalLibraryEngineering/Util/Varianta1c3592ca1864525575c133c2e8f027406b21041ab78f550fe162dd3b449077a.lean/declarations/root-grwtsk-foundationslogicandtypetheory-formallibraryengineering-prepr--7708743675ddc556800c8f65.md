# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.Lean.Expr.checkMaxShared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f808472117837326202e2f7cd8b3fbfaf50c0d7dde007d8b81737a7d0a1a34b2",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.Lean.Expr.checkMaxShared",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-prepr--7708743675ddc556800c8f65",
  "source": {
    "blob": "bab3c81872a33c859fe2b77cf2f38c0be683f5bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Varianta1c3592ca1864525575c133c2e8f027406b21041ab78f550fe162dd3b449077a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7708743675ddc556800c8f651f3559b0e389d6be392528f10270ba7fea3943e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Varianta1c3592ca1864525575c133c2e8f027406b21041ab78f550fe162dd3b449077a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f808472117837326202e2f7cd8b3fbfaf50c0d7dde007d8b81737a7d0a1a34b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.Lean.Expr.checkMaxShared (e : Expr) (msg := "") : SymM Unit := do
  e.forEach fun e => do
    if let some prev := (← get).share.set.find? { expr := e } then
      unless isSameExpr prev.expr e do
        throwNotMaxShared e
    else
      throwNotMaxShared e
where
  throwNotMaxShared (e : Expr) : SymM Unit := do
    let msg := if msg == "" then msg else s!"[{msg}] "
    throwError "{msg}term is not in the maximally shared table{indentExpr e}"

/-- Debug helper: throws if any subexpression of the goal's target type is not in the table of maximally shared. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Varianta1c3592ca1864525575c133c2e8f027406b21041ab78f550fe162dd3b449077a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Varianta1c3592ca1864525575c133c2e8f027406b21041ab78f550fe162dd3b449077a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab3c81872a33c859fe2b77cf2f38c0be683f5bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
