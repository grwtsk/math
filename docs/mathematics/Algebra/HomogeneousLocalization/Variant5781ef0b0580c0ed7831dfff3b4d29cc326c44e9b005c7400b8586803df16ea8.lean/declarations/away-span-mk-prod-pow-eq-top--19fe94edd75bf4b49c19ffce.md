# Away.span_mk_prod_pow_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 948,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:359fed5a-6149-9fd1-aed9-0737b2402f3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c16a9e06-0109-d216-7060-d889fa1a3658",
  "kind": "theorem",
  "lexical_name": "Away.span_mk_prod_pow_eq_top",
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
  "slug": "away-span-mk-prod-pow-eq-top--19fe94edd75bf4b49c19ffce",
  "source": {
    "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1001,
    "line": 948,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19fe94edd75bf4b49c19ffcee88f482f5d04c64053e0438385d52bf7025a51a8",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c16a9e06-0109-d216-7060-d889fa1a3658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 948–1001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Away.span_mk_prod_pow_eq_top {f : A} {d : ι} (hf : f ∈ 𝒜 d)
    {ι' : Type*} [Fintype ι'] (v : ι' → A)
    (hx : Algebra.adjoin (𝒜 0) (Set.range v) = ⊤) (dv : ι' → ι) (hxd : ∀ i, v i ∈ 𝒜 (dv i)) :
    Submodule.span (𝒜 0) { (Away.mk 𝒜 hf a (∏ i, v i ^ ai i)
      (hai ▸ SetLike.prod_pow_mem_graded _ _ _ _ fun i _ ↦ hxd i) : Away 𝒜 f) |
        (a : ℕ) (ai : ι' → ℕ) (hai : ∑ i, ai i • dv i = a • d) } = ⊤ := by
  by_cases HH : Subsingleton (HomogeneousLocalization.Away 𝒜 f)
  · exact Subsingleton.elim _ _
  rw [← top_le_iff]
  rintro x -
  obtain ⟨⟨n, ⟨a, ha⟩, ⟨b, hb'⟩, ⟨j, (rfl : _ = b)⟩⟩, rfl⟩ := mk_surjective x
  by_cases hfj : f ^ j = 0
  · exact (HH (HomogeneousLocalization.subsingleton _ ⟨_, hfj⟩)).elim
  have : DirectSum.decompose 𝒜 a n = ⟨a, ha⟩ := Subtype.ext (DirectSum.decompose_of_mem_same 𝒜 ha)
  simp_rw [← this]
  clear this ha
  have : a ∈ Submodule.span (𝒜 0) (Submonoid.closure (Set.range v)) := by
    rw [← Algebra.adjoin_eq_span, hx]
    trivial
  induction this using Submodule.span_induction with
  | mem a ha' =>
    obtain ⟨ai, rfl⟩ := Submonoid.exists_of_mem_closure_range _ _ ha'
    clear ha'
    by_cases H : ∑ i, ai i • dv i = n
    · apply Submodule.subset_span
      refine ⟨j, ai, H.trans ?_, ?_⟩
      · exact DirectSum.degree_eq_of_mem_mem 𝒜 hb'
          (SetLike.pow_mem_graded j hf) hfj
      · ext
        simp only [val_mk, Away.val_mk]
        congr
        refine (DirectSum.decompose_of_mem_same _ ?_).symm
        exact H ▸ SetLike.prod_pow_mem_graded _ _ _ _ fun i _ ↦ hxd i
    · convert! zero_mem (Submodule.span (𝒜 0) _)
      ext
      have : (DirectSum.decompose 𝒜 (∏ i : ι', v i ^ ai i) n).1 = 0 := by
        refine DirectSum.decompose_of_mem_ne _ ?_ H
        exact SetLike.prod_pow_mem_graded _ _ _ _ fun i _ ↦ hxd i
      simp [this, Localization.mk_zero]
  | zero =>
    convert! zero_mem (Submodule.span (𝒜 0) _)
    ext; simp [Localization.mk_zero]
  | add s t hs ht hs' ht' =>
    convert! add_mem hs' ht'
    ext; simp [← Localization.add_mk_self]
  | smul r x hx hx' =>
    convert! Submodule.smul_mem _ r hx'
    ext
    simp [Algebra.smul_def, algebraMap_eq, fromZeroRingHom, Localization.mk_mul,
      -decompose_mul, coe_decompose_mul_of_left_mem_zero 𝒜 r.2]

variable [AddSubgroupClass σ A] {𝒜 : ℕ → σ} [GradedRing 𝒜] in
/-- This is strictly weaker than `Away.adjoin_mk_prod_pow_eq_top`. -/
private
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean#L948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7fc718214a8af38f308ad3cc88e05103e43b705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
