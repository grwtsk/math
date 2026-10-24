# IsSmoothAt.exists_isStandardEtale_mvPolynomial

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
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba41358-0502-6b48-981d-3782f633dd7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8852061e-f5e2-c659-3759-c12914043567",
  "kind": "theorem",
  "lexical_name": "IsSmoothAt.exists_isStandardEtale_mvPolynomial",
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
  "slug": "issmoothat-exists-isstandardetale-mvpolynomial--bf1a09a0e16e7e3f465db2bf",
  "source": {
    "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 390,
    "path": "GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf1a09a0e16e7e3f465db2bfe8a138502fd78a51f05ce417e8f50f1007abde37",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8852061e-f5e2-c659-3759-c12914043567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSmoothAt.exists_isStandardEtale_mvPolynomial
    {p : Ideal S} [p.IsPrime] [FinitePresentation R S] [IsSmoothAt R p] :
    ∃ f ∉ p, ∃ (n : ℕ) (_ : Algebra (MvPolynomial (Fin n) R) (Localization.Away f)),
      IsScalarTower R (MvPolynomial (Fin n) R) (Localization.Away f) ∧
      IsStandardEtale (MvPolynomial (Fin n) R) (Localization.Away f) := by
  obtain ⟨f, hfp, H⟩ := IsSmoothAt.exists_notMem_isStandardSmooth R p
  obtain ⟨n, φ, hgC, hg⟩ := RingHom.IsStandardSmooth.exists_etale_mvPolynomial
    (f := algebraMap R (Localization.Away f)) (by simpa [RingHom.isStandardSmooth_algebraMap])
  algebraize [φ]
  have := IsScalarTower.of_algebraMap_eq' hgC.symm
  have : (Ideal.map (algebraMap S (Localization.Away f)) p).IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint (.powers f) _ _ ‹_›
      ((Ideal.disjoint_powers_iff_notMem_of_isPrime _).mpr hfp)
  obtain ⟨g₀, hg, H⟩ := IsEtaleAt.exists_isStandardEtale (R := (MvPolynomial (Fin n) R))
    (S := (Localization.Away f)) (p.map (algebraMap _ _))
  obtain ⟨g, ⟨_, m, rfl⟩, hg₀⟩ := IsLocalization.exists_mk'_eq (.powers f) g₀
  replace hg : g ∉ p := by simpa [Submonoid.mem_powers_iff, Ideal.IsPrime.mul_mem_iff_mem_or_mem,
    IsLocalization.mk'_mem_map_algebraMap_iff, mt (‹p.IsPrime›.mem_of_pow_mem _) hfp,
    ← hg₀] using hg
  have : IsLocalization.Away (f * g) (Localization.Away g₀) := by
    suffices IsLocalization.Away (algebraMap _ (Localization.Away f) g) (Localization.Away g₀) from
      .mul' (Localization.Away f) _ _ _
    refine IsLocalization.Away.of_associated (r := g₀)
      ⟨(IsLocalization.Away.algebraMap_pow_isUnit f m).unit, ?_⟩
    simp only [← hg₀, IsUnit.unit_spec, ← map_pow, mul_comm, IsLocalization.mk'_spec'_mk]
  let e : Localization.Away g₀ ≃ₐ[S] Localization.Away (f * g) :=
    IsLocalization.algEquiv (.powers (f * g)) _ _
  let : Algebra (MvPolynomial (Fin n) R) (Localization.Away (f * g)) :=
    (e.toRingHom.comp (algebraMap (MvPolynomial (Fin n) R) _)).toAlgebra
  have : IsScalarTower R (MvPolynomial (Fin n) R) (Localization.Away (f * g)) := by
    refine .of_algebraMap_eq' ?_
    simp only [RingHom.algebraMap_toAlgebra, RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq]
    exact (e.toAlgHom.comp_algebraMap_of_tower (R := R)).symm
  let e' : Localization.Away g₀ ≃ₐ[MvPolynomial (Fin n) R] Localization.Away (f * g) :=
    { __ := e, commutes' r := rfl }
  exact ⟨f * g, ‹p.IsPrime›.mul_notMem ‹_› ‹_›, n, ‹_›, ‹_›, .of_equiv e'⟩

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23645208852af6a0e4e19a02e3362c0f4ce16053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
