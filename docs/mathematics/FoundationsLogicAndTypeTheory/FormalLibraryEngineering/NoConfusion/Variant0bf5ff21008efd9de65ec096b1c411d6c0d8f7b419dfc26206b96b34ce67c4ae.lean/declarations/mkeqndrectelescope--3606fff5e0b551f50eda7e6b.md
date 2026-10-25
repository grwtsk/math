# mkEqNDRecTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a27ce1872f752afc96e54aafac7cc2bc224066af845a1ba97d6447e7e349111",
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
  "slug": "mkeqndrectelescope--3606fff5e0b551f50eda7e6b",
  "source": {
    "blob": "22cac14cf82b8c20dc75c36b705e00f1dade1df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3606fff5e0b551f50eda7e6b3b4637803776cbd604b594f6d91eadcee1e1ce4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a27ce1872f752afc96e54aafac7cc2bc224066af845a1ba97d6447e7e349111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–217.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22cac14cf82b8c20dc75c36b705e00f1dade1df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
