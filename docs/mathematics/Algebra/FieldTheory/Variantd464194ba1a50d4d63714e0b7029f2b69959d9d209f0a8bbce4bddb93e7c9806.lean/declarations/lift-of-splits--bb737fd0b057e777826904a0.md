# lift_of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc18b73b-0d88-9981-6b3f-3cf1b453cfa7",
  "kind": "theorem",
  "lexical_name": "lift_of_splits",
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
  "slug": "lift-of-splits--bb737fd0b057e777826904a0",
  "source": {
    "blob": "c78d4c35d866de492ac97b1cbf4fd84a9b3f2ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 71,
    "path": "GRWTSK/Algebra/Field/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb737fd0b057e777826904a084b806c4f123e2d55470958ccb2e5216e7a018e2",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc18b73b-0d88-9981-6b3f-3cf1b453cfa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_of_splits {F K L : Type*} [Field F] [Field K] [Field L] [Algebra F K] [Algebra F L]
    (s : Finset K) : (∀ x ∈ s, IsIntegral F x ∧ Polynomial.Splits (algebraMap F L) (minpoly F x)) →
      Nonempty (Algebra.adjoin F (↑s : Set K) →ₐ[F] L) := by
  classical
    refine' Finset.induction_on s (fun _ => _) fun a s _ ih H => _
    · rw [coe_empty, Algebra.adjoin_empty]
      exact ⟨(Algebra.ofId F L).comp (Algebra.botEquiv F K)⟩
    rw [forall_mem_insert] at H
    rcases H with ⟨⟨H1, H2⟩, H3⟩
    cases' ih H3 with f
    choose H3 _ using H3
    rw [coe_insert, Set.insert_eq, Set.union_comm, Algebra.adjoin_union_eq_adjoin_adjoin]
    letI := (f : Algebra.adjoin F (↑s : Set K) →+* L).toAlgebra
    haveI : FiniteDimensional F (Algebra.adjoin F (↑s : Set K)) :=
      ((Submodule.fg_iff_finiteDimensional _).1
        (FG_adjoin_of_finite s.finite_toSet H3)).of_subalgebra_toSubmodule
    letI := fieldOfFiniteDimensional F (Algebra.adjoin F (↑s : Set K))
    have H5 : IsIntegral (Algebra.adjoin F (s : Set K)) a := isIntegral_of_isScalarTower H1
    have H6 : (minpoly (Algebra.adjoin F (s : Set K)) a).Splits
        (algebraMap (Algebra.adjoin F (s : Set K)) L) := by
      have : Polynomial.map (algebraMap F (Algebra.adjoin F (s : Set K))) (minpoly F a) ≠ 0 :=
        Polynomial.map_ne_zero <| minpoly.ne_zero H1
      refine' Polynomial.splits_of_splits_of_dvd _ this
        ((Polynomial.splits_map_iff _ _).2 _) (minpoly.dvd _ _ _)
      · rw [← IsScalarTower.algebraMap_eq]
        exact H2
      · rw [Polynomial.aeval_map_algebraMap, minpoly.aeval]
    obtain ⟨y, hy⟩ := Polynomial.exists_root_of_splits _ H6 (ne_of_lt (minpoly.degree_pos H5)).symm
    refine' ⟨Subalgebra.ofRestrictScalars F _ _⟩
    refine' (AdjoinRoot.liftHom (minpoly (Algebra.adjoin F (↑s : Set K)) a) y hy).comp _
    exact (AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly
      (Algebra.adjoin F (↑s : Set K)) a).toAlgHom
#align lift_of_splits lift_of_splits

end Embeddings
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c78d4c35d866de492ac97b1cbf4fd84a9b3f2ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
