# finrank_eq_fixingSubgroup_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d125d792-6e04-cdf2-6f6d-5c9e175a6e30",
  "kind": "theorem",
  "lexical_name": "finrank_eq_fixingSubgroup_index",
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
  "slug": "finrank-eq-fixingsubgroup-index--6fbd35f949a3b450c94a5b68",
  "source": {
    "blob": "3084adef4cbd971d3a3aed40abd228db8109bb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 307,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fbd35f949a3b450c94a5b683522cab4282d6a20b8b48c41169d260e38be4376",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d125d792-6e04-cdf2-6f6d-5c9e175a6e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_eq_fixingSubgroup_index (L : IntermediateField k K) [IsGalois k K] :
    Module.finrank k L = L.fixingSubgroup.index := by
  wlog hnfd : FiniteDimensional k L generalizing L
  · rw [Module.finrank_of_infinite_dimensional hnfd]
    by_contra! h
    replace h : L.fixingSubgroup.FiniteIndex := ⟨h.symm⟩
    obtain ⟨L', hfd, hL'⟩ :=
      exists_lt_finrank_of_infinite_dimensional hnfd L.fixingSubgroup.index
    let i := (liftAlgEquiv L').toLinearEquiv
    replace hfd := i.finiteDimensional
    rw [i.finrank_eq, this _ hfd] at hL'
    exact (Subgroup.index_antitone <| fixingSubgroup_le <|
      IntermediateField.lift_le L').not_lt hL'
  let E := normalClosure k L K
  have hle : L ≤ E := by simpa only [fieldRange_val] using L.val.fieldRange_le_normalClosure
  let L' := restrict hle
  have h := Module.finrank_mul_finrank k ↥L' ↥E
  classical
  rw [← IsGalois.card_fixingSubgroup_eq_finrank L', ← IsGalois.card_aut_eq_finrank k E] at h
  nth_rw 2 [Fintype.card_eq_nat_card] at h
  rw [← L'.fixingSubgroup.index_mul_card, Nat.card_eq_fintype_card,
    Nat.mul_left_inj Fintype.card_ne_zero] at h
  rw [(restrict_algEquiv hle).toLinearEquiv.finrank_eq, h, ← L'.map_fixingSubgroup_index K]
  congr 2
  exact lift_restrict hle

end IntermediateField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3084adef4cbd971d3a3aed40abd228db8109bb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
