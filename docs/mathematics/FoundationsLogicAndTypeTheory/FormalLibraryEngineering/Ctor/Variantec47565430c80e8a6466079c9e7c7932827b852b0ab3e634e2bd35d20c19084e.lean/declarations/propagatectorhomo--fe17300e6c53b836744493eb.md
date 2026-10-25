# propagateCtorHomo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dfdc7defa01810d085fdf2bbed66d59119c30783f09c7f25708584fabecc0ae",
  "kind": "def",
  "lexical_name": "propagateCtorHomo",
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
  "slug": "propagatectorhomo--fe17300e6c53b836744493eb",
  "source": {
    "blob": "765866cc9fe7a2f5af172f2841d3c1a005da2649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe17300e6c53b836744493eb96a4231297c719164bcf2339f0c245830fa2e0e6",
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

Occurrence: `declaration:4dfdc7defa01810d085fdf2bbed66d59119c30783f09c7f25708584fabecc0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def propagateCtorHomo (α : Expr) (a b : Expr) : GoalM Unit := do
  let ctor₁ := a.getAppFn
  let ctor₂ := b.getAppFn
  if ctor₁ == ctor₂ then
    let .const ctorName _ := ctor₁ | return ()
    let injDeclName := mkInjectiveTheoremNameFor ctorName
    unless (← getEnv).contains injDeclName do return ()
    let info ← getConstInfo injDeclName
    let n := info.type.getForallArity
    let mask : Array (Option Expr) := .replicate n none
    /-
    We use `mkExpectedTypeHint` here to ensure that `mkAppOptM` will "fill" the implicit
    arguments of `injDeclName` using exactly the fields of `a` and `b`.
    There is no guarantee that `inferType (← mkEqProof a b)` is structurally equal to `a = b`.
    -/
    let mask := mask.set! (n-1) (some (← mkExpectedTypeHint (← mkEqProof a b) (← mkEq a b)))
    let injLemma ← withDefault <| mkAppOptM injDeclName mask
    let injLemmaType ← inferType injLemma
    let gen := max (← getGeneration a) (← getGeneration b)
    propagateInjEqs injLemmaType injLemma gen
  else
    let .const declName _ := α.getAppFn | return ()
    let noConfusionDeclName := Name.mkStr declName "noConfusion"
    unless (← getEnv).contains noConfusionDeclName do return ()
    closeGoal (← mkNoConfusion (← getFalseExpr) (← mkEqProof a b))

/-- Heterogeneous case where constructor applications `a` and `b` have different types `α` and `β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765866cc9fe7a2f5af172f2841d3c1a005da2649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
