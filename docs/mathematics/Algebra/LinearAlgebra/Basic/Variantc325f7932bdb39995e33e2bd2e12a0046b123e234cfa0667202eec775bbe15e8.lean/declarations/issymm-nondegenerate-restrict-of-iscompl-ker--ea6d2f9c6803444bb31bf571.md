# IsSymm.nondegenerate_restrict_of_isCompl_ker

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
      "line": 723,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:293554f9-a27a-fc25-2b18-74c756f213de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82d65ac0-a04b-9b35-420f-3fc1a2c181f9",
  "kind": "lemma",
  "lexical_name": "IsSymm.nondegenerate_restrict_of_isCompl_ker",
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
  "slug": "issymm-nondegenerate-restrict-of-iscompl-ker--ea6d2f9c6803444bb31bf571",
  "source": {
    "blob": "b936a4c813ee9e5ce378488e6a7c539c4641b693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 723,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6d2f9c6803444bb31bf571d34056ae0c3c36f0c7833706a7232bd2107461e2",
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

Occurrence: `result:82d65ac0-a04b-9b35-420f-3fc1a2c181f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSymm.nondegenerate_restrict_of_isCompl_ker {B : M →ₗ[R] M →ₗ[R] R} (hB : B.IsSymm)
    {W : Submodule R M} (hW : IsCompl W (LinearMap.ker B)) :
    (B.domRestrict₁₂ W W).Nondegenerate := by
  have hB' : (B.domRestrict₁₂ W W).IsRefl := fun x y ↦ hB.isRefl (W.subtype x) (W.subtype y)
  rw [LinearMap.IsRefl.nondegenerate_iff_separatingLeft hB']
  intro ⟨x, hx⟩ hx'
  simp only [Submodule.mk_eq_zero]
  replace hx' : ∀ y ∈ W, B x y = 0 := by simpa [Subtype.forall] using! hx'
  replace hx' : x ∈ W ⊓ ker B := by
    refine ⟨hx, ?_⟩
    ext y
    obtain ⟨u, hu, v, hv, rfl⟩ : ∃ u ∈ W, ∃ v ∈ ker B, u + v = y := by
      rw [← Submodule.mem_sup, hW.sup_eq_top]; exact Submodule.mem_top
    suffices B x u = 0 by rw [mem_ker] at hv; simpa [← hB.eq v, hv]
    exact hx' u hu
  simpa [hW.inf_eq_bot] using! hx'

end CommRing

section IsOrthoᵢ

variable {R M M₁ : Type*} [CommSemiring R] [AddCommMonoid M] [AddCommMonoid M₁]
    [Module R M] [Module R M₁] {I I' : R →+* R} {B : M →ₛₗ[I] M →ₛₗ[I'] M₁}

/-- An orthogonal basis with respect to a left-separating bilinear map has no self-orthogonal
elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b936a4c813ee9e5ce378488e6a7c539c4641b693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
