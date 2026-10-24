# BoolMatrix.entry_warshallStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eaf264e-cadb-ca5f-98a6-b713a0725b88",
  "kind": "theorem",
  "lexical_name": "BoolMatrix.entry_warshallStep",
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
  "slug": "boolmatrix-entry-warshallstep--e966dfbb0d48b24c445ff854",
  "source": {
    "blob": "9e3299a6a27d3a735b9823d7fb94d3782ab50c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e966dfbb0d48b24c445ff854a4e9cd7c04bd44994237e039a7ec3c6c1671830c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eaf264e-cadb-ca5f-98a6-b713a0725b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem BoolMatrix.entry_warshallStep
    {n : Nat}
    (k : Fin n)
    (A : BoolMatrix n n)
    (i j : Fin n) :
    BoolMatrix.entry (BoolMatrix.warshallStep k A) i j =
      (BoolMatrix.entry A i j ||
        (BoolMatrix.entry A i k && BoolMatrix.entry A k j)) :=
  rfl

/--
`warshallAux limit h A` performs Warshall updates for all intermediate
vertices with indices `< limit`.

The proof `h : limit ≤ n` ensures that each intermediate index is a valid
`Fin n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e3299a6a27d3a735b9823d7fb94d3782ab50c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
