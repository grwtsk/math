# Complex.uniformContinuous_ringHom_eq_id_or_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2f76081-777d-a089-bb7b-a7857cfaf1eb",
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
  "slug": "complex-uniformcontinuous-ringhom-eq-id-or-conj--3adc4422cc5e28b53c2f04f3",
  "source": {
    "blob": "028e50d5fa6d3df4c2076d87b75bd1f02a1e48bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variantce88bfba21298a12dcbe055642ae81ae8182d42b45a047af5bf844521c48f29c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3adc4422cc5e28b53c2f04f37bc78d15ea6bc7fef04ac9b9b6817aff170a41b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variantce88bfba21298a12dcbe055642ae81ae8182d42b45a047af5bf844521c48f29c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f76081-777d-a089-bb7b-a7857cfaf1eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.uniformContinuous_ringHom_eq_id_or_conj (K : Subfield ℂ) {ψ : K →+* ℂ}
    (hc : UniformContinuous ψ) : ψ.toFun = K.subtype ∨ ψ.toFun = conj ∘ K.subtype := by
  letI : TopologicalDivisionRing ℂ := TopologicalDivisionRing.mk
  letI : TopologicalRing K.topologicalClosure :=
    Subring.instTopologicalRing K.topologicalClosure.toSubring
  set ι : K → K.topologicalClosure := ⇑(Subfield.inclusion K.le_topologicalClosure)
  have ui : UniformInducing ι :=
    ⟨by
      erw [uniformity_subtype, uniformity_subtype, Filter.comap_comap]
      congr ⟩
  let di := ui.denseInducing (?_ : DenseRange ι)
  · -- extψ : closure(K) →+* ℂ is the extension of ψ : K →+* ℂ
    let extψ := DenseInducing.extendRingHom ui di.dense hc
    haveI hψ := (uniformContinuous_uniformly_extend ui di.dense hc).continuous
    cases' Complex.subfield_eq_of_closed (Subfield.isClosed_topologicalClosure K) with h h
    · left
      let j := RingEquiv.subfieldCongr h
      -- ψ₁ is the continuous ring hom `ℝ →+* ℂ` constructed from `j : closure (K) ≃+* ℝ`
      -- and `extψ : closure (K) →+* ℂ`
      let ψ₁ := RingHom.comp extψ (RingHom.comp j.symm.toRingHom ofReal.rangeRestrict)
      -- porting note: was `by continuity!` and was used inline
      have hψ₁ : Continuous ψ₁ := by
        simpa only [RingHom.coe_comp] using hψ.comp ((continuous_algebraMap ℝ ℂ).subtype_mk _)
      ext1 x
      rsuffices ⟨r, hr⟩ : ∃ r : ℝ, ofReal.rangeRestrict r = j (ι x)
      · have :=
          RingHom.congr_fun (ringHom_eq_ofReal_of_continuous hψ₁) r
        rw [RingHom.comp_apply, RingHom.comp_apply, hr, RingEquiv.toRingHom_eq_coe] at this
        convert this using 1
        · exact (DenseInducing.extend_eq di hc.continuous _).symm
        · rw [← ofReal.coe_rangeRestrict, hr]
          rfl
      obtain ⟨r, hr⟩ := SetLike.coe_mem (j (ι x))
      exact ⟨r, Subtype.ext hr⟩
    · -- ψ₁ is the continuous ring hom `ℂ →+* ℂ` constructed from `closure (K) ≃+* ℂ`
      -- and `extψ : closure (K) →+* ℂ`
      let ψ₁ :=
        RingHom.comp extψ
          (RingHom.comp (RingEquiv.subfieldCongr h).symm.toRingHom
            (@Subfield.topEquiv ℂ _).symm.toRingHom)
      -- porting note: was `by continuity!` and was used inline
      have hψ₁ : Continuous ψ₁ := by
        simpa only [RingHom.coe_comp] using hψ.comp (continuous_id.subtype_mk _)
      cases' ringHom_eq_id_or_conj_of_continuous hψ₁ with h h
      · left
        ext1 z
        convert RingHom.congr_fun h z using 1
        exact (DenseInducing.extend_eq di hc.continuous z).symm
      · right
        ext1 z
        convert RingHom.congr_fun h z using 1
        exact (DenseInducing.extend_eq di hc.continuous z).symm
  · let j : { x // x ∈ closure (id '' { x | (K : Set ℂ) x }) } → (K.topologicalClosure : Set ℂ) :=
      fun x =>
      ⟨x, by
        convert x.prop
        simp only [id.def, Set.image_id']
        rfl ⟩
    convert DenseRange.comp (Function.Surjective.denseRange _)
        (DenseEmbedding.subtype denseEmbedding_id (K : Set ℂ)).dense (by continuity : Continuous j)
    rintro ⟨y, hy⟩
    use
      ⟨y, by
        convert hy
        simp only [id.def, Set.image_id']
        rfl ⟩
#align complex.uniform_continuous_ring_hom_eq_id_or_conj Complex.uniformContinuous_ringHom_eq_id_or_conj

end ComplexSubfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variantce88bfba21298a12dcbe055642ae81ae8182d42b45a047af5bf844521c48f29c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variantce88bfba21298a12dcbe055642ae81ae8182d42b45a047af5bf844521c48f29c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028e50d5fa6d3df4c2076d87b75bd1f02a1e48bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
