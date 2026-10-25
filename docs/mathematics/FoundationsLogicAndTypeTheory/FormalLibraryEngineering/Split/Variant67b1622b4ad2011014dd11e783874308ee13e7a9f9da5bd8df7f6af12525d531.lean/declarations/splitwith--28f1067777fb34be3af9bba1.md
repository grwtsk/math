# splitWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53e30117750aeac4146d146638fb04b9c9a4b682d0e4fb7d6f12eeb447a59a41",
  "kind": "def",
  "lexical_name": "splitWith",
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
  "slug": "splitwith--28f1067777fb34be3af9bba1",
  "source": {
    "blob": "f627b6c6fd60c563ce4e62a9cd3be1b220f51f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28f1067777fb34be3af9bba163e2107eb32799df4f12444ba923212e26305355",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53e30117750aeac4146d146638fb04b9c9a4b682d0e4fb7d6f12eeb447a59a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitWith
  {n} [MonadLiftT MetaM n] [MonadControlT MetaM n] [Monad n] [MonadError n] [MonadEnv n] [MonadLog n]
  [AddMessageContext n] [MonadOptions n]
  (info : SplitInfo) (resTy : Expr) (onAlt : Name → Expr → Nat → MatcherApp.TransformAltFVars → n Expr) (useSplitter := false) : n Expr := match info with
  | ite e => do
    let u ← getLevel resTy
    let c := e.getArg! 1
    let h := e.getArg! 2
    if useSplitter then -- dite is the "splitter" for ite
      let n ← liftMetaM <| mkFreshUserName `h
      let t ← withLocalDecl n .default c fun h => do mkLambdaFVars #[h] (← onAlt `isTrue resTy 0 { fields := #[h] })
      let e ← withLocalDecl n .default (mkNot c) fun h => do mkLambdaFVars #[h] (← onAlt `isFalse resTy 1 { fields := #[h] })
      return mkApp5 (mkConst ``_root_.dite [u]) resTy c h t e
    else
      let t ← onAlt `isTrue resTy 0 { fields := #[] }
      let e ← onAlt `isFalse resTy 1 { fields := #[] }
      return mkApp5 (mkConst ``_root_.ite [u]) resTy c h t e
  | dite e => do
    let u ← getLevel resTy
    let c := e.getArg! 1
    let h := e.getArg! 2
    let n ← liftMetaM <| mkFreshUserName `h
    let t ← withLocalDecl n .default c fun h => do mkLambdaFVars #[h] (← onAlt `isTrue resTy 0 { args := #[h], fields := #[h] })
    let e ← withLocalDecl n .default (mkNot c) fun h => do mkLambdaFVars #[h] (← onAlt `isFalse resTy 1 { args := #[h], fields := #[h] })
    return mkApp5 (mkConst ``_root_.dite [u]) resTy c h t e
  | matcher matcherApp => do
    let mask := matcherApp.discrs.map (·.isFVar)
    let maskedDiscrs := Array.mask mask matcherApp.discrs
    let absMotiveBody ← resTy.abstractM maskedDiscrs
    (·.toExpr) <$> matcherApp.transform
      (useSplitter := useSplitter) (addEqualities := useSplitter) -- (freshenNames := true)
      (onMotive := fun xs _body => pure (absMotiveBody.instantiateRev (Array.mask mask xs)))
      (onAlt := fun idx expAltType altFVars _alt => do
        onAlt ((`h).appendIndexAfter (idx+1)) expAltType idx altFVars)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f627b6c6fd60c563ce4e62a9cd3be1b220f51f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
