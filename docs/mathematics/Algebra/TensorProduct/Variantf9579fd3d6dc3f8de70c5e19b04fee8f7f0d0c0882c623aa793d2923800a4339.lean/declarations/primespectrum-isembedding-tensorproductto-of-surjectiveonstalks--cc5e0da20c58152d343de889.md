# PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks

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
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9664cb49-2759-423a-1790-094ec60120bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:918ad94b-b9c5-f39f-cf3e-86c4ffb039cc",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks",
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
  "slug": "primespectrum-isembedding-tensorproductto-of-surjectiveonstalks--cc5e0da20c58152d343de889",
  "source": {
    "blob": "6f42aaf92664a76d59fcdf17c9e294a32d856e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 59,
    "path": "GRWTSK/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc5e0da20c58152d343de889a1cd5be7e5fdb3e45ccdcca4ed8359eb6686add6",
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

Occurrence: `result:918ad94b-b9c5-f39f-cf3e-86c4ffb039cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks :
    IsEmbedding (tensorProductTo R S T) := by
  refine ⟨?_, fun p₁ p₂ e ↦
    (isEmbedding_tensorProductTo_of_surjectiveOnStalks_aux R S T hRT p₁ p₂ e).antisymm
      (isEmbedding_tensorProductTo_of_surjectiveOnStalks_aux R S T hRT p₂ p₁ e.symm)⟩
  let g : T →+* S ⊗[R] T := Algebra.TensorProduct.includeRight.toRingHom
  refine ⟨(continuous_tensorProductTo ..).le_induced.antisymm (isBasis_basic_opens.le_iff.mpr ?_)⟩
  rintro _ ⟨f, rfl⟩
  rw [@isOpen_iff_forall_mem_open]
  rintro J (hJ : f ∉ J.asIdeal)
  obtain ⟨t, r, a, ht, e⟩ := hRT.exists_mul_eq_tmul f
    (J.asIdeal.comap g) inferInstance
  refine ⟨_, ?_, ⟨_, (basicOpen a).2.prod (basicOpen t).2, rfl⟩, ?_⟩
  · rintro x ⟨hx₁ : a ⊗ₜ[R] (1 : T) ∉ x.asIdeal, hx₂ : (1 : S) ⊗ₜ[R] t ∉ x.asIdeal⟩
      (hx₃ : f ∈ x.asIdeal)
    apply x.asIdeal.primeCompl.mul_mem hx₁ hx₂
    rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, ← e]
    exact x.asIdeal.mul_mem_left _ hx₃
  · have : a ⊗ₜ[R] (1 : T) * (1 : S) ⊗ₜ[R] t ∉ J.asIdeal := by
      rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, ← e]
      exact J.asIdeal.primeCompl.mul_mem ht hJ
    rwa [J.isPrime.mul_mem_iff_mem_or_mem.not, not_or] at this

@[deprecated (since := "2024-10-26")]
alias PrimeSpectrum.embedding_tensorProductTo_of_surjectiveOnStalks :=
  PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f42aaf92664a76d59fcdf17c9e294a32d856e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
