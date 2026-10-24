# IsCongruenceSubgroup.conjGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24431bd8-f2ff-d370-9229-c4a0c02c3f09",
  "kind": "lemma",
  "lexical_name": "IsCongruenceSubgroup.conjGL",
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
  "slug": "iscongruencesubgroup-conjgl--99d7144fef7419216abf5107",
  "source": {
    "blob": "c6fd6d034669498196383626cdc40a785a608d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 353,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99d7144fef7419216abf510770250179389713ac64df5430a5a6a8f7d590e764",
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

Occurrence: `result:24431bd8-f2ff-d370-9229-c4a0c02c3f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCongruenceSubgroup.conjGL {Γ : Subgroup SL(2, ℤ)} (hΓ : IsCongruenceSubgroup Γ)
    (g : GL (Fin 2) ℚ) :
    IsCongruenceSubgroup (conjGL Γ (g.map <| Rat.castHom ℝ)) := by
  obtain ⟨M, hN, hΓM⟩ := hΓ
  haveI _ : NeZero M := ⟨hN⟩
  obtain ⟨N, hN, hN'⟩ := exists_Gamma_le_conj' g M
  rw [Subgroup.pointwise_smul_subset_iff] at hN'
  refine ⟨N, ‹_›, fun x hx ↦ ?_⟩
  obtain ⟨y, hy, hy'⟩ := Subgroup.mem_inv_pointwise_smul_iff.mp <| hN' ⟨x, hx, rfl⟩
  exact mem_conjGL.mpr ⟨y, hΓM hy, hy'⟩

end Conjugation

end CongruenceSubgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6fd6d034669498196383626cdc40a785a608d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
