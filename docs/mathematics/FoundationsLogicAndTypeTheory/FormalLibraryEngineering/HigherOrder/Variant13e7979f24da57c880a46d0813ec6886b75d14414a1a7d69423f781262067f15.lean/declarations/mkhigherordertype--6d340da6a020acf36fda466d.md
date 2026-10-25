# mkHigherOrderType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b80428fa732092d8e6dafe96b1b4ac87ccd4f9cdadd778932b8c0a014c8fe20",
  "kind": "def",
  "lexical_name": "mkHigherOrderType",
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
  "slug": "mkhigherordertype--6d340da6a020acf36fda466d",
  "source": {
    "blob": "938503856afae6ad7fca14a7abdf16d731604345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d340da6a020acf36fda466dcdc668734dbef56e7e961001072f966697e2f6a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b80428fa732092d8e6dafe96b1b4ac87ccd4f9cdadd778932b8c0a014c8fe20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkHigherOrderType (e : Expr) : MetaM Expr := do
  if not e.isForall then
    throwError "not a forall"
  withLocalDecl e.bindingName! e.binderInfo e.bindingDomain! fun fvar => do
    let body := instantiate1 e.bindingBody! fvar
    if body.isForall then
      let exp ← mkHigherOrderType body
      mkForallFVars #[fvar] exp (binderInfoForMVars := e.binderInfo)
    else
      let some (_, lhs, rhs) ← matchEq? body | throwError "not an equality {← ppExpr body}"
      mkEq (← mkComp fvar lhs) (← mkComp fvar rhs)

/-- A user attribute that applies to lemmas of the shape `∀ x, f (g x) = h x`.
It derives an auxiliary lemma of the form `f ∘ g = h` for reasoning about higher-order functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `938503856afae6ad7fca14a7abdf16d731604345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
