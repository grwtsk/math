# natDegree_eq_card_roots'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3eb04a5-f5aa-3290-7a87-86ac6da0baf8",
  "kind": "theorem",
  "lexical_name": "natDegree_eq_card_roots'",
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
  "slug": "natdegree-eq-card-roots--3aef346f891258d6e3a94e1d",
  "source": {
    "blob": "61222c34d711a75795177d2cec192cc25f3eb2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 244,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aef346f891258d6e3a94e1d9e23e2dd6ca0d5e76484051fb01d1186ff07c0d2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3eb04a5-f5aa-3290-7a87-86ac6da0baf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_eq_card_roots' {p : K[X]} {i : K →+* L} (hsplit : Splits i p) :
    (p.map i).natDegree = Multiset.card (p.map i).roots := by
  by_cases hp : p.map i = 0
  · rw [hp, natDegree_zero, roots_zero, Multiset.card_zero]
  obtain ⟨q, he, hd, hr⟩ := exists_prod_multiset_X_sub_C_mul (p.map i)
  rw [← splits_id_iff_splits, ← he] at hsplit
  rw [← he] at hp
  have hq : q ≠ 0 := fun h => hp (by rw [h, mul_zero])
  rw [← hd, add_eq_left]
  by_contra h
  have h' : (map (RingHom.id L) q).natDegree ≠ 0 := by simp [h]
  have := roots_ne_zero_of_splits' (RingHom.id L) (splits_of_splits_mul' _ ?_ hsplit).2 h'
  · rw [map_id] at this
    exact this hr
  · rw [map_id]
    exact mul_ne_zero (monic_multisetProd_X_sub_C _).ne_zero hq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61222c34d711a75795177d2cec192cc25f3eb2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
