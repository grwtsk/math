# Name.toExprAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf8cee3f5318e07f7b66c7456b19cd09f2400d3de89a8031b296d6d687867e1b",
  "kind": "def",
  "lexical_name": "Name.toExprAux",
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
  "slug": "name-toexpraux--f7336eee126207367df4b515",
  "source": {
    "blob": "6c461d4e84cf33553b17e852ea92139790a25fd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7336eee126207367df4b5158c48618b41082641d33eebcc01c977755f0dddf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf8cee3f5318e07f7b66c7456b19cd09f2400d3de89a8031b296d6d687867e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def Name.toExprAux (n : Name) : Expr :=
  if isSimple n 0 then
    mkStr n 0 #[]
  else
    go n
where
  isSimple (n : Name) (sz : Nat) : Bool :=
    match n with
    | .anonymous => 0 < sz && sz <= 8
    | .str p _ => isSimple p (sz+1)
    | _ => false

  mkStr (n : Name) (sz : Nat) (args : Array Expr) : Expr :=
    match n with
    | .anonymous => mkAppN (mkConst (.str ``Lean.Name ("mkStr" ++ toString sz))) args.reverse
    | .str p s => mkStr p (sz+1) (args.push (toExpr s))
    | _ => unreachable!

  go : Name → Expr
    | .anonymous => mkConst ``Lean.Name.anonymous
    | .str p s ..=> mkApp2 (mkConst ``Lean.Name.str) (go p) (toExpr s)
    | .num p n ..=> mkApp2 (mkConst ``Lean.Name.num) (go p) (toExpr n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c461d4e84cf33553b17e852ea92139790a25fd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
