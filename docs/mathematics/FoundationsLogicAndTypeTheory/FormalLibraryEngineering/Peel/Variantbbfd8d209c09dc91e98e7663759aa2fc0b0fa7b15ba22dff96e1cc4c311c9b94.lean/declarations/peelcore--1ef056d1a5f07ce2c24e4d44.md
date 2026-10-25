# peelCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6ac9e0b052b0b93ade533892a6256ce9519786303a01814cbe09a5d099cb8a8",
  "kind": "def",
  "lexical_name": "peelCore",
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
  "slug": "peelcore--1ef056d1a5f07ce2c24e4d44",
  "source": {
    "blob": "a215d3bb401a05cd2fbfa8ce8e509525fef70783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ef056d1a5f07ce2c24e4d446a3be9377cdbc8913a253347b63b47bfd7faaa59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6ac9e0b052b0b93ade533892a6256ce9519786303a01814cbe09a5d099cb8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def peelCore (goal : MVarId) (e : Expr) (n? : Option Name) (n' : Name) (unfold : Bool) :
    MetaM (FVarId × List MVarId) := goal.withContext do
  let ty ← whnfQuantifier (← inferType e) unfold
  let target ← whnfQuantifier (← goal.getType) unfold
  if ty.isForall && target.isForall then
    applyPeelThm ``forall_imp goal e ty target (← n?.getDM (mkFreshUserName target.bindingName!)) n'
  else if ty.getAppFn.isConst
            && ty.getAppNumArgs == target.getAppNumArgs
            && ty.getAppFn == target.getAppFn then
    match target.getAppFnArgs with
    | (``Exists, #[_, p]) =>
      applyPeelThm ``Exists.imp goal e ty target (← n?.getDM (mkFreshBinderName p)) n'
    | (``And, #[_, _]) =>
      applyPeelThm ``and_imp_left_of_imp_imp goal e ty target (← n?.getDM (mkFreshUserName `p)) n'
    | (``Filter.Eventually, #[_, p, _]) =>
      applyPeelThm ``eventually_imp goal e ty target (← n?.getDM (mkFreshBinderName p)) n'
    | (``Filter.Frequently, #[_, p, _]) =>
      applyPeelThm ``frequently_imp goal e ty target (← n?.getDM (mkFreshBinderName p)) n'
    | _ => throwPeelError ty target
  else
    throwPeelError ty target

/-- Given a list `l` of names, this peels `num` quantifiers off of the expression `e` and
the main goal and introduces variables with the provided names until the list of names is exhausted.
Note: the name `n?` (with default `this`) is used for the name of the expression `e` with
quantifiers peeled. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a215d3bb401a05cd2fbfa8ce8e509525fef70783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
