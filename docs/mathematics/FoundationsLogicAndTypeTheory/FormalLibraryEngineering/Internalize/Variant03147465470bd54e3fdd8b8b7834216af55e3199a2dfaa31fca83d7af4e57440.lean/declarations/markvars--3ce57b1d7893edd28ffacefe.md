# markVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e5b586488a58bcde58c4688e28360c7209afd666da1718e775610957efcaf9",
  "kind": "def",
  "lexical_name": "markVars",
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
  "slug": "markvars--3ce57b1d7893edd28ffacefe",
  "source": {
    "blob": "fc51046e1cebaa517da3140d9eda925a8c4aff2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ce57b1d7893edd28ffacefeea0fb47432c00afb8d6efde1b317b94d2143f67d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e5b586488a58bcde58c4688e28360c7209afd666da1718e775610957efcaf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def markVars (e : Expr) : LinearM Unit := do
  match_expr e with
  | HAdd.hAdd _ _ _ i a b =>
    if isAddInst (← getStruct) i then markVars a; markVars b else markVar e
  | HSub.hSub _ _ _ i a b => if isSubInst (← getStruct) i then markVars a; markVars b else markVar e
  | HMul.hMul _ _ _ i a b =>
    if isHomoMulInst (← getStruct) i then
      if isNumeral a then
        return (← markVar b)
      else if isNumeral b then
        return (← markVar a)
      else
        markVar a; markVar b; markVar e
        return
    markVar e
  | HSMul.hSMul _ _ _ i a b =>
    if isSMulIntInst (← getStruct) i then
      if (← getIntValue? a).isSome then
        return (← markVar b)
    if isSMulNatInst (← getStruct) i then
      if (← getNatValue? a).isSome then
        return (← markVar b)
    markVar e
  | Neg.neg _ _ a => markVars a
  | Zero.zero _ _ => return ()
  | OfNat.ofNat _ _ _ => return ()
  | _ => markVar e
where
  markVar (e : Expr) : LinearM Unit :=
    discard <| mkVar e
  isNumeral (e : Expr) : Bool :=
    match_expr e with
    | Neg.neg _ _ a => isNumeral a
    | OfNat.ofNat _ n _ => isNatNum n
    | _ => false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc51046e1cebaa517da3140d9eda925a8c4aff2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
