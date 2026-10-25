# etaReduceAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b84c1b3564734c7a3c5c9c2e0505b9d2176c10796369783877ff38f330ce34e",
  "kind": "def",
  "lexical_name": "etaReduceAux",
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
  "slug": "etareduceaux--fb42fb1f5d66f70c77d61764",
  "source": {
    "blob": "8e473b1076a7759ae62e9b5637ee4c4bf474f344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb42fb1f5d66f70c77d617648264780d502ab1be0fe7ebb5f8faf700bdab5418",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b84c1b3564734c7a3c5c9c2e0505b9d2176c10796369783877ff38f330ce34e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etaReduceAux (body : Expr) (n : Nat) (i : Nat) (default : Expr) : Expr :=
  go body n i
where
  go (body : Expr) (m : Nat) (i : Nat) : Expr := Id.run do
    match m with
    | 0 =>
      if hasLooseBVarsInRange body n then default
      else body.lowerLooseBVars n n
    | m+1 =>
      let .app f (.bvar j) := body | default
      if j == i then go f m (i+1) else default

/--
If `e` is of the form `(fun x₁ ... xₙ => f x₁ ... xₙ)` and `f` does not contain `x₁`, ..., `xₙ`,
then returns `f`. Otherwise, returns `e`.

Returns the original expression when not reducible to enable pointer equality checks.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e473b1076a7759ae62e9b5637ee4c4bf474f344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
