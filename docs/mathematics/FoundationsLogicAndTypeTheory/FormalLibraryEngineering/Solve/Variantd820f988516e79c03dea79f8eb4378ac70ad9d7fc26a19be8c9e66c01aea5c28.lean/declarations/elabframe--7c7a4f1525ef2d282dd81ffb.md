# elabFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:900c5a90f4e53839d188631e5f1b9c968b76f3d0b4ddec91eab82f4a31d725a9",
  "kind": "def",
  "lexical_name": "elabFrame",
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
  "slug": "elabframe--7c7a4f1525ef2d282dd81ffb",
  "source": {
    "blob": "f28269f362e6f6f19645e8560a052fe9c02e9623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c7a4f1525ef2d282dd81ffb278e6cd9dca1bccd28d8e20c3dae38f9ab7c48a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:900c5a90f4e53839d188631e5f1b9c968b76f3d0b4ddec91eab82f4a31d725a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabFrame (resourceTy : Expr) (entry : FrameEntry) (res : Sym.MatchUnifyResult) :
    VCGenM Expr := do
  let mut decls : Array (Name × Expr × Expr) := #[]
  for h : i in [0:entry.varNames.size] do
    if let some nm := entry.varNames[i] then
      if h2 : i < res.args.size then
        decls := decls.push (nm, ← Meta.inferType res.args[i]!, res.args[i]!)
  Meta.withDefault <| withLetDeclsDND decls fun fvs => do
    let frameExpr ← Lean.Elab.Term.TermElabM.run' do
      let e ← Lean.Elab.Term.elabTermEnsuringType entry.frameStx (some resourceTy)
      Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
      mkLetFVars fvs e
    instantiateMVarsS frameExpr

/-- Find an unretired `frames` alternative matching the program (earliest source order wins),
elaborate its frame at the resource type `resourceTy`, and retire it so it applies at most once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f28269f362e6f6f19645e8560a052fe9c02e9623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
