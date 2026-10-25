# Name.toExprAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72b8f631156c4d77bcdd1893c6e7ab1a61388e1f8a0df5c385018beb2d97a0d6",
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
  "slug": "name-toexpraux--b60dc7ed8eff02b724db3824",
  "source": {
    "blob": "7c5e695a990966b08bba30ca0dd1e73559fdd3e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant455325b9aa2ec80264f2ac5ac4e83a2fcc361c51f4ff3862cff7ed4762e04dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b60dc7ed8eff02b724db382482b94f68d41c96ad615314866a18a1598ed25d48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant455325b9aa2ec80264f2ac5ac4e83a2fcc361c51f4ff3862cff7ed4762e04dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72b8f631156c4d77bcdd1893c6e7ab1a61388e1f8a0df5c385018beb2d97a0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–235.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant455325b9aa2ec80264f2ac5ac4e83a2fcc361c51f4ff3862cff7ed4762e04dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant455325b9aa2ec80264f2ac5ac4e83a2fcc361c51f4ff3862cff7ed4762e04dd9.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c5e695a990966b08bba30ca0dd1e73559fdd3e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
