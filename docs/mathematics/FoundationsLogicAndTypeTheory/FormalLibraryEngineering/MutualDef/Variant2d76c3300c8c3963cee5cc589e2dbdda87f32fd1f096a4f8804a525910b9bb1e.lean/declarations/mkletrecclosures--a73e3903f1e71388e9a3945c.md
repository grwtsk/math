# mkLetRecClosures

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37f500bc5473d71239760fc48c7392358cc3117c6efadb7a894e2a237d2bdcad",
  "kind": "def",
  "lexical_name": "mkLetRecClosures",
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
  "slug": "mkletrecclosures--a73e3903f1e71388e9a3945c",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 1000,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a73e3903f1e71388e9a3945cd7cd3a17dba21a63173527fd4009b02b4da1fd34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37f500bc5473d71239760fc48c7392358cc3117c6efadb7a894e2a237d2bdcad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkLetRecClosures (sectionVars : Array Expr) (mainFVarIds : Array FVarId) (recFVarIds : Array FVarId) (letRecsToLift : Array LetRecToLift) : TermElabM (List LetRecClosure) := do
  -- Compute the set of free variables (excluding `recFVarIds`) for each let-rec.
  let mut letRecsToLift := letRecsToLift
  let mut freeVarMap    ← mkFreeVarMap sectionVars mainFVarIds recFVarIds letRecsToLift
  let mut result := #[]
  for i in *...letRecsToLift.size do
    if letRecsToLift[i]!.val.hasExprMVar then
      -- This can happen when this particular let-rec has nested let-rec that have been resolved in previous iterations.
      -- This code relies on the fact that nested let-recs occur before the outer most let-recs at `letRecsToLift`.
      -- Unresolved nested let-recs appear as metavariables before they are resolved. See `assignExprMVar` at `mkLetRecClosureFor`
      let valNew ← instantiateMVarsProfiling letRecsToLift[i]!.val
      letRecsToLift := letRecsToLift.modify i fun t => { t with val := valNew }
      -- We have to recompute the `freeVarMap` in this case. This overhead should not be an issue in practice.
      freeVarMap ← mkFreeVarMap sectionVars mainFVarIds recFVarIds letRecsToLift
    let toLift := letRecsToLift[i]!
    result := result.push (← mkLetRecClosureFor toLift (freeVarMap.get? toLift.fvarId).get!)
  return result.toList

/-- Mapping from FVarId of mutually recursive functions being defined to "closure" expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
