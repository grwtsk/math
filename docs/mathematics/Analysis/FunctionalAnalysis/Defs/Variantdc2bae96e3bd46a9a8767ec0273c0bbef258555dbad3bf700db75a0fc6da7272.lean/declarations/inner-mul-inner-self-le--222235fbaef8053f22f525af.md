# inner_mul_inner_self_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b53a66066a81ec017b5e50074c6e7d68d44b972",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:908b9cbe-7f1c-5f37-543d-7e7119aacad6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43d4fa39-cb22-dc93-7b07-d824d4c55cf0",
  "kind": "theorem",
  "lexical_name": "inner_mul_inner_self_le",
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
  "slug": "inner-mul-inner-self-le--222235fbaef8053f22f525af",
  "source": {
    "blob": "5b53a66066a81ec017b5e50074c6e7d68d44b972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 349,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:222235fbaef8053f22f525af1a2e90b3a03c6db3fb4d172b4487b28ab256abcf",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43d4fa39-cb22-dc93-7b07-d824d4c55cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_mul_inner_self_le (x y : F) : ‖⟪x, y⟫‖ * ‖⟪y, x⟫‖ ≤ re ⟪x, x⟫ * re ⟪y, y⟫ := by
  suffices discrim (normSqF x) (2 * ‖⟪x, y⟫_𝕜‖) (normSqF y) ≤ 0 by
    rw [norm_inner_symm y x]
    rw [discrim, normSq, normSq, sq] at this
    linarith
  refine discrim_le_zero fun t ↦ ?_
  by_cases hzero : ⟪x, y⟫ = 0
  · simp only [mul_assoc, ← sq, hzero, norm_zero, mul_zero, zero_mul, add_zero, ge_iff_le]
    obtain ⟨hx, hy⟩ : (0 ≤ normSqF x ∧ 0 ≤ normSqF y) := ⟨inner_self_nonneg, inner_self_nonneg⟩
    positivity
  · have hzero' : ‖⟪x, y⟫‖ ≠ 0 := norm_ne_zero_iff.2 hzero
    convert cauchy_schwarz_aux' (𝕜 := 𝕜) (⟪x, y⟫ • x) y (t / ‖⟪x, y⟫‖) using 3
    · field_simp
      rw [← sq, normSq, normSq, inner_smul_right, inner_smul_left, ← mul_assoc _ _ ⟪x, x⟫,
        mul_conj]
      nth_rw 2 [sq]
      rw [← ofReal_mul, re_ofReal_mul]
      ring
    · field_simp
      rw [inner_smul_left, mul_comm _ ⟪x, y⟫_𝕜, mul_conj, ← ofReal_pow, ofReal_re]
      ring

/-- (Semi)norm constructed from an `PreInnerProductSpace.Core` structure, defined to be the square
root of the scalar product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b53a66066a81ec017b5e50074c6e7d68d44b972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
