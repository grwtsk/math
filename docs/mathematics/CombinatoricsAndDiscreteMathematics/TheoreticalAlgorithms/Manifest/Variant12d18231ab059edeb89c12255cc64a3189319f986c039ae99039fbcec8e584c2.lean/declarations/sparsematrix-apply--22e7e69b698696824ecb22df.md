# SparseMatrix.apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:459dfbeccc1631db9b0c5562999106b475d721733dd47e64d6169ba5a9897704",
  "kind": "def",
  "lexical_name": "SparseMatrix.apply",
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
  "slug": "sparsematrix-apply--22e7e69b698696824ecb22df",
  "source": {
    "blob": "2a430afb0a6b8588b6d59739e2a0deb5402ed498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 509,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e7e69b698696824ecb22df5821f4b0bf040c138604c8667a20f8139adf9e32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:459dfbeccc1631db9b0c5562999106b475d721733dd47e64d6169ba5a9897704`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SparseMatrix.apply (matrix : SparseMatrix)
    (vector : SparseVector) : Option SparseVector := do
  if _dimensions : matrix.columns = vector.dimension then pure () else none
  let entries := (List.range matrix.rows).filterMap fun row =>
    let value := matrix.entries.foldl (fun result entry =>
      if entry.row = row then
        ExactComplex.add result
          (ExactComplex.mul entry.value (vector.valueAt entry.column))
      else result) ExactComplex.zero
    if value = ExactComplex.zero then none else some { index := row, value }
  let output := { dimension := matrix.rows, entries }
  if _valid : output.Valid then some output else none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a430afb0a6b8588b6d59739e2a0deb5402ed498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
