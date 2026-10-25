# buildInductionCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5054f9197a9545cb95f9184ca15a3ce25d18572f86ed876f248ec5c824e8b48c",
  "kind": "def",
  "lexical_name": "buildInductionCase",
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
  "slug": "buildinductioncase--68533b83fdf1ecdd66a11376",
  "source": {
    "blob": "20587c35412e3313846c39603df036e01503a5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 507,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68533b83fdf1ecdd66a113761a1142c2451a649d1721900a874ae9a5cb6c0aa4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5054f9197a9545cb95f9184ca15a3ce25d18572f86ed876f248ec5c824e8b48c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildInductionCase (oldIH newIH : FVarId) (isRecCall : Expr → Option Expr) (toErase toClear : Array FVarId)
    (goal : Expr)  (e : Expr) : M2 Expr := do
  withTraceNode `Meta.FunInd (fun _ => pure m!"buildInductionCase:{indentExpr e}") do
  let _e' ← foldAndCollect oldIH newIH isRecCall e
  let IHs : Array Expr ← M.ask
  let IHs ← deduplicateIHs IHs

  withErasedFVars toErase do
    let mvar ← mkFreshExprSyntheticOpaqueMVar goal (tag := `hyp)
    let mvarId := mvar.mvarId!
    let mvarId ← assertIHs IHs mvarId
    trace[Meta.FunInd] "Goal before cleanup:{mvarId}"
    let (mvarId, _) ← mvarId.tryClearMany' toClear
    modify (·.push mvarId)
    let mvar ← instantiateMVars mvar
    pure mvar

/--
Like `mkLambdaFVars (usedOnly := true)`, but

 * silently skips expression in `xs` that are not `.isFVar`
 * also skips let-bound variables
 * returns a mask (same size as `xs`) indicating which variables have been abstracted
   (`true` means was abstracted).

The result `r` can be applied with `r.beta (maskArray mask args)`.

We use this when generating the functional induction principle to refine the goal through a `match`,
here `xs` are the discriminants of the `match`.
We do not expect non-trivial discriminants to appear in the goal (and if they do, the user will
get a helpful equality into the context).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20587c35412e3313846c39603df036e01503a5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
