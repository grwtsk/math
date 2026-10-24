# empty_frame_has_ordered_pivot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "533409c12f666301de90c76bc96084f7ecec11be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:955da27f-433e-e128-7254-488315c97482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec622615-dd95-378b-233e-b5cff2466b3d",
  "kind": "theorem",
  "lexical_name": "empty_frame_has_ordered_pivot",
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
  "slug": "empty-frame-has-ordered-pivot--1fd24c7a51c1db77e2106dcf",
  "source": {
    "blob": "533409c12f666301de90c76bc96084f7ecec11be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fd24c7a51c1db77e2106dcf5834420bf7ad3f7b6d0f2e4f5a20cbf156c07798",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec622615-dd95-378b-233e-b5cff2466b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empty_frame_has_ordered_pivot (n : ℕ) (A : Matrix (Fin 0) (Fin n) ℝ) :
    ∃ I : Fin 0 ↪o Fin n, orderedMinor A I ≠ 0 := by
  apply exists_orderedMinor_ne_zero_of_rank A
  exact Nat.eq_zero_of_le_zero (Matrix.rank_le_height A)

end

end FormalResearch.PositiveAtlas.Grassmannian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533409c12f666301de90c76bc96084f7ecec11be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
