# eta_comp_eqOn_const_mul_csqrt_eta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1d831120b5f2baa1b8af0571bce2de472f94014",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ad0658-7bca-3be8-c761-11192f170039",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50a6c795-b0d7-8bc2-4e1c-3c9f874bb596",
  "kind": "lemma",
  "lexical_name": "eta_comp_eqOn_const_mul_csqrt_eta",
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
  "slug": "eta-comp-eqon-const-mul-csqrt-eta--9815d41bb5e1f70cabb82427",
  "source": {
    "blob": "f1d831120b5f2baa1b8af0571bce2de472f94014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9815d41bb5e1f70cabb82427a4674caff28f4724ea08875ae21a2b854dc75d86",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50a6c795-b0d7-8bc2-4e1c-3c9f874bb596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eta_comp_eqOn_const_mul_csqrt_eta :
    ∃ c : ℂ, c ≠ 0 ∧ upperHalfPlaneSet.EqOn (η ∘ (fun z : ℂ ↦ -1 / z)) (c • (sqrt * η)) := by
  rw [← logDeriv_eqOn_iff]
  · exact fun z hz ↦ logDeriv_eta_comp_eq_logDeriv_csqrt_eta ⟨z, hz⟩
  · apply DifferentiableOn.comp (t := upperHalfPlaneSet)
    · exact fun x hx ↦ (differentiableAt_eta_of_mem_upperHalfPlaneSet hx).differentiableWithinAt
    · exact DifferentiableOn.div (by fun_prop) (by fun_prop)
        (fun x hx ↦ ne_zero (⟨x, hx⟩ : ℍ))
    · exact fun y hy ↦ by grind [im_pnat_div_pos 1 (⟨y, hy⟩ : ℍ)]
  · exact fun x hx ↦ ((differentiableAt_sqrt (mem_slitPlane ⟨x, hx⟩)).mul
     (differentiableAt_eta_of_mem_upperHalfPlaneSet hx)).differentiableWithinAt
  · exact isOpen_upperHalfPlaneSet
  · exact Convex.isPreconnected (convex_halfSpace_im_gt 0)
  · exact fun x hx ↦ mul_ne_zero (by simp [sqrt, ne_zero ⟨x, hx⟩]) (eta_ne_zero hx)
  · exact fun x hx ↦ eta_ne_zero (by grind [im_pnat_div_pos 1 ⟨x, hx⟩])

end auxiliary

public section

/-- The discriminant expressed as a q-expansion: `Δ(z) = q * ∏' (1 - q ^ (n + 1)) ^ 24`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d831120b5f2baa1b8af0571bce2de472f94014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
