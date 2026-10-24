# Polynomial.lift_of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84ef44b1-97cf-c9c0-0dc5-1c2e31fc51b1",
  "kind": "theorem",
  "lexical_name": "Polynomial.lift_of_splits",
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
  "slug": "polynomial-lift-of-splits--cc835582f17c51d68249d948",
  "source": {
    "blob": "207a1c4fa98923a86922bebb686e85694eb26c29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 61,
    "path": "GRWTSK/Algebra/Field/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc835582f17c51d68249d94879f90cfb1b27e807f2ea69921f9764591b7bc5cc",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84ef44b1-97cf-c9c0-0dc5-1c2e31fc51b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.lift_of_splits {F K L : Type*} [Field F] [Field K] [Field L] [Algebra F K]
    [Algebra F L] (s : Finset K) : (∀ x ∈ s, IsIntegral F x ∧
      Splits (algebraMap F L) (minpoly F x)) → Nonempty (Algebra.adjoin F (s : Set K) →ₐ[F] L) := by
  classical
    refine Finset.induction_on s (fun _ ↦ ?_) fun a s _ ih H ↦ ?_
    · rw [coe_empty, Algebra.adjoin_empty]
      exact ⟨(Algebra.ofId F L).comp (Algebra.botEquiv F K)⟩
    rw [forall_mem_insert] at H
    rcases H with ⟨⟨H1, H2⟩, H3⟩
    obtain ⟨f⟩ := ih H3
    choose H3 _ using H3
    rw [coe_insert, Set.insert_eq, Set.union_comm, Algebra.adjoin_union_eq_adjoin_adjoin]
    set Ks := Algebra.adjoin F (s : Set K)
    haveI : FiniteDimensional F Ks := ((Submodule.fg_iff_finiteDimensional _).1
      (fg_adjoin_of_finite s.finite_toSet H3)).of_subalgebra_toSubmodule
    letI := fieldOfFiniteDimensional F Ks
    letI := (f : Ks →+* L).toAlgebra
    have H5 : IsIntegral Ks a := H1.tower_top
    have H6 : (minpoly Ks a).Splits (algebraMap Ks L) := by
      refine splits_of_splits_of_dvd _ ((minpoly.monic H1).map (algebraMap F Ks)).ne_zero
        ((splits_map_iff _ _).2 ?_) (minpoly.dvd _ _ ?_)
      · rw [← IsScalarTower.algebraMap_eq]
        exact H2
      · rw [Polynomial.aeval_map_algebraMap, minpoly.aeval]
    obtain ⟨y, hy⟩ := Polynomial.exists_root_of_splits _ H6 (minpoly.degree_pos H5).ne'
    exact ⟨Subalgebra.ofRestrictScalars F _ <| Algebra.adjoin.liftSingleton Ks a y hy⟩

end Embeddings

variable {R K L M : Type*} [CommRing R] [Field K] [Field L] [CommRing M] [Algebra R K]
  [Algebra R M] {x : L}

section
variable [Algebra R L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `207a1c4fa98923a86922bebb686e85694eb26c29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
