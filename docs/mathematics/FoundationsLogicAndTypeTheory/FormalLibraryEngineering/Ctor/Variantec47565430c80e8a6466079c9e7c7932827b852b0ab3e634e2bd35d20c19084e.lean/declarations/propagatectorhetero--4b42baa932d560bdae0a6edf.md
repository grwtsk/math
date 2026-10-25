# propagateCtorHetero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba2e14b5ce05df9641ea5effa43239f96ba5302449eddfedbaaf4b98b4d13288",
  "kind": "def",
  "lexical_name": "propagateCtorHetero",
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
  "slug": "propagatectorhetero--4b42baa932d560bdae0a6edf",
  "source": {
    "blob": "765866cc9fe7a2f5af172f2841d3c1a005da2649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b42baa932d560bdae0a6edf244402aac291a5bdecdde1d1eb83d21c56be85b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba2e14b5ce05df9641ea5effa43239f96ba5302449eddfedbaaf4b98b4d13288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def propagateCtorHetero (a b : Expr) : GoalM Unit := do
  a.withApp fun ctor₁ args₁ =>
  b.withApp fun ctor₂ args₂ => do
  let .const ctorName₁ us₁ := ctor₁ | return ()
  let .const ctorName₂ us₂ := ctor₂ | return ()
  let .ctorInfo ctorVal₁ ← getConstInfo ctorName₁ | return ()
  let .ctorInfo ctorVal₂ ← getConstInfo ctorName₂ | return ()
  unless ctorVal₁.induct == ctorVal₂.induct do return ()
  let params₁ := args₁[*...ctorVal₁.numParams]
  let params₂ := args₂[*...ctorVal₂.numParams]
  if  params₁.size ≠ params₂.size then return () else
  unless us₁.length == us₂.length do return ()
  unless (← us₁.zip us₂ |>.allM fun (u₁, u₂) => isLevelDefEq u₁ u₂) do return ()
  let gen := max (← getGeneration a) (← getGeneration b)
  if ctorName₁ == ctorName₂ then
    let hinjDeclName := mkHInjectiveTheoremNameFor ctorName₁
    unless (← getEnv).containsOnBranch hinjDeclName do
      let _ ← executeReservedNameAction hinjDeclName
    let proof := mkConst hinjDeclName us₁
    let proof := mkAppN (mkAppN proof args₁) args₂
    addNewRawFact proof (← inferType proof) gen (.inj (.decl hinjDeclName)) .other
  else
    let some indices₁ ← getCtorAppIndices? a | return ()
    let some indices₂ ← getCtorAppIndices? b | return ()
    let noConfusionName := ctorVal₁.induct.str "noConfusion"
    let noConfusion := mkConst noConfusionName (0 :: us₁)
    let noConfusion := mkApp noConfusion (← getFalseExpr)
    let noConfusion := mkApp (mkAppN noConfusion (params₁ ++ indices₁)) a
    let noConfusion := mkApp (mkAppN noConfusion (params₂ ++ indices₂)) b
    let proof := noConfusion
    addNewRawFact proof (← inferType proof) gen (.inj (.decl noConfusionName)) .other

/--
Given constructors `a` and `b`, propagate equalities if they are the same,
and close goal if they are different.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765866cc9fe7a2f5af172f2841d3c1a005da2649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
