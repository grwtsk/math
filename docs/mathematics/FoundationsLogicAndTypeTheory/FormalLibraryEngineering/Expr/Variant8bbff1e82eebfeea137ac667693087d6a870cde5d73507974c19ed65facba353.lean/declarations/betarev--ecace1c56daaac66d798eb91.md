# betaRev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ece430825b7b9420df629f4821e72d0f5c15c15ba03a3f4ac20cd9e25670a21",
  "kind": "def",
  "lexical_name": "betaRev",
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
  "slug": "betarev--ecace1c56daaac66d798eb91",
  "source": {
    "blob": "5df8765a9589b3fe299e04390e2285ffe5a90043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1630,
    "line": 1600,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecace1c56daaac66d798eb9149eca2654b310eb6f55f4b7eacc49c78f7d6c731",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ece430825b7b9420df629f4821e72d0f5c15c15ba03a3f4ac20cd9e25670a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1600–1630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def betaRev (f : Expr) (revArgs : Array Expr) (useZeta := false) (preserveMData := false) : Expr :=
  if revArgs.size == 0 then f
  else
    let sz := revArgs.size
    let rec go (e : Expr) (i : Nat) : Expr :=
      let done (_ : Unit) : Expr :=
        let n := sz - i
        mkAppRevRange (e.instantiateRange n sz revArgs) 0 n revArgs
      match e with
      | .lam _ _ b _ =>
        if i + 1 < sz then
          go b (i+1)
        else
          b.instantiate revArgs
      | .letE _ _ v b _ =>
        if useZeta && i < sz then
          go (b.instantiate1 v) i
        else
          done ()
      | .mdata _ b =>
        if preserveMData then
          done ()
        else
          go b i
      | _ => done ()
    go f 0

/--
Apply the given arguments to `f`, beta-reducing if `f` is a
lambda expression. See docstring for `betaRev` for examples.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean#L1600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5df8765a9589b3fe299e04390e2285ffe5a90043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
