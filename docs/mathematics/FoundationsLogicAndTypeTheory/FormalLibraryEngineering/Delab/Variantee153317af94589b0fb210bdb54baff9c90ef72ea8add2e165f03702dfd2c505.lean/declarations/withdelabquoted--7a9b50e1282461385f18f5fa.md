# withDelabQuoted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92775815c1b6e972157037428c958ebba9878c6ff6a83fe5812dec4d82552b7f",
  "kind": "def",
  "lexical_name": "withDelabQuoted",
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
  "slug": "withdelabquoted--7a9b50e1282461385f18f5fa",
  "source": {
    "blob": "274b4e6343799e3a51a6c71424ee85eeda888889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delab/Variantee153317af94589b0fb210bdb54baff9c90ef72ea8add2e165f03702dfd2c505.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a9b50e1282461385f18f5fa96155e62bfd24116cc88420bc847b0f96a980332",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delab/Variantee153317af94589b0fb210bdb54baff9c90ef72ea8add2e165f03702dfd2c505.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92775815c1b6e972157037428c958ebba9878c6ff6a83fe5812dec4d82552b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def withDelabQuoted (k : StateT UnquoteState DelabM Term) : Delab :=
  withIncRecDepth do
  StateT.run' (s := { mayPostpone := false }) <|
  show StateT UnquoteState DelabM Term from do
  unquoteLCtx
  let mut res ← k
  let showNested := `pp.qq._nested
  if (← getOptions).get showNested true then
    for fv in (← get).abstractedFVars.reverse do
      if let some (.quoted expr) := (← get).exprBackSubst[Expr.fvar fv]? then
      if let some decl := (← get).unquoted.find? fv then
      if (res.1.find? (·.getId == decl.userName)).isSome then
      if let some name := removeDollar decl.userName then
      let pos ← nextExtraPos
      res ← withTheReader SubExpr (fun _ => { expr, pos }) do
      withOptions (·.set showNested false) do
      `(let $(mkIdent name) := $(← delab); $res)
  return res

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delab/Variantee153317af94589b0fb210bdb54baff9c90ef72ea8add2e165f03702dfd2c505.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delab/Variantee153317af94589b0fb210bdb54baff9c90ef72ea8add2e165f03702dfd2c505.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274b4e6343799e3a51a6c71424ee85eeda888889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
