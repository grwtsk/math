# expandDivMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c38d4b1a9587de17f08643ebaefeb6bc9d3dc5bda09b43b6e1903b1abbf1b4bd",
  "kind": "def",
  "lexical_name": "expandDivMod",
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
  "slug": "expanddivmod--e7ec00228ad9da276d87ccd1",
  "source": {
    "blob": "bfc33f2c395a87402e7796b548588f6a687c8303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 570,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7ec00228ad9da276d87ccd13b7982266f642ef5e6abf17e06880659e82beb54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c38d4b1a9587de17f08643ebaefeb6bc9d3dc5bda09b43b6e1903b1abbf1b4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def expandDivMod (a : Expr) (b : Int) : GoalM Unit := do
  if (← get').divMod.contains (a, b) then return ()
  modify' fun s => { s with divMod := s.divMod.insert (a, b) }
  let b' ← shareCommon (mkIntLit b)
  if b == 0 || b == 1 || b == -1 then
    /-
    We cannot assume terms have been normalized.
    Recall that terms may not be normalized because of dependencies.
    -/
    let gen ← getGeneration a
    internalize b' gen
    let ediv ← shareCommon (mkIntDiv a b'); internalize ediv gen
    let emod ← shareCommon (mkIntMod a b'); internalize emod gen
    if b == 0 then
      pushEq emod a <| mkApp (mkConst ``Int.emod_zero) a
      pushEq ediv b' <| mkApp (mkConst ``Int.ediv_zero) a
    else if b == 1 then
      let zero ← shareCommon (mkIntLit 0); internalize zero gen
      pushEq emod zero <| mkApp (mkConst ``Int.emod_one) a
      pushEq ediv a <| mkApp (mkConst ``Int.ediv_one) a
    else
      assert! b == -1
      let zero ← shareCommon (mkIntLit 0); internalize zero gen
      let neg_a ← shareCommon (mkIntNeg a); internalize neg_a gen
      pushEq emod zero <| mkApp (mkConst ``Int.emod_minus_one) a
      pushEq ediv neg_a <| mkApp (mkConst ``Int.ediv_minus_one) a
  else
    let n : Int := 1 - b.natAbs
    pushNewFact <| mkApp2 (mkConst ``Int.Internal.Linear.ediv_emod) a b'
    pushNewFact <| mkApp3 (mkConst ``Int.Internal.Linear.emod_nonneg) a b' eagerReflBoolTrue
    pushNewFact <| mkApp4 (mkConst ``Int.Internal.Linear.emod_le) a b' (toExpr n) eagerReflBoolTrue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc33f2c395a87402e7796b548588f6a687c8303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
