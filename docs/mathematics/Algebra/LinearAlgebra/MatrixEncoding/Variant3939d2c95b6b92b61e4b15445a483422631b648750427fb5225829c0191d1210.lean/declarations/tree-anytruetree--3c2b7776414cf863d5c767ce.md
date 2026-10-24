# Tree.anyTrueTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a0ee4198c0c1b1cbcc1bde7bcce3c1623af8e3fa044a26fd8e6af01c2ca7862",
  "kind": "def",
  "lexical_name": "Tree.anyTrueTree",
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
  "slug": "tree-anytruetree--3c2b7776414cf863d5c767ce",
  "source": {
    "blob": "dfb0b8e243cbd42f0d9ceabe670a6fedfdc17cc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c2b7776414cf863d5c767ce2216f8245bca701502caf2d0de9cac5def10a113",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a0ee4198c0c1b1cbcc1bde7bcce3c1623af8e3fa044a26fd8e6af01c2ca7862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Tree.anyTrueTree
    {rows cols : Nat}
    (A : Matrix rows cols) :
    Tree (Fin rows × Fin cols) :=
  Tree.disjList
    ((List.finRange rows).map
      (fun i =>
        Tree.disjList
          ((List.finRange cols).map
            (fun j =>
              match A i j with
              | true => .truth
              | false => .falsum))))

end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfb0b8e243cbd42f0d9ceabe670a6fedfdc17cc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
