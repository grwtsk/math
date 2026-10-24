# linearIndependent_smul_of_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65bb441b54a7c277a532f352a73d9847cab8426c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8a208d3-46df-c175-bd91-6708e320f17b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed3781a5-26eb-5b14-6fce-d988a618cf62",
  "kind": "theorem",
  "lexical_name": "linearIndependent_smul_of_linearIndependent",
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
  "slug": "linearindependent-smul-of-linearindependent--483a6ab8b7a24d4f9da3d4d1",
  "source": {
    "blob": "65bb441b54a7c277a532f352a73d9847cab8426c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483a6ab8b7a24d4f9da3d4d1600a0119f4234bb380f3d9599db260a015231699",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed3781a5-26eb-5b14-6fce-d988a618cf62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_smul_of_linearIndependent {s : Finset F} :
    (LinearIndepOn (FixedPoints.subfield G F) id (s : Set F)) →
      LinearIndepOn F (MulAction.toFun G F) s := by
  classical
  have : IsEmpty ((∅ : Finset F) : Set F) := by simp
  refine Finset.induction_on s (fun _ => linearIndependent_empty_type) fun a s has ih hs => ?_
  rw [coe_insert] at hs ⊢
  rw [linearIndepOn_insert (mt mem_coe.1 has)] at hs
  rw [linearIndepOn_insert (mt mem_coe.1 has)]; refine ⟨ih hs.1, fun ha => ?_⟩
  rw [Finsupp.mem_span_image_iff_linearCombination] at ha; rcases ha with ⟨l, hl, hla⟩
  rw [Finsupp.linearCombination_apply_of_mem_supported F hl] at hla
  suffices ∀ i ∈ s, l i ∈ FixedPoints.subfield G F by
    replace hla := (sum_apply _ _ fun i => l i • toFun G F i).symm.trans (congr_fun hla 1)
    simp_rw [Pi.smul_apply, toFun_apply, one_smul] at hla
    refine hs.2 (hla ▸ Submodule.sum_mem _ fun c hcs => ?_)
    change (⟨l c, this c hcs⟩ : FixedPoints.subfield G F) • c ∈ _
    exact Submodule.smul_mem _ _ <| Submodule.subset_span <| by simpa

  intro i his g
  refine
    eq_of_sub_eq_zero
      (linearIndependent_iff'.1 (ih hs.1) s.attach (fun i => g • l i - l i) ?_ ⟨i, his⟩
          (mem_attach _ _) :
        _)
  refine (sum_attach s fun i ↦ (g • l i - l i) • MulAction.toFun G F i).trans ?_
  ext g'; dsimp only
  conv_lhs =>
    rw [sum_apply]
    congr
    · skip
    · ext
      rw [Pi.smul_apply, sub_smul, smul_eq_mul]
  rw [sum_sub_distrib, Pi.zero_apply, sub_eq_zero]
  conv_lhs =>
    congr
    · skip
    · ext x
      rw [toFun_apply, ← mul_inv_cancel_left g g', mul_smul, ← smul_mul', ← toFun_apply _ x]
  show
    (∑ x ∈ s, g • (fun y => l y • MulAction.toFun G F y) x (g⁻¹ * g')) =
      ∑ x ∈ s, (fun y => l y • MulAction.toFun G F y) x g'
  rw [← smul_sum, ← sum_apply _ _ fun y => l y • toFun G F y, ←
    sum_apply _ _ fun y => l y • toFun G F y]
  rw [hla, toFun_apply, toFun_apply, smul_smul, mul_inv_cancel_left]

section Fintype

variable [Fintype G] (x : F)

/-- `minpoly G F x` is the minimal polynomial of `(x : F)` over `FixedPoints.subfield G F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65bb441b54a7c277a532f352a73d9847cab8426c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
