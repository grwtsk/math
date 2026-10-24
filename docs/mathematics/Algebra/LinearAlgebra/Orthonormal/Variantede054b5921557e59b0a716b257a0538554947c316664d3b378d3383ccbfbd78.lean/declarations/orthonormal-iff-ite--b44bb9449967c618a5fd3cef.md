# orthonormal_iff_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48279d93f303ec50f88d434946d25f0f905135de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e2b9a1f-d1d4-f8d1-d817-786430008fa0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35d2d3a0-27b2-538e-b800-7bc87e40c941",
  "kind": "theorem",
  "lexical_name": "orthonormal_iff_ite",
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
  "slug": "orthonormal-iff-ite--b44bb9449967c618a5fd3cef",
  "source": {
    "blob": "48279d93f303ec50f88d434946d25f0f905135de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b44bb9449967c618a5fd3cefc306570dc62a9011108ccaa02a8a667482217c8f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35d2d3a0-27b2-538e-b800-7bc87e40c941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthonormal_iff_ite [DecidableEq ι] {v : ι → E} :
    Orthonormal 𝕜 v ↔ ∀ i j, ⟪v i, v j⟫ = if i = j then (1 : 𝕜) else (0 : 𝕜) := by
  constructor
  · intro hv i j
    split_ifs with h
    · simp [h, inner_self_eq_norm_sq_to_K, hv.norm_eq_one]
    · exact hv.inner_eq_zero h
  · intro h
    constructor
    · intro i
      have h' : ‖v i‖ ^ 2 = 1 ^ 2 := by
        rw [@norm_sq_eq_re_inner 𝕜, h i i]; simp
      have h₁ : 0 ≤ ‖v i‖ := norm_nonneg _
      have h₂ : (0 : ℝ) ≤ 1 := zero_le_one
      rwa [sq_eq_sq₀ h₁ h₂] at h'
    · intro i j hij
      simpa [hij] using h i j

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48279d93f303ec50f88d434946d25f0f905135de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
