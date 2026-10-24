# rpow_eq_const_mul_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15fc5276-ebe6-ac9b-b3e8-4711140e96c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2213568-3397-695d-184f-8dd4ce8aff60",
  "kind": "lemma",
  "lexical_name": "rpow_eq_const_mul_integral",
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
  "slug": "rpow-eq-const-mul-integral--eae471d93558fb1b5e9961b0",
  "source": {
    "blob": "1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 336,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae471d93558fb1b5e9961b0c5519b1d349eb4c4375285b9e8f0a5a6d6c9c0be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2213568-3397-695d-184f-8dd4ce8aff60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_eq_const_mul_integral (hp : p ∈ Ioo 0 1) (hx : 0 ≤ x) :
    x ^ p = (∫ t in Ioi 0, rpowIntegrand₀₁ p t 1)⁻¹ * ∫ t in Ioi 0, rpowIntegrand₀₁ p t x := by
  rcases eq_or_lt_of_le' hx with hx_zero | _
  case inl =>
    push _ ∈ _ at hp
    simp [hx_zero, Real.zero_rpow (by linarith)]
  case inr =>
    have : ∫ t in Ioi 0, rpowIntegrand₀₁ p t 1 ≠ 0 :=
      ne_of_gt <| integral_rpowIntegrand₀₁_one_pos hp
    rw [integral_rpowIntegrand₀₁_eq_rpow_mul_const hp hx, mul_comm, mul_assoc, mul_inv_cancel₀
      this, mul_one]

/-- The integral representation of the function `x ↦ x ^ p` (where `p ∈ (0, 1)`) . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
