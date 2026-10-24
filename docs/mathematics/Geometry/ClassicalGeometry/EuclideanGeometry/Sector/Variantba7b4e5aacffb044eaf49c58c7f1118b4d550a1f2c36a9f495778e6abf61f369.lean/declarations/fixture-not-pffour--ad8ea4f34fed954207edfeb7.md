# fixture_not_pfFour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eebecc34369d0a413bdec21c36422851d434871",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcce10f0-470d-a1d8-c5f5-48b36c05bff3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7241debb-6873-789a-546e-96a6291f794b",
  "kind": "theorem",
  "lexical_name": "fixture_not_pfFour",
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
  "slug": "fixture-not-pffour--ad8ea4f34fed954207edfeb7",
  "source": {
    "blob": "7eebecc34369d0a413bdec21c36422851d434871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 212,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad8ea4f34fed954207edfeb7101a6dedc512e4b72d551f12b480133e328cc9fe",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7241debb-6873-789a-546e-96a6291f794b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture_not_pfFour : ¬ PFOrder 4 (Quadratic.coefficient (3 / 2) 1) := by
  intro h
  let r : Fin 4 ↪o ℕ := OrderEmbedding.ofStrictMono (fun i => i.val) (fun _ _ hij => hij)
  let c : Fin 4 ↪o ℕ := OrderEmbedding.ofStrictMono (fun i => i.val + 1)
    (by intro i j hij; exact Nat.add_lt_add_right hij 1)
  have hn := h 4 le_rfl r c
  change 0 ≤ minor (Quadratic.coefficient (3 / 2) 1)
    (fun i : Fin 4 => i.val) (fun i : Fin 4 => i.val + 1) at hn
  rw [fixture_negative_orderFour] at hn
  norm_num at hn

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Sector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebecc34369d0a413bdec21c36422851d434871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
