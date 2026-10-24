# isCyclic_commutator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:502469a4-077d-3db0-895d-24b7ee184504",
  "kind": "theorem",
  "lexical_name": "isCyclic_commutator",
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
  "slug": "iscyclic-commutator--5a957390d9fedec4f50454d9",
  "source": {
    "blob": "ed3206bc3870b8c1cecb24051faaadb194a44b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 148,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a957390d9fedec4f50454d97baebaf8a1e2d43a943db87bcb86bdf098e8c868",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:502469a4-077d-3db0-895d-24b7ee184504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCyclic_commutator [Finite G] [IsZGroup G] : IsCyclic (commutator G) := by
  refine WellFoundedLT.induction (C := fun H ↦ IsCyclic (⁅H, H⁆ : Subgroup G)) (⊤ : Subgroup G) ?_
  intro H hH
  rcases eq_or_ne H ⊥ with rfl | h
  · rw [Subgroup.commutator_bot_left]
    infer_instance
  · specialize hH ⁅H, H⁆ (IsSolvable.commutator_lt_of_ne_bot h)
    replace hH : IsCyclic (⁅commutator H, commutator H⁆ : Subgroup H) := by
      let f := Subgroup.equivMapOfInjective ⁅commutator H, commutator H⁆ _ H.subtype_injective
      rw [Subgroup.map_commutator, Subgroup.map_subtype_commutator] at f
      exact isCyclic_of_surjective f.symm f.symm.surjective
    suffices IsCyclic (commutator H) by
      let f := Subgroup.equivMapOfInjective (commutator H) _ H.subtype_injective
      rw [Subgroup.map_subtype_commutator] at f
      exact isCyclic_of_surjective f f.surjective
    suffices h : commutator (commutator H) ≤ Subgroup.center (commutator H) by
      rw [← Abelianization.ker_of (commutator H)] at h
      let _ := commGroupOfCyclicCenterQuotient Abelianization.of h
      infer_instance
    suffices h : (commutator (commutator H)).map (commutator H).subtype ≤
        Subgroup.centralizer (commutator H) by
      simpa [SetLike.le_def, Subgroup.mem_center_iff, Subgroup.mem_centralizer_iff] using h
    rw [Subgroup.map_subtype_commutator, Subgroup.le_centralizer_iff]
    let _ := (hH.mulAutMulEquiv _).toMonoidHom.commGroupOfInjective (hH.mulAutMulEquiv _).injective
    have h := Abelianization.commutator_subset_ker ⁅commutator H, commutator H⁆.normalizerMonoidHom
    rwa [Subgroup.normalizerMonoidHom_ker, Subgroup.normalizer_eq_top,
      ← Subgroup.map_subtype_le_map_subtype, Subgroup.map_subtype_commutator,
        Subgroup.map_subgroupOf_eq_of_le le_top] at h

end Commutator

end IsZGroup

section Hall

variable {p : ℕ} [Fact p.Prime]

namespace IsPGroup

/-- If a group `K` acts on a cyclic `p`-group `G` of coprime order, then the map `K × G → G`
  defined by `(k, g) ↦ k • g * g⁻¹` is either trivial or surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3206bc3870b8c1cecb24051faaadb194a44b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
