# exists_hasStandardEtaleSurjectionOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01ecafde-08a8-d9a7-6f69-f5f866be5fd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3678009c-74b7-6cc1-b331-a9caac1d2b00",
  "kind": "lemma",
  "lexical_name": "exists_hasStandardEtaleSurjectionOn",
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
  "slug": "exists-hasstandardetalesurjectionon--b5a5c0e310c7e6c334fe91dd",
  "source": {
    "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 338,
    "path": "GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5a5c0e310c7e6c334fe91dde9dc205b6838d1117d5f4c8cc9200d515a183bc0",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3678009c-74b7-6cc1-b331-a9caac1d2b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_hasStandardEtaleSurjectionOn
    (Q : Ideal S) [Q.IsPrime] [FiniteType R S] [IsUnramifiedAt R Q] :
    ∃ f ∉ Q, HasStandardEtaleSurjectionOn R f := by
  wlog H : Unramified R S
  · obtain ⟨s, hsQ, hs⟩ := exists_formallyUnramified_of_isUnramifiedAt (R := R) Q
    have hQ : (Ideal.map (algebraMap S (Localization.Away s)) Q).IsPrime :=
      IsLocalization.isPrime_of_isPrime_disjoint (.powers s) _ _ ‹_› (by simp [Set.disjoint_iff,
        Set.ext_iff, Submonoid.mem_powers_iff, mt (‹Q.IsPrime›.mem_of_pow_mem _) hsQ])
    have inst : Unramified R (Localization.Away s) := {}
    obtain ⟨f, hf, H⟩ := this (R := R)
      (Q.map (algebraMap _ (Localization.Away s))) inferInstance
    obtain ⟨f, t, rfl⟩ := IsLocalization.exists_mk'_eq (.powers s) f
    refine ⟨s * f, ?_, ?_⟩
    · simpa [IsLocalization.mk'_mem_map_algebraMap_iff, Submonoid.mem_powers_iff,
        Ideal.IsPrime.mul_mem_left_iff, hsQ, (mt (‹Q.IsPrime›.mem_of_pow_mem _) hsQ)] using hf
    obtain ⟨P, φ, hφ⟩ : HasStandardEtaleSurjectionOn R (algebraMap S (Localization.Away s) f) :=
      H.of_dvd ⟨algebraMap _ _ t.1, by simp⟩
    exact .mk _ hφ
  obtain ⟨S', hS', r, hrQ, hr⟩ := ZariskisMainProperty.of_finiteType (R := R) Q
    |>.exists_fg_and_exists_notMem_and_awayMap_bijective
  have : Module.Finite R S' := ⟨(Submodule.fg_top _).mpr hS'⟩
  have : FormallyUnramified R (Localization.Away r) :=
    .of_equiv (AlgEquiv.ofBijective (Localization.awayMapₐ S'.val r) hr :).symm
  have : IsUnramifiedAt R (Ideal.under (↥S') Q) := by
    rw [← basicOpen_subset_unramifiedLocus_iff] at this
    exact @this ⟨Q.under S', inferInstance⟩ hrQ
  obtain ⟨f, hfQ, hf⟩ :=
    IsUnramifiedAt.exists_hasStandardEtaleSurjectionOn_of_finite (R := R) (Q.under S')
  let e : Localization.Away (r * f) ≃ₐ[R] Localization.Away (r.1 * f.1) :=
    .ofBijective (Localization.awayMapₐ S'.val (r * f))
      (Localization.awayMap_bijective_of_dvd _ (dvd_mul_right r f) hr)
  obtain ⟨P, φ, hφ⟩ := hf.of_dvd (g := r * f) (by simp)
  refine ⟨_, ‹Q.IsPrime›.mul_notMem hrQ hfQ,
    .mk (f := r.1 * f.1) (e.toAlgHom.comp φ) (e.surjective.comp hφ)⟩

end IsUnramifiedAt

@[stacks 00UE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23645208852af6a0e4e19a02e3362c0f4ce16053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
