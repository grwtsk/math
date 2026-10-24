# isSolvable_iff_commutator_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61ec4f1e-6a6e-b774-73f5-09ae8f804ea1",
  "kind": "theorem",
  "lexical_name": "isSolvable_iff_commutator_lt",
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
  "slug": "issolvable-iff-commutator-lt--d4be0360f7c1019e13c2c48b",
  "source": {
    "blob": "1fc119814455e9d5098ac06dcf1da3518b256f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 168,
    "path": "GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4be0360f7c1019e13c2c48b94c7b3d1e83ded045c8ae87ab780928ab34977c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61ec4f1e-6a6e-b774-73f5-09ae8f804ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSolvable_iff_commutator_lt [WellFoundedLT (Subgroup G)] :
    IsSolvable G ↔ ∀ H : Subgroup G, H ≠ ⊥ → ⁅H, H⁆ < H := by
  refine ⟨fun _ _ ↦ IsSolvable.commutator_lt_of_ne_bot, fun h ↦ ?_⟩
  suffices h : IsSolvable (⊤ : Subgroup G) from
    solvable_of_surjective (MonoidHom.range_eq_top.mp (range_subtype ⊤))
  refine WellFoundedLT.induction (C := fun (H : Subgroup G) ↦ IsSolvable H) ⊤ fun H hH ↦ ?_
  rcases eq_or_ne H ⊥ with rfl | h'
  · infer_instance
  · obtain ⟨n, hn⟩ := hH ⁅H, H⁆ (h H h')
    use n + 1
    rw [← (map_injective (subtype_injective _)).eq_iff, Subgroup.map_bot] at hn ⊢
    rw [← hn]
    clear hn
    induction' n with n ih
    · rw [derivedSeries_succ, derivedSeries_zero, derivedSeries_zero, map_commutator,
        ← MonoidHom.range_eq_map, ← MonoidHom.range_eq_map, range_subtype, range_subtype]
    · rw [derivedSeries_succ, map_commutator, ih, derivedSeries_succ, map_commutator]

end Solvable

section IsSimpleGroup

variable [IsSimpleGroup G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc119814455e9d5098ac06dcf1da3518b256f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
