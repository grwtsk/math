# exists_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e71969f4a459709b7a6bba807291c45c7ba81d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca65cb1b-2c0c-63ff-0d4e-3da11e5a63fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb5cb7d5-be56-5499-a601-b89b8587a674",
  "kind": "theorem",
  "lexical_name": "exists_floor",
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
  "slug": "exists-floor--3d361f1a057dd5937ec53b74",
  "source": {
    "blob": "3e71969f4a459709b7a6bba807291c45c7ba81d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 183,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d361f1a057dd5937ec53b74cf0c3f7e783c1b7ac7df018b87d837211e3e4e3f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb5cb7d5-be56-5499-a601-b89b8587a674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_floor (x : R) : ∃ fl : ℤ, ∀ z : ℤ, z ≤ fl ↔ (z : R) ≤ x := by
  apply exists_floor'
  · obtain ⟨n, hn⟩ := exists_int_lt x
    exact ⟨n, hn.le⟩
  · obtain ⟨n, hn⟩ := exists_int_gt x
    exact ⟨n, hn.le⟩

end StrictOrderedRing

section LinearOrderedSemiring
variable [Semiring R] [LinearOrder R] [IsStrictOrderedRing R] [Archimedean R] [ExistsAddOfLE R]
  {x y : R}

/-- Every x greater than or equal to 1 is between two successive
natural-number powers of every y greater than one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e71969f4a459709b7a6bba807291c45c7ba81d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
