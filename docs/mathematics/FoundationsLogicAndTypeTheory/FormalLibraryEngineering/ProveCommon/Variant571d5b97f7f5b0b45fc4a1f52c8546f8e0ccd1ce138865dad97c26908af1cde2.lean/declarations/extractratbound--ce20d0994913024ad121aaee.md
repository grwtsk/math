# extractRatBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9108823f3c6c67d81aae05ad91911c34db30234519d5e44f37fe54e1c9df0b9c",
  "kind": "def",
  "lexical_name": "extractRatBound",
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
  "slug": "extractratbound--ce20d0994913024ad121aaee",
  "source": {
    "blob": "b8c3b6297aa59c2899d86a9994a7e02a695475b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 316,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce20d0994913024ad121aaeecb0e5b7cacd791854fc72dadf73b2a5f35e35fdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9108823f3c6c67d81aae05ad91911c34db30234519d5e44f37fe54e1c9df0b9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractRatBound (bound : Lean.Expr) : TacticM Lean.Expr := do
  let fn := bound.getAppFn
  let args := bound.getAppArgs

  -- Check for Rat.cast (which is what ↑ becomes for ℚ → ℝ)
  if fn.isConstOf ``Rat.cast then
    if args.size > 0 then
      return args.back!
    else
      throwError "Unexpected Rat.cast structure"
  else if fn.isConstOf ``RatCast.ratCast then
    if args.size > 0 then
      return args.back!
    else
      throwError "Unexpected RatCast.ratCast structure"
  else
    let boundTy ← inferType bound
    if boundTy.isConstOf ``Rat then
      return bound
    else
      if let some q ← extractRatFromReal bound then
        return toExpr q
      else
        let boundReduced ← whnf bound
        let fnReduced := boundReduced.getAppFn
        if fnReduced.isConstOf ``Rat.cast || fnReduced.isConstOf ``RatCast.ratCast then
          let argsReduced := boundReduced.getAppArgs
          if argsReduced.size > 0 then
            return argsReduced.back!
        throwError m!"Cannot extract rational from bound: {bound}\n\n\
                      This happens when the bound contains non-computable constants.\n\
                      Suggestions:\n\
                      • Use a rational approximation\n\
                      • Use interval_decide for point inequalities with transcendentals"

/-- Try to extract AST from an Expr.eval application, or reify if it's a raw expression -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c3b6297aa59c2899d86a9994a7e02a695475b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
