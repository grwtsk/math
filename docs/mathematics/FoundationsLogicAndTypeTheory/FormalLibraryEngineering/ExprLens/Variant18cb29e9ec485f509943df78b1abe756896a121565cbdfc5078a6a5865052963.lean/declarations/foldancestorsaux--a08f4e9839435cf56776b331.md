# foldAncestorsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00cd5d73c5eb6cff0edf1f596a9a1ce757b629bff2683939c5c62b8904607562",
  "kind": "def",
  "lexical_name": "foldAncestorsAux",
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
  "slug": "foldancestorsaux--a08f4e9839435cf56776b331",
  "source": {
    "blob": "e4b7f5f1840f2bad13dd577c9bcb45f23129a89e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a08f4e9839435cf56776b33105a9c9c11753748fce62b8025e2c9f646839b3ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00cd5d73c5eb6cff0edf1f596a9a1ce757b629bff2683939c5c62b8904607562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def foldAncestorsAux
  (k : Array Expr → Expr → Nat → α → M α)
  (acc : α) (address : List Nat) (fvars : Array Expr) (current : Expr) : M α :=
  match address with
  | [] => return acc
  | 3 :: tail => do
    let current := current.instantiateRev fvars
    let y ← inferType current
    let acc ← k fvars current 3 acc
    foldAncestorsAux (fun otherFvars => k (fvars ++ otherFvars)) acc tail #[] y
  | head :: tail => do
    let acc ← k fvars (current.instantiateRev fvars) head acc
    viewCoordAux (foldAncestorsAux k acc tail) fvars head current

/-- `foldAncestors k init p e` folds over the strict ancestor subexpressions of the given expression `e` above position `p`, starting at the root expression and working down.
The fold function `k` is given the newly instantiated free variables, the ancestor subexpression, and the coordinate
that will be explored next.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b7f5f1840f2bad13dd577c9bcb45f23129a89e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
