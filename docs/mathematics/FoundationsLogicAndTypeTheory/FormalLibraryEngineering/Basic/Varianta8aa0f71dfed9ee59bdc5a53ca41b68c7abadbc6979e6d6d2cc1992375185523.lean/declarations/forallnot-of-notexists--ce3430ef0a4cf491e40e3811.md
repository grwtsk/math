# forallNot_of_notExists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed7f3d23e65c322d515a5650e26516dc7831f943fde515209566d9ce2ae856a4",
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
  "slug": "forallnot-of-notexists--ce3430ef0a4cf491e40e3811",
  "source": {
    "blob": "030b7089fd4e3f5264c0b786eeccbc78ee0fc05b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 451,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce3430ef0a4cf491e40e38113112b4acfe6e8eb7a263eac7bf8551f37110e049",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed7f3d23e65c322d515a5650e26516dc7831f943fde515209566d9ce2ae856a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–481.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `030b7089fd4e3f5264c0b786eeccbc78ee0fc05b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
