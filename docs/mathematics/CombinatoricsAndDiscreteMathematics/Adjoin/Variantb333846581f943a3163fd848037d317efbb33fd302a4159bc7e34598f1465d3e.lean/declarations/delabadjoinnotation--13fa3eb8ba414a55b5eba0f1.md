# delabAdjoinNotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6756ad83bf2bdb33aee1a47fea170647ffe9e8f377cb90559c807ef566ead067",
  "kind": "def",
  "lexical_name": "delabAdjoinNotation",
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
  "slug": "delabadjoinnotation--13fa3eb8ba414a55b5eba0f1",
  "source": {
    "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 476,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13fa3eb8ba414a55b5eba0f14c74d64c71d3b69e0bce3f7c8cc67cf504c3244a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6756ad83bf2bdb33aee1a47fea170647ffe9e8f377cb90559c807ef566ead067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def delabAdjoinNotation : Delab := whenPPOption getPPNotation do
  let e ← getExpr
  guard <| e.isAppOfArity ``adjoin 6
  let F ← withNaryArg 0 delab
  let xs ← withNaryArg 5 delabInsertArray
  `($F⟮$(xs.toArray),*⟯)
where
  delabInsertArray : DelabM (List Term) := do
    let e ← getExpr
    if e.isAppOfArity ``EmptyCollection.emptyCollection 2 then
      return []
    else if e.isAppOfArity ``singleton 4 then
      let x ← withNaryArg 3 delab
      return [x]
    else if e.isAppOfArity ``insert 5 then
      let x ← withNaryArg 3 delab
      let xs ← withNaryArg 4 delabInsertArray
      return x :: xs
    else failure

section AdjoinSimple

variable (α : E)

-- Porting note: in all the theorems below, mathport translated `F⟮α⟯` into `F⟮⟯`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256d3ace4f5b381f78ba64127f3d186c2778768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
