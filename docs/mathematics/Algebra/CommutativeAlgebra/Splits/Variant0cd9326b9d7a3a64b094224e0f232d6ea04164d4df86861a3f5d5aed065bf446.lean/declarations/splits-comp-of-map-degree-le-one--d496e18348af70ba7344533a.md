# Splits.comp_of_map_degree_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c06658e3-f744-cb06-93a5-bc08ce534df1",
  "kind": "theorem",
  "lexical_name": "Splits.comp_of_map_degree_le_one",
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
  "slug": "splits-comp-of-map-degree-le-one--d496e18348af70ba7344533a",
  "source": {
    "blob": "61222c34d711a75795177d2cec192cc25f3eb2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 150,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d496e18348af70ba7344533a30f829f8f5b04035dce73b59d2fc2af927fdb871",
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

Occurrence: `result:c06658e3-f744-cb06-93a5-bc08ce534df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Splits.comp_of_map_degree_le_one {f : K[X]} {p : K[X]} (hd : (p.map i).degree ≤ 1)
    (h : f.Splits i) : (f.comp p).Splits i := by
  by_cases hzero : map i (f.comp p) = 0
  · exact Or.inl hzero
  cases h with
  | inl h0 =>
    exact Or.inl <| map_comp i _ _ ▸ h0.symm ▸ zero_comp
  | inr h =>
    right
    intro g irr dvd
    rw [map_comp] at dvd hzero
    cases lt_or_eq_of_le hd with
    | inl hd =>
      rw [eq_C_of_degree_le_zero (Nat.WithBot.lt_one_iff_le_zero.mp hd), comp_C] at dvd hzero
      refine False.elim (irr.1 (isUnit_of_dvd_unit dvd ?_))
      simpa using hzero
    | inr hd =>
      let _ := invertibleOfNonzero (leadingCoeff_ne_zero.mpr
          (ne_zero_of_degree_gt (n := ⊥) (by rw [hd]; decide)))
      rw [eq_X_add_C_of_degree_eq_one hd, dvd_comp_C_mul_X_add_C_iff _ _] at dvd
      have := h (irr.map (algEquivCMulXAddC _ _).symm) dvd
      rw [degree_eq_natDegree irr.ne_zero]
      rwa [algEquivCMulXAddC_symm_apply, ← comp_eq_aeval,
        degree_eq_natDegree (fun h => WithBot.bot_ne_one (h ▸ this)),
        natDegree_comp, natDegree_C_mul (invertibleInvOf.ne_zero),
        natDegree_X_sub_C, mul_one] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant0cd9326b9d7a3a64b094224e0f232d6ea04164d4df86861a3f5d5aed065bf446.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61222c34d711a75795177d2cec192cc25f3eb2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
