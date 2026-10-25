# dsimpImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0480829bfab384c6617db858f28fc10ef99108257e8d59a589937aecc9d511d",
  "kind": "def",
  "lexical_name": "dsimpImpl",
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
  "slug": "dsimpimpl--f870a6f995d4dc4d6b061988",
  "source": {
    "blob": "1f1f398cec38d13aecbd60b396e58a8690e14bcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1705a1b92a5ee80d4ec08cbc6c73fc1aa346f8d39b54f6119e556fa64fdabc74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f870a6f995d4dc4d6b06198875f95cbe5467e6c1dd32ad4eb9d7f06d5907a4cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1705a1b92a5ee80d4ec08cbc6c73fc1aa346f8d39b54f6119e556fa64fdabc74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0480829bfab384c6617db858f28fc10ef99108257e8d59a589937aecc9d511d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dsimpImpl (e₁ : Expr) : DSimpM Result := withIncRecDepth do
  let numSteps := (← get).numSteps
  if numSteps >= (← getConfig).maxSteps then
    throwError "`dsimp` failed: maximum number of steps exceeded"
  let key : ExprPtr := { expr := e₁ }
  if let some r := (← get).cache.find? key then
    return r
  let numSteps := numSteps + 1
  if numSteps % 1000 == 0 then
    checkSystem "dsimp"
  modify fun s => { s with numSteps }
  let r ← pre e₁
  let r ← match r with
    | .rfl true | .step _ true  => pure r
    | .step e₂ false  =>
      match (← dsimp e₂) with
      | .rfl done     => pure (.step e₂ done)
      | .step e₃ done => pure (.step e₃ done)
    | .rfl false =>
      let r ← (dsimpStep >> post) e₁
      match r with
      | .rfl _ | .step _ true => pure r
      | .step e₂ false =>
        match (← dsimp e₂) with
        | .rfl done     => pure (.step e₂ done)
        | .step e₃ done => pure (.step e₃ done)
  cacheResult e₁ r

end Lean.Meta.Sym.DSimp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1705a1b92a5ee80d4ec08cbc6c73fc1aa346f8d39b54f6119e556fa64fdabc74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1705a1b92a5ee80d4ec08cbc6c73fc1aa346f8d39b54f6119e556fa64fdabc74.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1f398cec38d13aecbd60b396e58a8690e14bcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
