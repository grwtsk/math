# dabstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be707e6b62fa8ea23dfceb82f417172b69d28e061f5fae6f518e334f1a7c4e1d",
  "kind": "def",
  "lexical_name": "dabstract",
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
  "slug": "dabstract--d7b06b8e45706a4e71e81cd4",
  "source": {
    "blob": "e4dc03eb2cfa05a889ed6ca7220294b6cc436019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 406,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7b06b8e45706a4e71e81cd4bc2dcb2d32389be5aea5cebe622848bd14997e82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be707e6b62fa8ea23dfceb82f417172b69d28e061f5fae6f518e334f1a7c4e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dabstract (e : Expr) (p : Expr) (cfg : DepRewrite.Config) : MetaM Expr := do
  let e ← instantiateMVars e
  let tp ← inferType p
  withTraceNode traceCls (fun
    -- Message shows unified pattern (without mvars) b/c it is constructed after the body runs
    | .ok motive => pure m!"{e} =[x/{p}]=> {motive}"
    | .error (err : Lean.Exception) => pure m!"{e} =[x/{p}]=> {indentD err.toMessageData}") do
  withLocalDeclD `x tp fun x => do
  withLocalDeclD `h (← mkEq p x) fun h => do
    let e' ← visit e none |>.run { cfg, p, x, h, Δ := ∅, δ := ∅ } |>.run.run' 1
    mkLambdaFVars #[x, h] e'

/-- Analogue of `Lean.MVarId.rewrite` with support for inserting casts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4dc03eb2cfa05a889ed6ca7220294b6cc436019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
