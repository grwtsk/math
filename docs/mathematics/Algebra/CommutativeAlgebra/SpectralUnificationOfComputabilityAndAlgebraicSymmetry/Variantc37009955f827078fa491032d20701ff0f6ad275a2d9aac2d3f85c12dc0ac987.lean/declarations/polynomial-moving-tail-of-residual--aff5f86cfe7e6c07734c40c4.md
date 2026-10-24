# polynomial_moving_tail_of_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa2cd764ec27441466b2bafd5f9beb507a4a4654",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8766d42b-4a86-6975-86d2-15f7b35a9d3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6253126-ff89-66d9-feee-6d4332179220",
  "kind": "theorem",
  "lexical_name": "polynomial_moving_tail_of_residual",
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
  "slug": "polynomial-moving-tail-of-residual--aff5f86cfe7e6c07734c40c4",
  "source": {
    "blob": "fa2cd764ec27441466b2bafd5f9beb507a4a4654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff5f86cfe7e6c07734c40c46972ffd726e30c3469bb6d80dd4794baee34f861",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6253126-ff89-66d9-feee-6d4332179220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_moving_tail_of_residual (h : PolynomialResidualTailUpperBound) :
    PolynomialMovingTailUpperBound := by
  obtain ⟨m, D, hD, R, hR, hb⟩ := h
  obtain ⟨S, _hS, hp⟩ := moving_prefix_eventually_abs_le_one
  refine ⟨m, D + 1, by positivity, max R S, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left R S).trans hA
  have hSA := (le_max_right R S).trans hA
  have hA1 : 1 ≤ A := hR.trans hRA
  have hpow : 1 ≤ A ^ m := one_le_pow₀ hA1
  have hprefix := (abs_le.mp (hp A hSA)).1
  have hres := hb A hRA
  rw [mertensResidual_eq_prefix_add_movingTail A hA1] at hres
  nlinarith

/-- Exact equivalence of the two polynomial hypotheses; neither is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2cd764ec27441466b2bafd5f9beb507a4a4654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
