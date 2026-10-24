# Algebra.IsInvariant.exists_smul_of_under_eq_of_profinite

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
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62b1a903-18ea-6bec-870f-8619406e2134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2447cd32-27ee-7b88-3deb-54fe4c5d9a27",
  "kind": "lemma",
  "lexical_name": "Algebra.IsInvariant.exists_smul_of_under_eq_of_profinite",
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
  "slug": "algebra-isinvariant-exists-smul-of-under-eq-of-profinite--4a3b9081ef86e4b4f5d87afa",
  "source": {
    "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 53,
    "path": "GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a3b9081ef86e4b4f5d87afa4b3359f89fe5ca2091447ba8f21dc2c44376a4d2",
  "verification": {
    "reference": "docs/verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2447cd32-27ee-7b88-3deb-54fe4c5d9a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.IsInvariant.exists_smul_of_under_eq_of_profinite
    [Algebra.IsInvariant A B G] (P Q : Ideal B) [P.IsPrime] [Q.IsPrime]
    (hPQ : P.under A = Q.under A) :
    ∃ g : G, Q = g • P := by
  let B' := FixedPoints.subalgebra A B
  let F : OpenNormalSubgroup G ⥤ Type _ :=
  { obj N := { g : G ⧸ N.1.1 // Q.under (B' N.1.1) = g • P.under (B' N.1.1) }
    map {N N'} f x := ⟨(QuotientGroup.map _ _ (.id _) (leOfHom f)) x.1, by
      have h : B' N'.1.1 ≤ B' N.1.1 := fun x hx n ↦ hx ⟨_, f.le n.2⟩
      obtain ⟨x, hx⟩ := x
      obtain ⟨x, rfl⟩ := QuotientGroup.mk_surjective x
      simpa only [Ideal.comap_comap, Ideal.pointwise_smul_eq_comap, ← Ideal.comap_coe
        (F := RingEquiv _ _)] using congr(Ideal.comap (Subalgebra.inclusion h).toRingHom $hx)⟩
    map_id N := by ext ⟨⟨x⟩, hx⟩; rfl
    map_comp f g := by ext ⟨⟨x⟩, hx⟩; rfl }
  have (N) : Nonempty (F.obj N) := by
    obtain ⟨g, hg⟩ := Algebra.IsInvariant.exists_smul_of_under_eq A
      (B' N.1.1) (G ⧸ N.1.1) (P.under _) (Q.under _) hPQ
    exact ⟨g, hg⟩
  obtain ⟨s, hs⟩ := nonempty_sections_of_finite_cofiltered_system F
  let a := (ProfiniteGrp.of G).isoLimittoFiniteQuotientFunctor.inv.hom
    ⟨fun N ↦ (s N).1, (fun {N N'} f ↦ congr_arg Subtype.val (hs f))⟩
  have (N : OpenNormalSubgroup G) : QuotientGroup.mk (s := N.1.1) a = s N := by
    show ((ProfiniteGrp.of G).isoLimittoFiniteQuotientFunctor.hom.hom a).1 N = _
    simp only [a]
    rw [← ProfiniteGrp.comp_apply, Iso.inv_hom_id]
    simp
  refine ⟨a, ?_⟩
  ext x
  obtain ⟨N, hN⟩ := ProfiniteGrp.exist_openNormalSubgroup_sub_open_nhds_of_one
    (stabilizer_isOpen G x) (one_mem _)
  lift x to B' N.1.1 using fun g ↦ hN g.2
  show x ∈ Q.under (B' N.1.1) ↔ x ∈ Ideal.under (B' N.1.1) ((_ : G) • P)
  rw [(s N).2]
  simp only [Ideal.comap_comap, Ideal.pointwise_smul_eq_comap, ← Ideal.comap_coe
        (F := RingEquiv _ _)]
  congr! 2
  ext y
  simp [← this]
  rfl

attribute [local instance] Subgroup.finiteIndex_of_finite_quotient

omit
  [CompactSpace G]
  [TotallyDisconnectedSpace G]
  [IsTopologicalGroup G]
  [TopologicalSpace B]
  [DiscreteTopology B]
  [ContinuousSMul G B] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a16d714bbccb28eda032a355518d8853069d2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
