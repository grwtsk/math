# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7799f64d14149a5585feaf7963d05909fe63265282c6e8c5f34bdfd825fb679b",
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
  "slug": "instance--1ee390b6893cfccbcaffda10",
  "source": {
    "blob": "733efb872ae3c3ab2e3419290b3e0e74a5f5eedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ee390b6893cfccbcaffda10ca12904da8f9bd085fe398366ac6a346a264dafd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7799f64d14149a5585feaf7963d05909fe63265282c6e8c5f34bdfd825fb679b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) isPredArchimedean_of_isSuccArchimedean [IsSuccArchimedean ι] :
    IsPredArchimedean ι where
  exists_pred_iterate_of_le {i j} hij := by
    have h_exists := exists_succ_iterate_of_le hij
    obtain ⟨n, hn_eq, hn_lt_ne⟩ : ∃ n, succ^[n] i = j ∧ ∀ m < n, succ^[m] i ≠ j :=
      ⟨Nat.find h_exists, Nat.find_spec h_exists, fun m hmn ↦ Nat.find_min h_exists hmn⟩
    refine ⟨n, ?_⟩
    rw [← hn_eq]
    cases n with
    | zero => simp only [Function.iterate_zero, id]
    | succ n =>
      rw [pred_succ_iterate_of_not_isMax]
      rw [Nat.succ_sub_succ_eq_sub, tsub_zero]
      suffices succ^[n] i < succ^[n.succ] i from not_isMax_of_lt this
      refine lt_of_le_of_ne ?_ ?_
      · rw [Function.iterate_succ_apply']
        exact le_succ _
      · rw [hn_eq]
        exact hn_lt_ne _ (Nat.lt_succ_self n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `733efb872ae3c3ab2e3419290b3e0e74a5f5eedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
