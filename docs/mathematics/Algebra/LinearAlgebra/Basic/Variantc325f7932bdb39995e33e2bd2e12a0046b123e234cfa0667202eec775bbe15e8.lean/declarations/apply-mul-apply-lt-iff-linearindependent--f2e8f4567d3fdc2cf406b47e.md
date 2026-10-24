# apply_mul_apply_lt_iff_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b936a4c813ee9e5ce378488e6a7c539c4641b693",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 912,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e342685c-3617-4a82-08a0-8ef43008fe1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25123f0b-dcd1-a1ae-b16e-64db8374af5c",
  "kind": "lemma",
  "lexical_name": "apply_mul_apply_lt_iff_linearIndependent",
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
  "slug": "apply-mul-apply-lt-iff-linearindependent--f2e8f4567d3fdc2cf406b47e",
  "source": {
    "blob": "b936a4c813ee9e5ce378488e6a7c539c4641b693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 938,
    "line": 912,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e8f4567d3fdc2cf406b47e67d6e913ce3aa967b6cb0f7abac0856cb0dad363",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25123f0b-dcd1-a1ae-b16e-64db8374af5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 912–938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_mul_apply_lt_iff_linearIndependent (hp : ∀ x, x ≠ 0 → 0 < B x x) (x y : M) :
    B x y * B y x < B x x * B y y ↔ LinearIndependent R ![x, y] := by
  have hle z : 0 ≤ B z z := by obtain rfl | hz := eq_or_ne z 0 <;> simp [le_of_lt, *]
  constructor
  · contrapose!
    intro h
    rw [LinearIndependent.pair_iff] at h
    push Not at h
    obtain ⟨r, s, hl, h0⟩ := h
    by_cases hr : r = 0; · simp_all
    by_cases hs : s = 0; · simp_all
    suffices
        (B (r • x) (r • x)) * (B (s • y) (s • y)) = (B (r • x) (s • y)) * (B (s • y) (r • x)) by
      simp only [map_smul, smul_apply, smul_eq_mul] at this
      rw [show r * (r * (B x) x) * (s * (s * (B y) y)) = (r * r * s * s) * ((B x) x * (B y) y) by
        ring, show s * (r * (B x) y) * (r * (s * (B y) x)) = (r * r * s * s) * ((B x) y * (B y) x)
        by ring] at this
      have hrs : r * r * s * s ≠ 0 := by simp [hr, hs]
      exact le_of_eq <| mul_right_injective₀ hrs this
    simp [show s • y = - r • x by rwa [neg_smul, ← add_eq_zero_iff_eq_neg']]
  · contrapose!
    intro h
    exact not_linearIndependent_of_apply_mul_apply_eq B hp x y (le_antisymm
      (apply_mul_apply_le_of_forall_zero_le B hle x y) h)

/-- Strict **Cauchy-Schwarz** is equivalent to linear independence for positive definite symmetric
forms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean#L912).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b936a4c813ee9e5ce378488e6a7c539c4641b693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
