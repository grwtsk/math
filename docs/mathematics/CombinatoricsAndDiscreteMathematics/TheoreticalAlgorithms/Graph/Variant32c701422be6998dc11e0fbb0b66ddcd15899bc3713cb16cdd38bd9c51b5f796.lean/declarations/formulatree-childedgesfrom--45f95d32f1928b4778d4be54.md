# FormulaTree.childEdgesFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00b01e8d45044c8604ff29fd156c178c866881f5144e864e13006af076c4e9ba",
  "kind": "def",
  "lexical_name": "FormulaTree.childEdgesFrom",
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
  "slug": "formulatree-childedgesfrom--45f95d32f1928b4778d4be54",
  "source": {
    "blob": "73110526a494a44c7cd420be444b5a061ae030bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45f95d32f1928b4778d4be54e3bb668c6d4d87ed48428e382af80238a287b7ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00b01e8d45044c8604ff29fd156c178c866881f5144e864e13006af076c4e9ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FormulaTree.childEdgesFrom (root : Nat) : FormulaTree α → List (Nat × Nat)
  | .var _ => []
  | .falsum => []
  | .truth => []
  | .neg p =>
      let child := root + 1
      [(root, child)] ++ FormulaTree.childEdgesFrom child p
  | .conj p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .disj p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .impl p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .eqv p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .nand p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q

/--
A Boolean expression tree as a Boolean adjacency matrix.

A `1` at `(i, j)` means that node `i` is the parent of node `j`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73110526a494a44c7cd420be444b5a061ae030bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
