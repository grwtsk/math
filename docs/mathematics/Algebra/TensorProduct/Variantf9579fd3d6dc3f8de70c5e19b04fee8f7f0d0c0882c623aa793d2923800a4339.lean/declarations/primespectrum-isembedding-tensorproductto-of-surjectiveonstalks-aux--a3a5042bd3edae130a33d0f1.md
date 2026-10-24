# PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f42aaf92664a76d59fcdf17c9e294a32d856e6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:888570a6-63d4-9239-070b-1799ce5fe598",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45398b2d-739c-85fa-5171-18c59dc7e24a",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks_aux",
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
  "slug": "primespectrum-isembedding-tensorproductto-of-surjectiveonstalks-aux--a3a5042bd3edae130a33d0f1",
  "source": {
    "blob": "6f42aaf92664a76d59fcdf17c9e294a32d856e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 38,
    "path": "GRWTSK/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a5042bd3edae130a33d0f1eca0d9857800bdc438c2c4b3e863546661a79fcf",
  "verification": {
    "reference": "docs/verification/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45398b2d-739c-85fa-5171-18c59dc7e24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks_aux
    (p₁ p₂ : PrimeSpectrum (S ⊗[R] T))
    (h : tensorProductTo R S T p₁ = tensorProductTo R S T p₂) :
    p₁ ≤ p₂ := by
  let g : T →+* S ⊗[R] T := Algebra.TensorProduct.includeRight.toRingHom
  intros x hxp₁
  by_contra hxp₂
  obtain ⟨t, r, a, ht, e⟩ := hRT.exists_mul_eq_tmul x
    (p₂.asIdeal.comap g) inferInstance
  have h₁ : a ⊗ₜ[R] t ∈ p₁.asIdeal := e ▸ p₁.asIdeal.mul_mem_left (1 ⊗ₜ[R] (r • t)) hxp₁
  have h₂ : a ⊗ₜ[R] t ∉ p₂.asIdeal := e ▸ p₂.asIdeal.primeCompl.mul_mem ht hxp₂
  rw [← mul_one a, ← one_mul t, ← Algebra.TensorProduct.tmul_mul_tmul] at h₁ h₂
  have h₃ : t ∉ p₂.asIdeal.comap g := fun h ↦ h₂ (Ideal.mul_mem_left _ _ h)
  have h₄ : a ∉ p₂.asIdeal.comap (algebraMap S (S ⊗[R] T)) :=
    fun h ↦ h₂ (Ideal.mul_mem_right _ _ h)
  replace h₃ : t ∉ p₁.asIdeal.comap g := by
    rwa [show p₁.asIdeal.comap g = p₂.asIdeal.comap g from congr($h.2.1)]
  replace h₄ : a ∉ p₁.asIdeal.comap (algebraMap S (S ⊗[R] T)) := by
    rwa [show p₁.asIdeal.comap (algebraMap S (S ⊗[R] T)) = p₂.asIdeal.comap _ from congr($h.1.1)]
  exact p₁.asIdeal.primeCompl.mul_mem h₄ h₃ h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f42aaf92664a76d59fcdf17c9e294a32d856e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
