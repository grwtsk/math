# truncLT_eval_mem_range_extendFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4855cced-bcf8-1947-5286-7e5c07350e20",
  "kind": "theorem",
  "lexical_name": "truncLT_eval_mem_range_extendFun",
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
  "slug": "trunclt-eval-mem-range-extendfun--1f97c85b3ac3078d96442801",
  "source": {
    "blob": "0aa1f062fd3966dbb97233a890606a94ea604de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 795,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f97c85b3ac3078d964428018a0ab46d9c40d350b60e5ce2cab2441c92c7c730",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4855cced-bcf8-1947-5286-7e5c07350e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 795–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncLT_eval_mem_range_extendFun [IsOrderedAddMonoid R] [Archimedean R] {x : M}
    (hx : x ∉ f.val.domain) (c : FiniteArchimedeanClass M) :
    toLex (HahnSeries.truncLTLinearMap K c (ofLex (f.eval x))) ∈
    LinearMap.range (f.extendFun hx).toFun := by
  rw [extendFun, LinearMap.mem_range]
  by_cases h : ∃ y : f.val.domain, y.val - x ∈ ball K c
  · -- if `x` is not isolated within `c`, the truncation at `c` equals to truncating
    -- a nearby `y` in the domain
    obtain ⟨y, hy⟩ := h
    obtain ⟨z, hz⟩ := LinearMap.mem_range.mp (f.prop.truncLT_mem_range y c)
    refine ⟨⟨z.val, by simpa using Submodule.mem_sup_left z.prop⟩, ?_⟩
    rw [LinearPMap.toFun_eq_coe] at hz
    rw [LinearPMap.toFun_eq_coe, LinearPMap.supSpanSingleton_apply_mk_of_mem _ _ _ z.prop]
    rw [hz, toLex_inj]
    ext d
    obtain hdc | hdc := lt_or_ge d c
    · simp_rw [HahnSeries.coe_truncLTLinearMap, HahnSeries.coeff_truncLT_of_lt hdc]
      refine (f.evalCoeff_eq (Set.mem_of_mem_of_subset hy ?_)).symm
      simpa using (ball_strictAnti K hdc).le
    · simp_rw [HahnSeries.coe_truncLTLinearMap, HahnSeries.coeff_truncLT_of_le hdc]
  · -- if `x` is isolated within c, truncating has no effect because the trailing coefficients
    -- are already 0
    refine ⟨⟨x, by simpa using Submodule.mem_sup_right (Submodule.mem_span_singleton_self x)⟩, ?_⟩
    apply_fun ofLex
    rw [ofLex_toLex, LinearPMap.toFun_eq_coe, LinearPMap.supSpanSingleton_apply_self]
    ext d
    obtain hdc | hdc := lt_or_ge d c
    · rw [HahnSeries.coe_truncLTLinearMap, HahnSeries.coeff_truncLT_of_lt hdc]
    rw [HahnSeries.coe_truncLTLinearMap, HahnSeries.coeff_truncLT_of_le hdc, eval, ofLex_toLex]
    apply f.evalCoeff_eq_zero
    contrapose h
    obtain ⟨y, hy⟩ := h
    exact ⟨y, Set.mem_of_mem_of_subset hy (by simpa using (ball_strictAnti K).antitone hdc)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean#L795).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa1f062fd3966dbb97233a890606a94ea604de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
