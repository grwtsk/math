# countUses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d59502d81cf46360c6ffc10c73c6bd1564c2fbf63ec0f8b3c4bd28f0fb0c0074",
  "kind": "def",
  "lexical_name": "countUses",
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
  "slug": "countuses--d990ae90812f4ab00ff10b50",
  "source": {
    "blob": "b5d9400db164afad5c85b2d7561e285d293e1f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d990ae90812f4ab00ff10b5028a9b7628a80feb91b20f3245d477d719500a006",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d59502d81cf46360c6ffc10c73c6bd1564c2fbf63ec0f8b3c4bd28f0fb0c0074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def countUses (e : Expr) (subst : Array FVarId := #[]) : MetaM (Expr × FVarUses) := match e with
  | .bvar n =>
    if _ : n < subst.size then
      return (e, {(subst[subst.size - 1 - n], .one)})
    else
      throwError "BVar index out of bounds: {n} >= {subst.size}"
  | .fvar fvarId => return (e, {(fvarId, .one)})
  | .letE x ty val body b => do
    let fv ← mkFreshFVarId
    let (body, fvs) ← countUses body (subst.push fv)
    let (ty, .some val, fvs) ← countUsesDecl fv ty (some val) fvs subst | failure
    return (.letE x ty val body b, fvs)
  | .lam x ty body bi => do
    let fv ← mkFreshFVarId
    let (ty, fvs₁) ← countUses ty subst
    let (body, fvs₂) ← countUses body (subst.push fv)
    let fvs := (fvs₁ + fvs₂).erase fv
    return (.lam x ty body bi, fvs) -- NB: We do not track uses of lam-bound x
  | .forallE x ty body bi => do -- (almost) identical to lam
    let fv ← mkFreshFVarId
    let (ty, fvs₁) ← countUses ty subst
    let (body, fvs₂) ← countUses body (subst.push fv)
    let fvs := (fvs₁ + fvs₂).erase fv
    return (.forallE x ty body bi, fvs) -- NB: We do not track uses of forall-bound x
  | .proj s i e => over1Of2 (Expr.proj s i) <$> countUses e subst
  | .mdata d e => over1Of2 (Expr.mdata d) <$> countUses e subst
  | .app f a => do
    let (f, fvarUses₁) ← countUses f subst
    let (a, fvarUses₂) ← countUses a subst
    return (.app f a, fvarUses₁ + fvarUses₂)
  | .lit .. | .const .. | .sort .. | .mvar .. => return (e, {})
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d9400db164afad5c85b2d7561e285d293e1f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
