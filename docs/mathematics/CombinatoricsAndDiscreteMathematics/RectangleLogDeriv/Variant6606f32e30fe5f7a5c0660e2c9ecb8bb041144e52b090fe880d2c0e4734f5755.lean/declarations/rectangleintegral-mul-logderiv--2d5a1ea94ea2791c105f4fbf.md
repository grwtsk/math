# rectangleIntegral'_mul_logDeriv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db30df619c414827f45a20b95fd173edd3600ee1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:414927e4-7434-0754-c782-7a2c0a2fa5a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31cba41e-c693-3ad7-4956-9739bd06500b",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral'_mul_logDeriv'",
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
  "slug": "rectangleintegral-mul-logderiv--2d5a1ea94ea2791c105f4fbf",
  "source": {
    "blob": "db30df619c414827f45a20b95fd173edd3600ee1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 365,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d5a1ea94ea2791c105f4fbfd084de3992f0fa38f4be9ebe576bba7d226d275d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31cba41e-c693-3ad7-4956-9739bd06500b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral'_mul_logDeriv' {f g : ℂ → ℂ} {z w : ℂ} (hre : z.re ≤ w.re)
    (him : z.im ≤ w.im)
    (hf : AnalyticOnNhd ℂ f (Rectangle z w)) (hg : AnalyticOnNhd ℂ g (Rectangle z w))
    (hborder : ∀ s ∈ RectangleBorder z w, f s ≠ 0) :
    RectangleIntegral' (fun s => g s * logDeriv f s) z w
      = ∑ ρ ∈ (finite_zeros_rectangle hf (rectangleBorder_subset_rectangle z w
          (show z ∈ RectangleBorder z w from Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))
          (hborder z (Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))).toFinset,
        (analyticOrderNatAt f ρ : ℂ) * g ρ := by
  classical
  set hfin := finite_zeros_rectangle hf (rectangleBorder_subset_rectangle z w
    (show z ∈ RectangleBorder z w from Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))
    (hborder z (Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))
  refine rectangleIntegral'_mul_logDeriv hre him hf hg hborder hfin.toFinset ?_ ?_
  · intro s hs
    simp [Set.Finite.mem_toFinset, hs]
  · intro s hs
    exact ((Set.Finite.mem_toFinset _).mp hs).1


end Analytic
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db30df619c414827f45a20b95fd173edd3600ee1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
