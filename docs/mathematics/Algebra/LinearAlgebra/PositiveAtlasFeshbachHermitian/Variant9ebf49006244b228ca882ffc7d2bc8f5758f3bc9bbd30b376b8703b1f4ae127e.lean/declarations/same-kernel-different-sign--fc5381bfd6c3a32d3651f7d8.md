# same_kernel_different_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7118cc379b691d7f59706374acb536a6293673cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd4a36a0-6d83-2fb9-efc4-c169f3fb308e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7fc9656-f2e9-a809-8bab-b0097e7f3e9a",
  "kind": "theorem",
  "lexical_name": "same_kernel_different_sign",
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
  "slug": "same-kernel-different-sign--fc5381bfd6c3a32d3651f7d8",
  "source": {
    "blob": "7118cc379b691d7f59706374acb536a6293673cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc5381bfd6c3a32d3651f7d8f7d1222007792647cc5e93dd1bf9b7164289dc93",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7fc9656-f2e9-a809-8bab-b0097e7f3e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_kernel_different_sign :
    (∀ x : Fin 2 → ℝ,
      positiveDiagonal.mulVec x = 0 ↔ indefiniteDiagonal.mulVec x = 0) ∧
      positiveDiagonal.PosDef ∧ ¬ indefiniteDiagonal.PosSemidef := by
  constructor
  · intro x
    simp only [positiveDiagonal, Matrix.one_mulVec, indefiniteDiagonal,
      funext_iff, Pi.zero_apply, Matrix.mulVec_diagonal]
    constructor
    · intro hx i
      rw [hx i]
      simp
    · intro hx i
      fin_cases i
      · simpa using hx 0
      · simpa using hx 1
  · constructor
    · exact Matrix.PosDef.one
    · rw [indefiniteDiagonal, Matrix.posSemidef_diagonal_iff]
      intro h
      have hzero := h (0 : Fin 2)
      norm_num at hzero

end

end FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7118cc379b691d7f59706374acb536a6293673cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
