# Subalgebra.SeparatesPoints.isROrC_to_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "814bb20ff7e9737c105a088ed3b95aa65208022c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:388c6c4f-ec3a-12f5-2f7c-331a8068636a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ba44fbb-4ec6-ae9c-074a-7680c790d17d",
  "kind": "theorem",
  "lexical_name": "Subalgebra.SeparatesPoints.isROrC_to_real",
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
  "slug": "subalgebra-separatespoints-isrorc-to-real--eb99e4608c973dd235513df3",
  "source": {
    "blob": "814bb20ff7e9737c105a088ed3b95aa65208022c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 350,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb99e4608c973dd235513df3d6c16f89c9d6cf66a9e771df35f80ec5a16b25e6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ba44fbb-4ec6-ae9c-074a-7680c790d17d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subalgebra.SeparatesPoints.isROrC_to_real {A : StarSubalgebra 𝕜 C(X, 𝕜)}
    (hA : A.SeparatesPoints) :
      ((A.restrictScalars ℝ).comap
        (ofRealAm.compLeftContinuous ℝ continuous_ofReal)).SeparatesPoints := by
  intro x₁ x₂ hx
  -- Let `f` in the subalgebra `A` separate the points `x₁`, `x₂`
  obtain ⟨_, ⟨f, hfA, rfl⟩, hf⟩ := hA hx
  let F : C(X, 𝕜) := f - const _ (f x₂)
  -- Subtract the constant `f x₂` from `f`; this is still an element of the subalgebra
  have hFA : F ∈ A := by
    refine' A.sub_mem hfA (@Eq.subst _ (· ∈ A) _ _ _ <| A.smul_mem A.one_mem <| f x₂)
    ext1
    simp only [coe_smul, coe_one, smul_apply, one_apply, Algebra.id.smul_eq_mul, mul_one,
      const_apply]
  -- Consider now the function `fun x ↦ |f x - f x₂| ^ 2`
  refine' ⟨_, ⟨(⟨IsROrC.normSq, continuous_normSq⟩ : C(𝕜, ℝ)).comp F, _, rfl⟩, _⟩
  · -- This is also an element of the subalgebra, and takes only real values
    rw [SetLike.mem_coe, Subalgebra.mem_comap]
    convert (A.restrictScalars ℝ).mul_mem hFA (star_mem hFA : star F ∈ A)
    ext1
    exact (IsROrC.mul_conj (K := 𝕜) _).symm
  · -- And it also separates the points `x₁`, `x₂`
    have : f x₁ - f x₂ ≠ 0 := sub_ne_zero.mpr hf
    simpa only [comp_apply, coe_sub, coe_const, sub_apply, coe_mk, sub_self, map_zero, Ne.def,
      normSq_eq_zero, const_apply] using this
#align subalgebra.separates_points.is_R_or_C_to_real Subalgebra.SeparatesPoints.isROrC_to_real

variable [CompactSpace X]

/-- The Stone-Weierstrass approximation theorem, `IsROrC` version, that a star subalgebra `A` of
`C(X, 𝕜)`, where `X` is a compact topological space and `IsROrC 𝕜`, is dense if itseparates
points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814bb20ff7e9737c105a088ed3b95aa65208022c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
