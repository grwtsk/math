# jacobiSum_mul_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2df05512d169e46bf830374374bf313789010251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84ecf9c0-0841-5b06-f929-178c11938175",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba431c7c-2171-da1c-9f67-86aab7f65185",
  "kind": "theorem",
  "lexical_name": "jacobiSum_mul_nontrivial",
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
  "slug": "jacobisum-mul-nontrivial--a1a54886c97ccfefd1df117a",
  "source": {
    "blob": "2df05512d169e46bf830374374bf313789010251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a54886c97ccfefd1df117a289178a2dfeb5fe8b982bbe98ce3a130d23621bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba431c7c-2171-da1c-9f67-86aab7f65185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSum_mul_nontrivial {χ φ : MulChar F R} (h : χ * φ ≠ 1) (ψ : AddChar F R) :
    gaussSum (χ * φ) ψ * jacobiSum χ φ = gaussSum χ ψ * gaussSum φ ψ := by
  classical
  rw [gaussSum_mul _ _ ψ, sum_eq_sum_sdiff_singleton_add (mem_univ (0 : F))]
  conv =>
    enter [2, 2, 2, x]
    rw [zero_sub, neg_eq_neg_one_mul x, map_mul, mul_left_comm (χ x) (φ (-1)),
      ← MulChar.mul_apply, ψ.map_zero_eq_one, mul_one]
  rw [← mul_sum _ _ (φ (-1)), MulChar.sum_eq_zero_of_ne_one h, mul_zero, add_zero]
  have sum_eq : ∀ t ∈ univ \ {0}, (∑ x : F, χ x * φ (t - x)) * ψ t =
      (∑ y : F, χ (t * y) * φ (t - (t * y))) * ψ t := by
    intro t ht
    simp only [mem_sdiff, mem_univ, mem_singleton, true_and] at ht
    exact congrArg (· * ψ t) (Equiv.sum_comp (Equiv.mulLeft₀ t ht) _).symm
  simp_rw [← sum_mul, sum_congr rfl sum_eq, ← mul_one_sub, map_mul, mul_assoc]
  conv => enter [2, 2, t, 1, 2, x, 2]; rw [← mul_assoc, mul_comm (χ x) (φ t)]
  simp_rw [← mul_assoc, ← MulChar.mul_apply, mul_assoc, ← mul_sum, mul_right_comm]
  rw [← jacobiSum, ← sum_mul, gaussSum, sum_eq_sum_sdiff_singleton_add (mem_univ (0 : F)),
    (χ * φ).map_zero, zero_mul, add_zero]

end FiniteField

section field_field

variable {F F' : Type*} [Fintype F] [Field F] [Field F']

/-- If `χ` and `φ` are multiplicative characters on a finite field `F` with values
in another field `F'` and such that `χφ` is nontrivial, then `J(χ,φ) = g(χ) * g(φ) / g(χφ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2df05512d169e46bf830374374bf313789010251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
