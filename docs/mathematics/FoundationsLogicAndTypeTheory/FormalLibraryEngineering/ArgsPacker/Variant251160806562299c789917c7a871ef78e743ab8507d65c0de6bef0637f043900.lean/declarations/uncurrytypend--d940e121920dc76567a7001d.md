# uncurryTypeND

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce9123f4bce1f7e2c043b3f13f68eb6c0475eaec227c1f221a624a0a59895fe0",
  "kind": "def",
  "lexical_name": "uncurryTypeND",
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
  "slug": "uncurrytypend--d940e121920dc76567a7001d",
  "source": {
    "blob": "bec39ccc6f59bf587136e77b930d3be1ddc2e516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d940e121920dc76567a7001db1323a611024b8cdd872ef5896973089937df8c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce9123f4bce1f7e2c043b3f13f68eb6c0475eaec227c1f221a624a0a59895fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uncurryTypeND (types : Array Expr) : MetaM Expr := do
  let types ← types.mapM whnfForall
  types.forM fun type =>
    unless type.isArrow do
      throwError "Mutual.uncurryTypeND: Expected non-dependent types, got {type}"
  let codomains := types.map (·.bindingBody!)
  let t' := codomains.back!
  codomains.pop.forM fun t =>
    unless ← isDefEq t t' do
      throwError "Mutual.uncurryTypeND: Expected equal codomains, but got {t} and {t'}"
  let codomain := codomains[0]!
  let domain ← packType (types.map (·.bindingDomain!))
  mkArrow domain codomain

/--
Iterated `PSum.casesOn`:
Given a value `(x : A ⊕ C)` (which must be a FVar) and functions
`alt₁ : (a : A) → codomain[inl a]` and `alt₂ : (b : B) → codomain[inr b]`,
matches on `x` to apply the right `alt` to produce a value of `codomain[x]`.

Uses the variable name from the lambda in `altᵢ`, if present.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec39ccc6f59bf587136e77b930d3be1ddc2e516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
