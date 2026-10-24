# commonScale_two_left_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bca73e1c0ed3fe670d6108c3ba20b9b2c0fc70f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6263f34c-a8c5-c539-b042-c3f8568a0f9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0404646a-a0aa-a493-ca79-8f113ad4d9f3",
  "kind": "theorem",
  "lexical_name": "commonScale_two_left_empty",
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
  "slug": "commonscale-two-left-empty--8588a0208ade7dcaad8cf0c3",
  "source": {
    "blob": "1bca73e1c0ed3fe670d6108c3ba20b9b2c0fc70f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 50,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8588a0208ade7dcaad8cf0c3e33fb82a19e730996a162893f195620a03461b46",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0404646a-a0aa-a493-ca79-8f113ad4d9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commonScale_two_left_empty (N u v : ℕ) (hu : 1 ≤ u) (h : N / max u v = 0) :
    N / max (2*u) v = 0 := by
  have hh := (commonScale_two_left_bounds N u v hu).2
  exact Nat.eq_zero_of_le_zero (h ▸ hh)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bca73e1c0ed3fe670d6108c3ba20b9b2c0fc70f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
