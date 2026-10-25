# mkEqNDRecTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dca636934cfa360435d61de62faff112a3b439485c02a4268d57b17ef0a7459",
  "kind": "def",
  "lexical_name": "mkEqNDRecTelescope",
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
  "slug": "mkeqndrectelescope--13e124dabac8aa192ca0a2bd",
  "source": {
    "blob": "3734c340f2c1712fdd0949b08c73acdc8245b613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13e124dabac8aa192ca0a2bda6569606f9ea955e9f7147d7d8b56262bf3e7494",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dca636934cfa360435d61de62faff112a3b439485c02a4268d57b17ef0a7459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEqNDRecTelescope (motive : Expr) (e : Expr) (xs ys : Array Expr) : MetaM Expr := do
  trace[Meta.mkNoConfusion] m!"mkEqNDRecTelescope: {e}, xs = {xs}, ys = {ys}"
  assert! xs.size == ys.size
  withEqTelescope xs ys fun eqs => do
    let result ← mkFreshExprMVar (motive.beta ys)
    let mut mvarId := result.mvarId!
    let mut subst := {}
    for eq in eqs do
      -- TODO: Can we build this easily and directly tactic-free?
      let eq := subst.get eq.fvarId!
      mvarId.withContext do trace[Meta.mkNoConfusion] m!"substituting {eq}"
      let (subst', mvarId') ← Meta.substEq mvarId eq.fvarId! (fvarSubst := subst)
      subst := subst'
      mvarId := mvarId'
    let e := e.applyFVarSubst subst
    mvarId.withContext do trace[Meta.mkNoConfusion] m!"assigning {e} : {← inferType e} to\n{mvarId}"
    mvarId.assign e
    mkLambdaFVars eqs (← instantiateMVars result)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3734c340f2c1712fdd0949b08c73acdc8245b613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
