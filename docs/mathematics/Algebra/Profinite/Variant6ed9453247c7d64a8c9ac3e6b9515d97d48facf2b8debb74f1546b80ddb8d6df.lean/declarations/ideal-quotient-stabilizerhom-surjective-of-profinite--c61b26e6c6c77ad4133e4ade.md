# Ideal.Quotient.stabilizerHom_surjective_of_profinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:960b60dc-b654-7be1-6a6b-ad45d33a827e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc91e141-1811-14eb-8265-8882e5d0e5bf",
  "kind": "theorem",
  "lexical_name": "Ideal.Quotient.stabilizerHom_surjective_of_profinite",
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
  "slug": "ideal-quotient-stabilizerhom-surjective-of-profinite--c61b26e6c6c77ad4133e4ade",
  "source": {
    "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 167,
    "path": "GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c61b26e6c6c77ad4133e4adeffaaa8b77381ed36675692bbf0852f075f5c1147",
  "verification": {
    "reference": "docs/verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc91e141-1811-14eb-8265-8882e5d0e5bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.Quotient.stabilizerHom_surjective_of_profinite
    (P : Ideal A) (Q : Ideal B) [Q.IsPrime] [Q.LiesOver P]
    [Algebra.IsInvariant A B G] :
    Function.Surjective (Ideal.Quotient.stabilizerHom Q P G) := by
  intro σ
  let B' := FixedPoints.subalgebra A B
  obtain ⟨s, hs⟩ := nonempty_sections_of_finite_cofiltered_system
    (stabilizerHomSurjectiveAuxFunctor (G := G) P Q σ)
  let a := (ProfiniteGrp.of G).isoLimittoFiniteQuotientFunctor.inv.hom
    ⟨fun N ↦ (s N).1.1, (fun {N N'} f ↦ congr($(hs f).1.1))⟩
  have (N : OpenNormalSubgroup G) : QuotientGroup.mk (s := N.1.1) a = (s N).1 :=
    congr_fun (congr_arg Subtype.val (ConcreteCategory.congr_hom (ProfiniteGrp.of
      G).isoLimittoFiniteQuotientFunctor.inv_hom_id (Subtype.mk (fun N ↦ (s N).1.1) _))) N
  refine ⟨⟨a, ?_⟩, ?_⟩
  · ext x
    obtain ⟨N, hN⟩ := ProfiniteGrp.exist_openNormalSubgroup_sub_open_nhds_of_one
      (stabilizer_isOpen G x) (one_mem _)
    lift x to B' N.1.1 using fun g ↦ hN g.2
    show x ∈ (a • Q).under (B' N.1.1) ↔ x ∈ Q.under (B' N.1.1)
    rw [← (s N).1.2]
    simp only [Ideal.comap_comap, Ideal.pointwise_smul_eq_comap, ← Ideal.comap_coe
          (F := RingEquiv _ _)]
    congr! 2
    ext y
    rw [← this]
    rfl
  · ext x
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨N, hN⟩ := ProfiniteGrp.exist_openNormalSubgroup_sub_open_nhds_of_one
      (stabilizer_isOpen G x) (one_mem _)
    lift x to B' N.1.1 using fun g ↦ hN g.2
    show Ideal.Quotient.mk Q (QuotientGroup.mk (s := N) a • x).1 = _
    rw [this]
    exact DFunLike.congr_fun (s N).2 (Ideal.Quotient.mk _ x)

end ProfiniteGrp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a16d714bbccb28eda032a355518d8853069d2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
