# mkBelowInductives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:210c22588a4503823d41c8f5ba4a950a09107112d7028ad5e0e423df1bd51b46",
  "kind": "def",
  "lexical_name": "mkBelowInductives",
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
  "slug": "mkbelowinductives--6d260d074d67d3485715edec",
  "source": {
    "blob": "e7b0240e5c7d53163b28ee2991edb0d61b70eaef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d260d074d67d3485715edecf59858a13e481f2bc339dbb0274ad2483116ef0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:210c22588a4503823d41c8f5ba4a950a09107112d7028ad5e0e423df1bd51b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBelowInductives (ctx : Context) : MetaM Unit := do
  let nmotives := ctx.motives.size
  let mut minorIdx := 0
  let mut inducts := #[]
  for i in *...nmotives do
    let (newIdx, ind) ← mkBelowInductive i minorIdx ctx
    inducts := inducts.push ind
    minorIdx := newIdx
  let nparams := ctx.params.size + ctx.motives.size
  Lean.addDecl <| .inductDecl ctx.levelParams nparams inducts.toList false
  for b in ctx.belowNames do
    Lean.mkCasesOn b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b0240e5c7d53163b28ee2991edb0d61b70eaef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
