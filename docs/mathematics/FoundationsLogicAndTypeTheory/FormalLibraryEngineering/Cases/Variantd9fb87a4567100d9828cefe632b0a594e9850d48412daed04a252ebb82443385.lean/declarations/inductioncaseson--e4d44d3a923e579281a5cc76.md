# inductionCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92a7eaa9aa7f6309158a2dcc0aeef2d30134842921f36327a0fd093e33df72f2",
  "kind": "def",
  "lexical_name": "inductionCasesOn",
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
  "slug": "inductioncaseson--e4d44d3a923e579281a5cc76",
  "source": {
    "blob": "28a0c4b825a83c9f24683c035aabcb13c8cc2651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4d44d3a923e579281a5cc76cf274965cccb309d340c5b0b81ccc0c42f06fa1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92a7eaa9aa7f6309158a2dcc0aeef2d30134842921f36327a0fd093e33df72f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def inductionCasesOn (mvarId : MVarId) (majorFVarId : FVarId) (givenNames : Array AltVarNames) (ctx : Context)
    (useNatCasesAuxOn : Bool := false) (interestingCtors? : Option (Array Name) := none) :
    MetaM (Array CasesSubgoal) := mvarId.withContext do
  let majorType ← inferType (mkFVar majorFVarId)
  let (us, params) ← getInductiveUniverseAndParams majorType

  if let some interestingCtors := interestingCtors? then
    -- Avoid Init.Prelude complications
    let hasNE := (← getEnv).contains ``Nat.hasNotBit
    -- We can only create a sparse casesOn if we have `ctorIdx` (in particular, if it is a type)
    let hasCtorIdx := (← getEnv).contains (mkCtorIdxName ctx.inductiveVal.name)
    if hasNE && hasCtorIdx && !interestingCtors.isEmpty &&
      interestingCtors.size < ctx.inductiveVal.ctors.length then
      let casesOn ← Lean.Meta.mkSparseCasesOn ctx.inductiveVal.name interestingCtors
      let s ← mvarId.induction majorFVarId casesOn givenNames
      return toCasesSubgoals s interestingCtors majorFVarId us params

  let casesOn :=
    if useNatCasesAuxOn && ctx.inductiveVal.name == ``Nat && (← getEnv).contains ``Nat.casesAuxOn then
      ``Nat.casesAuxOn
    else
      mkCasesOnName ctx.inductiveVal.name
  let ctors   := ctx.inductiveVal.ctors.toArray
  let s ← mvarId.induction majorFVarId casesOn givenNames
  return toCasesSubgoals s ctors majorFVarId us params

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a0c4b825a83c9f24683c035aabcb13c8cc2651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
