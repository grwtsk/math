# getUnify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cc0182ab5bbc0e48d880989fa7c2ef52dcb5f4744c11e9df535fb6795d8a3c6",
  "kind": "def",
  "lexical_name": "getUnify",
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
  "slug": "getunify--e643725043bde11affe831df",
  "source": {
    "blob": "bdfbcdff9d7ae3dcc369b2d637a4dec8cfe1f14a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 567,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e643725043bde11affe831df2c42f06eb459e12966bf084f76eba65cbd8f9770",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cc0182ab5bbc0e48d880989fa7c2ef52dcb5f4744c11e9df535fb6795d8a3c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getUnify (d : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withReducible do
    let (k, args) ← getUnifyKeyArgs e (root := true)
    match k with
    | .star => d.root.foldlM (init := #[]) fun result k c => process k.arity #[] c result
    | _ =>
      let result := getStarResult d
      match d.root.find? k with
      | none   => return result
      | some c => process 0 args c result
where
  process (skip : Nat) (todo : Array Expr) (c : Trie α) (result : Array α) : MetaM (Array α) := do
    match skip, c with
    | skip+1, .node _  cs =>
      if cs.isEmpty then
        return result
      else
        cs.foldlM (init := result) fun result ⟨k, c⟩ => process (skip + k.arity) todo c result
    | 0, .node vs cs => do
      if todo.isEmpty then
        return result ++ vs
      else if cs.isEmpty then
        return result
      else
        let e     := todo.back!
        let todo  := todo.pop
        let (k, args) ← getUnifyKeyArgs e (root := false)
        let visitStar (result : Array α) : MetaM (Array α) :=
          let first := cs[0]!
          if first.1 == .star then
            process 0 todo first.2 result
          else
            return result
        let visitNonStar (k : Key) (args : Array Expr) (result : Array α) : MetaM (Array α) :=
          match findKey cs k with
          | none   => return result
          | some c => process 0 (todo ++ args) c.2 result
        match k with
        | .star  => cs.foldlM (init := result) fun result ⟨k, c⟩ => process k.arity todo c result
        | _      => visitNonStar k args (← visitStar result)

end Lean.Meta.DiscrTree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdfbcdff9d7ae3dcc369b2d637a4dec8cfe1f14a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
