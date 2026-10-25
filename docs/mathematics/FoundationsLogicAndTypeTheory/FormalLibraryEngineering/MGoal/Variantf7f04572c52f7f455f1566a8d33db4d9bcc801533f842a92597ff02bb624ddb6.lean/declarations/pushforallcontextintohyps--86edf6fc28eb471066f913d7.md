# pushForallContextIntoHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0f6065c781f651a53309832c922d9d0d038cbd54a04635006fa2afe0b0495f7",
  "kind": "def",
  "lexical_name": "pushForallContextIntoHyps",
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
  "slug": "pushforallcontextintohyps--86edf6fc28eb471066f913d7",
  "source": {
    "blob": "4068e1b024127385bbcf78d0e3567e0f9250e43b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variantf7f04572c52f7f455f1566a8d33db4d9bcc801533f842a92597ff02bb624ddb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86edf6fc28eb471066f913d7881f098dfcb796b46f3744f74c08a13ff7463cb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variantf7f04572c52f7f455f1566a8d33db4d9bcc801533f842a92597ff02bb624ddb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0f6065c781f651a53309832c922d9d0d038cbd54a04635006fa2afe0b0495f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def pushForallContextIntoHyps (σs hyps : Expr) : Expr := go #[] #[] hyps
  where
    wrap (revLams : Array (Name × Expr × BinderInfo)) (revAppArgs : Array Expr) (body : Expr) : Expr :=
      revLams.foldr (fun (x, ty, info) e => .lam x ty e info) (body.betaRev revAppArgs)

    go (revLams : Array (Name × Expr × BinderInfo)) (revAppArgs : Array Expr) (e : Expr) : Expr :=
      if let some (u, _σs) := parseEmptyHyp? e then
        emptyHyp u σs
      else if let some hyp := parseHyp? e then
        { hyp with p := wrap revLams revAppArgs hyp.p }.toExpr
      else if let some (u, _σs, lhs, rhs) := parseAnd? e then
        SPred.mkAnd! u σs (go revLams revAppArgs lhs) (go revLams revAppArgs rhs)
      else if let .lam x ty body info := e then
        if let some a := revAppArgs.back? then
          go revLams revAppArgs.pop (body.instantiate1 a)
        else
          go (revLams.push (x, ty, info)) revAppArgs body
      else if let .app f a := e then
        go revLams (revAppArgs.push a) f
      else
        wrap revLams revAppArgs e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variantf7f04572c52f7f455f1566a8d33db4d9bcc801533f842a92597ff02bb624ddb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variantf7f04572c52f7f455f1566a8d33db4d9bcc801533f842a92597ff02bb624ddb6.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4068e1b024127385bbcf78d0e3567e0f9250e43b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
