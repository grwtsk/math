# Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes_of_isLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7224db578768f05f3dcd1859c50a2b7dabb63cf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32221ca9-29db-4152-ff06-f822c5d1a967",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44d56084-b843-a4bf-cc3c-ecac0d51eb10",
  "kind": "lemma",
  "lexical_name": "Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes_of_isLocalRing",
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
  "slug": "ideal-height-le-one-of-isprincipal-of-mem-minimalprimes-of-islocalring--4588ae17e1347cd2fa4841e3",
  "source": {
    "blob": "7224db578768f05f3dcd1859c50a2b7dabb63cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 53,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4588ae17e1347cd2fa4841e3cdd57183ce09863e1d11b89092e8458946ab62e1",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d56084-b843-a4bf-cc3c-ecac0d51eb10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes_of_isLocalRing
    [IsLocalRing R] (I : Ideal R) [I.IsPrincipal]
    (hp : (IsLocalRing.maximalIdeal R) ∈ I.minimalPrimes) :
    (IsLocalRing.maximalIdeal R).height ≤ 1 := by
  refine Ideal.height_le_iff.mpr fun q h₁ h₂ ↦ ?_
  suffices q.height = 0 by rw [this]; exact zero_lt_one
  rw [← WithBot.coe_inj,
    ← IsLocalization.AtPrime.ringKrullDim_eq_height q (Localization.AtPrime q),
    WithBot.coe_zero, ← ringKrullDimZero_iff_ringKrullDim_eq_zero,
    ← isArtinianRing_iff_krullDimLE_zero, isArtinianRing_iff_isNilpotent_maximalIdeal,
    ← Localization.AtPrime.map_eq_maximalIdeal]
  have : IsArtinianRing (R ⧸ I) :=
    IsLocalRing.quotient_artinian_of_mem_minimalPrimes_of_isLocalRing I hp
  let f := algebraMap R (Localization.AtPrime q)
  let qs : ℕ →o (Ideal (R ⧸ I))ᵒᵈ :=
    { toFun n := ((q.map f ^ n).comap f).map (Ideal.Quotient.mk I)
      monotone' i j e := Ideal.map_mono (Ideal.comap_mono (Ideal.pow_le_pow_right e)) }
  obtain ⟨n, hn⟩ := IsArtinian.monotone_stabilizes qs
  refine ⟨n, ?_⟩
  apply Submodule.eq_bot_of_le_smul_of_le_jacobson_bot (q.map f) _ (IsNoetherian.noetherian _)
  rotate_left
  · rw [IsLocalRing.jacobson_eq_maximalIdeal, Localization.AtPrime.map_eq_maximalIdeal]
    exact bot_ne_top
  rw [smul_eq_mul, ← pow_succ',
    ← (IsLocalization.orderEmbedding q.primeCompl (Localization.AtPrime q)).map_rel_iff]
  refine Submodule.le_of_le_smul_of_le_jacobson_bot (I := I) (IsNoetherian.noetherian _) ?_ ?_
  · rw [IsLocalRing.jacobson_eq_maximalIdeal]
    exacts [hp.1.2, bot_ne_top]
  · replace hn := congr(Ideal.comap (Ideal.Quotient.mk I) $(hn _ n.le_succ))
    simp only [qs, OrderHom.coe_mk, ← RingHom.ker_eq_comap_bot, Ideal.mk_ker,
      Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective] at hn
    intro x hx
    obtain ⟨y, hy, z, hz, rfl⟩ := Submodule.mem_sup.mp (hn.le (Ideal.mem_sup_left hx))
    refine Submodule.add_mem_sup hy ?_
    obtain ⟨z, rfl⟩ := (Submodule.IsPrincipal.mem_iff_eq_smul_generator I).mp hz
    rw [smul_eq_mul, smul_eq_mul, mul_comm]
    refine Ideal.mul_mem_mul ?_ (Submodule.IsPrincipal.generator_mem _)
    dsimp [IsLocalization.orderEmbedding] at hx
    rwa [Ideal.mem_comap, f.map_add, f.map_mul, Ideal.add_mem_iff_right _
      (Ideal.pow_le_pow_right n.le_succ hy), mul_comm, Ideal.unit_mul_mem_iff_mem] at hx
    refine IsLocalization.map_units (M := q.primeCompl) _ ⟨_, ?_⟩
    show Submodule.IsPrincipal.generator I ∉ (↑q : Set R)
    rw [← Set.singleton_subset_iff, ← Ideal.span_le, Ideal.span_singleton_generator]
    exact fun e ↦ h₂.not_le (hp.2 ⟨h₁, e⟩ h₂.le)

/-- **Krull's principal ideal theorem** (also known as **Krullscher Hauptidealsatz**) :
  In a commutative Noetherian ring `R`, any prime ideal that is minimal over a principal ideal
  has height at most 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7224db578768f05f3dcd1859c50a2b7dabb63cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
