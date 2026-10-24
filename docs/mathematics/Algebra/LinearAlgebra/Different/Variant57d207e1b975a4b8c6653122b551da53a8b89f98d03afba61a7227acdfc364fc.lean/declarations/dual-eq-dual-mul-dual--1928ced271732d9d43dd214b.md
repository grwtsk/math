# dual_eq_dual_mul_dual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3de3057323522e4a6bd480e44dd388fe06b7f2c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97e43b5a-3569-67dc-f478-36339d5bab2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7ebf4ac-4d7d-13b8-c444-8cc46095126f",
  "kind": "theorem",
  "lexical_name": "dual_eq_dual_mul_dual",
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
  "slug": "dual-eq-dual-mul-dual--1928ced271732d9d43dd214b",
  "source": {
    "blob": "3de3057323522e4a6bd480e44dd388fe06b7f2c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 444,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1928ced271732d9d43dd214b4b519f58097435ed4d9f324a38aa94cdc817e8f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7ebf4ac-4d7d-13b8-c444-8cc46095126f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dual_eq_dual_mul_dual :
    dual A K (1 : FractionalIdeal C⁰ M) = dual B L (1 : FractionalIdeal C⁰ M) *
        (dual A K (1 : FractionalIdeal B⁰ L)).extendedHom M C := by
  have := IsIntegralClosure.isLocalization B L M C
  have h : B⁰ ≤ Submonoid.comap (algebraMap B C) C⁰ :=
    nonZeroDivisors_le_comap_nonZeroDivisors_of_injective _ <| FaithfulSMul.algebraMap_injective _ _
  have h_alg {x : L} : algebraMap L M x = IsLocalization.map M (algebraMap B C) h x :=
    IsLocalization.algebraMap_apply_eq_map_map_submonoid B⁰ C L M x
  refine le_antisymm ?_ ?_
  · intro x hx
    rw [← spanSingleton_le_iff_mem, ← mul_inv_le_iff₀ (bot_lt_iff_ne_bot.mpr
      (by simp [-extendedHom'_apply])), ← map_inv₀, ← FractionalIdeal.coe_le_coe,
        extendedHom'_apply, coe_mul, coe_spanSingleton, coe_extended_eq_span, coe_dual_one,
        span_mul_span, span_le]
    rintro _ ⟨x, rfl, _, ⟨a, ha, rfl⟩, rfl⟩ _ ⟨m, rfl⟩
    simp only [← h_alg, mul_comm _ (algebraMap _ _ _), ← Algebra.smul_def a, map_smul,
      LinearMap.toSpanSingleton_apply, Algebra.smul_def m, mul_one,
      LinearMap.smul_apply, traceForm_apply, smul_eq_mul]
    rw [← FractionalIdeal.coe_one (S := B⁰)]
    refine (mem_inv_iff (by simp)).mp ha _ (trace_mem_dual_one A K L B C M _ ?_)
    exact Algebra.smul_def m x ▸ smul_mem _ _ hx
  · rw [← FractionalIdeal.coe_le_coe, coe_mul, extendedHom'_apply,
      coe_extended_eq_span, ← span_eq (coeToSubmodule _), span_mul_span, span_le]
    rintro _ ⟨a, ha, _, ⟨b, hb, rfl⟩, rfl⟩
    simp only [SetLike.mem_coe, mem_coe, ← h_alg, mul_comm a, ← Algebra.smul_def] at ha hb ⊢
    exact smul_mem_dual_one A K L B C M hb ha

end FractionalIdeal

section IsIntegrallyClosed

variable (B)
variable [IsIntegrallyClosed A] [IsDedekindDomain B] [IsTorsionFree A B]

/-- The different ideal of an extension of integral domains `B/A` is the inverse of the dual of `A`
as an ideal of `B`. See `coeIdeal_differentIdeal` and `coeSubmodule_differentIdeal`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de3057323522e4a6bd480e44dd388fe06b7f2c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
