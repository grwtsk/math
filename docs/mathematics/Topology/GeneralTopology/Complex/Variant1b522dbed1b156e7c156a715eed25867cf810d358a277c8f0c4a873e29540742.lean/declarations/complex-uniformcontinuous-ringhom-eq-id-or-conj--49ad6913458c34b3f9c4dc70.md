# Complex.uniformContinuous_ringHom_eq_id_or_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e015f7c3232a789c68d1253db3ba2676314b0f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ed74a0f-706f-5b41-c082-7b59569b1aa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af1da4f0-b5b3-1b73-0239-30df8c514efe",
  "kind": "theorem",
  "lexical_name": "Complex.uniformContinuous_ringHom_eq_id_or_conj",
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
  "slug": "complex-uniformcontinuous-ringhom-eq-id-or-conj--49ad6913458c34b3f9c4dc70",
  "source": {
    "blob": "8e015f7c3232a789c68d1253db3ba2676314b0f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ad6913458c34b3f9c4dc703aa022dd4add20f568ec001258eb342ced3a88a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af1da4f0-b5b3-1b73-0239-30df8c514efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.uniformContinuous_ringHom_eq_id_or_conj (K : Subfield ℂ) {ψ : K →+* ℂ}
    (hc : UniformContinuous ψ) : ψ.toFun = K.subtype ∨ ψ.toFun = conj ∘ K.subtype := by
  letI : IsTopologicalDivisionRing ℂ := IsTopologicalDivisionRing.mk
  letI : IsTopologicalRing K.topologicalClosure :=
    Subring.instIsTopologicalRing K.topologicalClosure.toSubring
  set ι : K → K.topologicalClosure := ⇑(Subfield.inclusion K.le_topologicalClosure)
  have ui : IsUniformInducing ι :=
    ⟨by
      rw [uniformity_subtype, uniformity_subtype, Filter.comap_comap]
      congr ⟩
  let di := ui.isDenseInducing (?_ : DenseRange ι)
  · -- extψ : closure(K) →+* ℂ is the extension of ψ : K →+* ℂ
    let extψ := IsDenseInducing.extendRingHom ui di.dense hc
    haveI hψ := (uniformContinuous_uniformly_extend ui di.dense hc).continuous
    rcases Complex.subfield_eq_of_closed (Subfield.isClosed_topologicalClosure K) with h | h
    · left
      let j := RingEquiv.subfieldCongr h
      -- ψ₁ is the continuous ring hom `ℝ →+* ℂ` constructed from `j : closure (K) ≃+* ℝ`
      -- and `extψ : closure (K) →+* ℂ`
      let ψ₁ := RingHom.comp extψ (RingHom.comp j.symm.toRingHom ofRealHom.rangeRestrict)
      -- Porting note: was `by continuity!` and was used inline
      have hψ₁ : Continuous ψ₁ := by
        simpa only [RingHom.coe_comp] using hψ.comp ((continuous_algebraMap ℝ ℂ).subtype_mk _)
      ext1 x
      rsuffices ⟨r, hr⟩ : ∃ r : ℝ, ofRealHom.rangeRestrict r = j (ι x)
      · have :=
          RingHom.congr_fun (ringHom_eq_ofReal_of_continuous hψ₁) r
        rw [RingHom.comp_apply, RingHom.comp_apply] at this
        -- In `this`, the `DFunLike.coe` thinks it is applying a `(ℝ →+* ↥ofRealHom.fieldRange)`,
        -- while in `hr`, we have a `(ℝ →+* ↥ofRealHom.range)`.
        -- We could add a `@[simp]` lemma fixing this, but it breaks later steps of the proof.
        erw [hr] at this
        rw [RingEquiv.toRingHom_eq_coe] at this
        convert this using 1
        · exact (IsDenseInducing.extend_eq di hc.continuous _).symm
        · rw [← ofRealHom.coe_rangeRestrict, hr]
          rfl
      obtain ⟨r, hr⟩ := SetLike.coe_mem (j (ι x))
      exact ⟨r, Subtype.ext hr⟩
    · -- ψ₁ is the continuous ring hom `ℂ →+* ℂ` constructed from `closure (K) ≃+* ℂ`
      -- and `extψ : closure (K) →+* ℂ`
      let ψ₁ :=
        RingHom.comp extψ
          (RingHom.comp (RingEquiv.subfieldCongr h).symm.toRingHom
            (@Subfield.topEquiv ℂ _).symm.toRingHom)
      -- Porting note: was `by continuity!` and was used inline
      have hψ₁ : Continuous ψ₁ := by
        simpa only [RingHom.coe_comp] using hψ.comp (continuous_id.subtype_mk _)
      rcases ringHom_eq_id_or_conj_of_continuous hψ₁ with h | h
      · left
        ext1 z
        convert RingHom.congr_fun h z using 1
        exact (IsDenseInducing.extend_eq di hc.continuous z).symm
      · right
        ext1 z
        convert RingHom.congr_fun h z using 1
        exact (IsDenseInducing.extend_eq di hc.continuous z).symm
  · let j : { x // x ∈ closure (id '' { x | (K : Set ℂ) x }) } → (K.topologicalClosure : Set ℂ) :=
      fun x =>
      ⟨x, by
        convert x.prop
        simp only [id, Set.image_id']
        rfl ⟩
    convert DenseRange.comp (Function.Surjective.denseRange _)
      (IsDenseEmbedding.id.subtype (K : Set ℂ)).dense (by continuity : Continuous j)
    rintro ⟨y, hy⟩
    use
      ⟨y, by
        convert hy
        simp only [id, Set.image_id']
        rfl ⟩

end ComplexSubfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e015f7c3232a789c68d1253db3ba2676314b0f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
