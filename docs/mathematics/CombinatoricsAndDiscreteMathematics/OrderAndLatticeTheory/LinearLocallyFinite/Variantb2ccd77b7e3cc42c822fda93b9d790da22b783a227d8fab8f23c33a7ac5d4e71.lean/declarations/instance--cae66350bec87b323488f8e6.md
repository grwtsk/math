# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70dd096df033e07ef329143a6347df0d06a899ad7d7f540b9762c6bc88650cd3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cae66350bec87b323488f8e6",
  "source": {
    "blob": "be182f01e28e320f42e9e6d25ac8c489c339e5f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cae66350bec87b323488f8e61fd703a9c29fedd885b1465ef661685c216b208b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70dd096df033e07ef329143a6347df0d06a899ad7d7f540b9762c6bc88650cd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) [LocallyFiniteOrder ι] [SuccOrder ι] : IsSuccArchimedean ι where
  exists_succ_iterate_of_le := by
    intro i j hij
    rw [le_iff_lt_or_eq] at hij
    rcases hij with hij | hij
    swap
    · refine ⟨0, ?_⟩
      simpa only [Function.iterate_zero, id] using hij
    by_contra! h
    have h_lt : ∀ n, succ^[n] i < j := fun n ↦ by
      induction n with
      | zero => simpa only [Function.iterate_zero, id] using hij
      | succ n hn =>
        refine lt_of_le_of_ne ?_ (h _)
        rw [Function.iterate_succ', Function.comp_apply]
        exact succ_le_of_lt hn
    have h_mem : ∀ n, succ^[n] i ∈ Finset.Icc i j :=
      fun n ↦ Finset.mem_Icc.mpr ⟨le_succ_iterate n i, (h_lt n).le⟩
    obtain ⟨n, m, hnm, h_eq⟩ : ∃ n m, n < m ∧ succ^[n] i = succ^[m] i := by
      let f : ℕ → Finset.Icc i j := fun n ↦ ⟨succ^[n] i, h_mem n⟩
      obtain ⟨n, m, hnm_ne, hfnm⟩ : ∃ n m, n ≠ m ∧ f n = f m :=
        Finite.exists_ne_map_eq_of_infinite f
      have hnm_eq : succ^[n] i = succ^[m] i := by simpa only [f, Subtype.mk_eq_mk] using hfnm
      rcases le_total n m with h_le | h_le
      · exact ⟨n, m, lt_of_le_of_ne h_le hnm_ne, hnm_eq⟩
      · exact ⟨m, n, lt_of_le_of_ne h_le hnm_ne.symm, hnm_eq.symm⟩
    have h_max : IsMax (succ^[n] i) := isMax_iterate_succ_of_eq_of_ne h_eq hnm.ne
    exact not_le.mpr (h_lt n) (h_max (h_lt n).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be182f01e28e320f42e9e6d25ac8c489c339e5f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
