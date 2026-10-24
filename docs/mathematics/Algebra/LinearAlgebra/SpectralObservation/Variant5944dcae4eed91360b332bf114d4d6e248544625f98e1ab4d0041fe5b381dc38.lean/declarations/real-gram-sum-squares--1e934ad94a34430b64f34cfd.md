# real_gram_sum_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c244d27b289ed5b524d51a390407b7a3b823be1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ead3caaa-d686-0894-d363-3d8aa8b75557",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3b85496-77df-e39f-e2b6-a13d45aa5427",
  "kind": "theorem",
  "lexical_name": "real_gram_sum_squares",
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
  "slug": "real-gram-sum-squares--1e934ad94a34430b64f34cfd",
  "source": {
    "blob": "c244d27b289ed5b524d51a390407b7a3b823be1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e934ad94a34430b64f34cfdd87ed544c660821583c40b877e6681a42ee2231e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b85496-77df-e39f-e2b6-a13d45aa5427`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_gram_sum_squares (F : Matrix m n ℝ) (v : n → ℝ) :
    v ⬝ᵥ (featureGram F *ᵥ v) = ∑ k, ((F *ᵥ v) k) ^ 2 := by
  change star v ⬝ᵥ (featureGram F *ᵥ v) = _
  rw [featureGram, ← mulVec_mulVec, dotProduct_mulVec, vecMul_conjTranspose, star_star]
  simp [dotProduct, pow_two]

omit [Fintype n] in
variable [Finite n] in
/-- Complex feature Gram matrices are positive semidefinite in Mathlib's exact order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c244d27b289ed5b524d51a390407b7a3b823be1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
