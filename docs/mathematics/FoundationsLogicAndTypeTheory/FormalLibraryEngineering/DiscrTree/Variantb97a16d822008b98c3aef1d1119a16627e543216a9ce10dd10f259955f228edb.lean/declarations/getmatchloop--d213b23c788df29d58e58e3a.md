# getMatchLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea991acd039c7bd361777507ec8714c15b360d47e032f4d871cadd4be3d00e6c",
  "kind": "def",
  "lexical_name": "getMatchLoop",
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
  "slug": "getmatchloop--d213b23c788df29d58e58e3a",
  "source": {
    "blob": "554dcba4247b58a289e1ca45c09b0f3c2cc0fd71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d213b23c788df29d58e58e3a64d6bfd26fd89a2e61339c307015d743dee2a87c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea991acd039c7bd361777507ec8714c15b360d47e032f4d871cadd4be3d00e6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getMatchLoop (todo : Array Expr) (c : Trie α) (result : Array α) : Array α :=
  match c with
  | .node vs cs =>
    let csize := cs.size
    if todo.isEmpty then
      result ++ vs
    else if h : csize = 0 then
      result
    else
      let e     := etaReduce todo.back!
      let todo  := todo.pop
      let first := cs[0] /- Recall that `Key.star` is the minimal key -/
      if csize = 1 then
        /- Special case: only one child node -/
        if first.1 == .star then
          getMatchLoop todo first.2 result
        else if first.1 == getKey e then
          getMatchLoop (pushArgsTodo todo e) first.2 result
        else
          result
      else
        /- We must always visit `Key.star` edges since they are wildcards.
          Thus, `todo` is not used linearly when there is `Key.star` edge
          and there is an edge for `k` and `k != Key.star`. -/
        let result := if first.1 == .star then
          getMatchLoop todo first.2 result
        else
          result
        match findKey? cs (getKey e) with
        | none   => result
        | some c => getMatchLoop (pushArgsTodo todo e) c.2 result

/--
Retrieves all values whose patterns match the expression `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554dcba4247b58a289e1ca45c09b0f3c2cc0fd71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
