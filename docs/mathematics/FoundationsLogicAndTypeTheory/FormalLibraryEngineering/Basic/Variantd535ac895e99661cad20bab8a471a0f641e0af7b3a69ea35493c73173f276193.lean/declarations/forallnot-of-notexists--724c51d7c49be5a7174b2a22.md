# forallNot_of_notExists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac4938d8e2fee2157b98b10c992358fd0618ed82018660b71681c25d89a3a474",
  "kind": "def",
  "lexical_name": "forallNot_of_notExists",
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
  "slug": "forallnot-of-notexists--724c51d7c49be5a7174b2a22",
  "source": {
    "blob": "a2d08652fd2284ba2892f4bc755b8dfe5a9f0a02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 523,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:724c51d7c49be5a7174b2a221c5d0191820392f29987bb5b8f24200eca231c7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac4938d8e2fee2157b98b10c992358fd0618ed82018660b71681c25d89a3a474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def forallNot_of_notExists (ex hNotEx : Expr) : MetaM (Expr × Expr) := do
  let .app (.app (.const ``Exists [lvl]) A) p := ex | failure
  go lvl A p hNotEx
where
  /-- Given `(hNotEx : Not (@Exists.{lvl} A p))`,
      return a `forall x, Not (p x)` and a proof for it.

      This function handles nested existentials. -/
  go (lvl : Level) (A p hNotEx : Expr) : MetaM (Expr × Expr) := do
    let xn ← mkFreshUserName `x
    withLocalDeclD xn A fun x => do
      let px := p.beta #[x]
      let notPx := mkNot px
      let hAllNotPx := mkApp3 (.const ``forall_not_of_not_exists [lvl]) A p hNotEx
      if let .app (.app (.const ``Exists [lvl']) A') p' := px then
        let hNotPxN ← mkFreshUserName `h
        withLocalDeclD hNotPxN notPx fun hNotPx => do
          let (qx, hQx) ← go lvl' A' p' hNotPx
          let allQx ← mkForallFVars #[x] qx
          let hNotPxImpQx ← mkLambdaFVars #[hNotPx] hQx
          let hAllQx ← mkLambdaFVars #[x] (.app hNotPxImpQx (.app hAllNotPx x))
          return (allQx, hAllQx)
      else
        let allNotPx ← mkForallFVars #[x] notPx
        return (allNotPx, hAllNotPx)

end Expr

/-- Get the projections that are projections to parent structures. Similar to `getParentStructures`,
except that this returns the (last component of the) projection names instead of the parent names.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2d08652fd2284ba2892f4bc755b8dfe5a9f0a02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
