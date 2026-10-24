# linearIndependent_smul_of_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3a524d4418f32a103b5dbd6a4f7626e3bba2d12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dbd7372-dfac-c406-72a9-ad58f862b5aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f493d667-96b2-f9b7-1e6f-ef8e9d038baf",
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
  "slug": "linearindependent-smul-of-linearindependent--8dc193316cb4fb27e57d2f27",
  "source": {
    "blob": "e3a524d4418f32a103b5dbd6a4f7626e3bba2d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dc193316cb4fb27e57d2f27aa5998a98be1b6bb228a8c26f7ea16db05db66a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f493d667-96b2-f9b7-1e6f-ef8e9d038baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_smul_of_linearIndependent {s : Finset F} :
    (LinearIndependent (FixedPoints.subfield G F) fun i : (s : Set F) => (i : F)) →
      LinearIndependent F fun i : (s : Set F) => MulAction.toFun G F i := by
  haveI : IsEmpty ((∅ : Finset F) : Set F) := by simp
  refine' Finset.induction_on s (fun _ => linearIndependent_empty_type) fun a s has ih hs => _
  rw [coe_insert] at hs ⊢
  rw [linearIndependent_insert (mt mem_coe.1 has)] at hs
  rw [linearIndependent_insert' (mt mem_coe.1 has)]; refine' ⟨ih hs.1, fun ha => _⟩
  rw [Finsupp.mem_span_image_iff_total] at ha; rcases ha with ⟨l, hl, hla⟩
  rw [Finsupp.total_apply_of_mem_supported F hl] at hla
  suffices ∀ i ∈ s, l i ∈ FixedPoints.subfield G F by
    replace hla := (sum_apply _ _ fun i => l i • toFun G F i).symm.trans (congr_fun hla 1)
    simp_rw [Pi.smul_apply, toFun_apply, one_smul] at hla
    refine' hs.2 (hla ▸ Submodule.sum_mem _ fun c hcs => _)
    change (⟨l c, this c hcs⟩ : FixedPoints.subfield G F) • c ∈ _
    exact Submodule.smul_mem _ _ (Submodule.subset_span <| mem_coe.2 hcs)
  intro i his g
  refine'
    eq_of_sub_eq_zero
      (linearIndependent_iff'.1 (ih hs.1) s.attach (fun i => g • l i - l i) _ ⟨i, his⟩
          (mem_attach _ _) :
        _)
  refine' (@sum_attach _ _ s _ fun i => (g • l i - l i) • MulAction.toFun G F i).trans _
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
    (∑ x in s, g • (fun y => l y • MulAction.toFun G F y) x (g⁻¹ * g')) =
      ∑ x in s, (fun y => l y • MulAction.toFun G F y) x g'
  rw [← smul_sum, ← sum_apply _ _ fun y => l y • toFun G F y, ←
    sum_apply _ _ fun y => l y • toFun G F y]
  dsimp only
  rw [hla, toFun_apply, toFun_apply, smul_smul, mul_inv_cancel_left]
#align fixed_points.linear_independent_smul_of_linear_independent FixedPoints.linearIndependent_smul_of_linearIndependent

section Fintype

variable [Fintype G] (x : F)

/-- `minpoly G F x` is the minimal polynomial of `(x : F)` over `FixedPoints.subfield G F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a524d4418f32a103b5dbd6a4f7626e3bba2d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
