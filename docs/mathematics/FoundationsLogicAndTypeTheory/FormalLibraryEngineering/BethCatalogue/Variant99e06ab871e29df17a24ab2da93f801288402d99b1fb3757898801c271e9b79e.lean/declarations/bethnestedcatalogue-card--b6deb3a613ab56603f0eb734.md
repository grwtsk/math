# bethNestedCatalogue_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:686c4e44-5a5b-6343-dd73-95f085f3061d",
  "kind": "theorem",
  "lexical_name": "bethNestedCatalogue_card",
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
  "slug": "bethnestedcatalogue-card--b6deb3a613ab56603f0eb734",
  "source": {
    "blob": "a4396fd374ae3a3ed1d33def3d715f6fd8557b19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant99e06ab871e29df17a24ab2da93f801288402d99b1fb3757898801c271e9b79e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6deb3a613ab56603f0eb7346111885a9d7fd57fc039d78135276b03333f5708",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant99e06ab871e29df17a24ab2da93f801288402d99b1fb3757898801c271e9b79e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:686c4e44-5a5b-6343-dd73-95f085f3061d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bethNestedCatalogue_card :
    #bethNestedCatalogue = Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) := by
  apply le_antisymm
  · apply mk_downwardClosure_le (Set.range bethPrefix)
      (Cardinal.beth Ordinal.omega0) (Cardinal.beth Ordinal.omega0)
      beth_omega_strongLimit le_rfl
    · have hNat : #(ℕ) ≤ Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) := by
        rw [Cardinal.mk_nat]
        exact beth_omega_uncountable.le
      exact Cardinal.mk_range_le.trans hNat
    · rintro C ⟨n, rfl⟩
      rw [bethPrefix_card]
      exact Cardinal.beth_lt_beth.mpr (Ordinal.natCast_lt_omega0 n)
  · rw [← bethFiber_sigma_card]
    exact Cardinal.mk_le_of_injective (f := fun x : BethAmbient ↦
      (⟨{x}, bethPrefix x.1, ⟨x.1, rfl⟩, by
        intro y hy
        rw [Set.mem_singleton_iff] at hy
        subst y
        change x.1 ≤ x.1
        exact le_rfl⟩ : bethNestedCatalogue)) (by
          intro x y h
          exact Set.singleton_injective (congrArg Subtype.val h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant99e06ab871e29df17a24ab2da93f801288402d99b1fb3757898801c271e9b79e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant99e06ab871e29df17a24ab2da93f801288402d99b1fb3757898801c271e9b79e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4396fd374ae3a3ed1d33def3d715f6fd8557b19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
