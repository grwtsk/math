# finiteIndex_conjGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa51cb81-10d0-d971-c943-4d745032a03c",
  "kind": "lemma",
  "lexical_name": "finiteIndex_conjGL",
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
  "slug": "finiteindex-conjgl--7126dbc98479cb6e29ee4262",
  "source": {
    "blob": "c6fd6d034669498196383626cdc40a785a608d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 329,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7126dbc98479cb6e29ee42622af49669e8dc7309a0b5b96d4860ebe9258c092b",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa51cb81-10d0-d971-c943-4d745032a03c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finiteIndex_conjGL (Γ : Subgroup SL(2, ℤ)) [Γ.FiniteIndex] (g : GL (Fin 2) ℚ) :
    (conjGL Γ (g.map <| Rat.castHom ℝ)).FiniteIndex := by
  constructor
  let t := (toConjAct <| g.map <| Rat.castHom ℝ)⁻¹
  let G := Γ.map (mapGL ℝ)
  let A := MonoidHom.range (mapGL ℝ : SL(2, ℤ) →* _)
  suffices (t • G ⊓ A).relindex A ≠ 0 by rwa [conjGL, index_comap, ← inf_relindex_right]
  apply relindex_ne_zero_trans (K := t • A ⊓ A)
  · -- Show that `[ (t • A ⊓ A) : (t • G ⊓ A)] < ∞`.
    apply relindex_inter_ne_zero
    rw [relindex_pointwise_smul, ← index_comap,
      comap_map_eq_self_of_injective mapGL_injective]
    exact FiniteIndex.index_ne_zero
  · -- Show that `[A : (t • A ⊓ A)] < ∞` (note this is independent of `Γ`)
    obtain ⟨N, hN, hN'⟩ := exists_Gamma_le_conj' g 1
    rw [Gamma_one_top, ← MonoidHom.range_eq_map] at hN'
    suffices Γ(N) ≤ (t • A ⊓ A).comap (mapGL ℝ) by
      haveI _ : NeZero N := ⟨hN⟩
      simpa only [index_comap] using (finiteIndex_of_le this).index_ne_zero
    intro k hk
    simpa [mem_pointwise_smul_iff_inv_smul_mem, A] using
      hN' <| smul_mem_pointwise_smul _ _ _ ⟨k, hk, rfl⟩

/-- If `Γ` is a congruence subgroup, then so is `g⁻¹ Γ g ∩ SL(2, ℤ)` for any `g ∈ GL(2, ℚ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6fd6d034669498196383626cdc40a785a608d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
