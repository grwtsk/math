# card_isPrincipal_dvd_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78cacfe4-e9fb-6173-41fd-466b166f95de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cf40b14-7d8e-549c-f39e-2a0696d01d1c",
  "kind": "theorem",
  "lexical_name": "card_isPrincipal_dvd_norm_le",
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
  "slug": "card-isprincipal-dvd-norm-le--0e5381e5d1de440d2756a674",
  "source": {
    "blob": "c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 574,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e5381e5d1de440d2756a67470f2ec938474740d4485b6d9510e57510fb15228",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cf40b14-7d8e-549c-f39e-2a0696d01d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_isPrincipal_dvd_norm_le (s : ℝ) :
    Nat.card {I : (Ideal (𝓞 K))⁰ // (J : Ideal (𝓞 K)) ∣ I ∧ IsPrincipal (I : Ideal (𝓞 K)) ∧
      absNorm (I : Ideal (𝓞 K)) ≤ s} * torsionOrder K =
        Nat.card {a : idealSet K J // mixedEmbedding.norm (a : mixedSpace K) ≤ s} := by
  obtain hs | hs := le_or_gt 0 s
  · simp_rw [← intNorm_idealSetEquiv_apply, ← Nat.le_floor_iff hs]
    rw [torsionOrder, ← Nat.card_eq_fintype_card, ← Nat.card_prod]
    refine Nat.card_congr <| @Equiv.ofFiberEquiv _ (γ := Finset.Iic ⌊s⌋₊) _
      (fun I ↦ ⟨absNorm I.1.val.1, Finset.mem_Iic.mpr I.1.prop.2.2⟩)
      (fun a ↦ ⟨intNorm (idealSetEquiv K J a.1).1, Finset.mem_Iic.mpr a.prop⟩) fun ⟨i, hi⟩ ↦ ?_
    simp_rw [Subtype.mk.injEq]
    calc _ ≃ {I : {I : (Ideal (𝓞 K))⁰ // _ ∧ _ ∧ _} // absNorm I.1.1 = i} × torsion K :=
        Equiv.prodSubtypeFstEquivSubtypeProd
      _    ≃ {I : (Ideal (𝓞 K))⁰ // (_ ∧ _ ∧ absNorm I.1 ≤ ⌊s⌋₊) ∧ absNorm I.1 = i}
            × torsion K := Equiv.prodCongrLeft fun _ ↦ (Equiv.subtypeSubtypeEquivSubtypeInter
        (p := fun I : (Ideal (𝓞 K))⁰ ↦ J.1 ∣ I.1 ∧ IsPrincipal I.1 ∧ absNorm I.1 ≤ ⌊s⌋₊)
        (q := fun I ↦ absNorm I.1 = i))
      _   ≃ {I : (Ideal (𝓞 K))⁰ // J.1 ∣ I.1 ∧ IsPrincipal I.1 ∧ absNorm I.1 = i}
            × torsion K := Equiv.prodCongrLeft fun _ ↦ Equiv.subtypeEquivRight fun _ ↦ by aesop
      _   ≃ {a : idealSet K J // mixedEmbedding.norm (a : mixedSpace K) = i} :=
            (idealSetEquivNorm K J i).symm
      _   ≃ {a : idealSet K J // intNorm (idealSetEquiv K J a).1 = i} := by
        simp_rw [← intNorm_idealSetEquiv_apply, Nat.cast_inj]
        rfl
      _   ≃ {b : {a : idealSet K J // intNorm (idealSetEquiv K J a).1 ≤ ⌊s⌋₊} //
            intNorm (idealSetEquiv K J b).1 = i} :=
        (Equiv.subtypeSubtypeEquivSubtype fun h ↦ Finset.mem_Iic.mp (h ▸ hi)).symm
  · simp_rw [lt_iff_not_le.mp (lt_of_lt_of_le hs (Nat.cast_nonneg _)), lt_iff_not_le.mp
      (lt_of_lt_of_le hs (mixedEmbedding.norm_nonneg _)), and_false, Nat.card_of_isEmpty,
      zero_mul]

end fundamentalCone

end

end NumberField.mixedEmbedding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
