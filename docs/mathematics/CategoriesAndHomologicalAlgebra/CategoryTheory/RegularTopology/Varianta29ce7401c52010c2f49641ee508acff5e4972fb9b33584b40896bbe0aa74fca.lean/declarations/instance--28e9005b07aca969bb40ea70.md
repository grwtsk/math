# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aeec1726323f154104bef9d9c7f8f9278be92a27bd913e41924f5c49a830ec4",
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
  "slug": "instance--28e9005b07aca969bb40ea70",
  "source": {
    "blob": "480f7b05cd2d64501bd8ae3865d189c5d4b150c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianta29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28e9005b07aca969bb40ea70b468a1b7da72e8e40252a710586b8c83a12f9a73",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianta29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aeec1726323f154104bef9d9c7f8f9278be92a27bd913e41924f5c49a830ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {Y Y' : C} (π : Y ⟶ X) [EffectiveEpi π]
    (π' : Y' ⟶ Y) [EffectiveEpi π'] : EffectiveEpi (π' ≫ π) := by
  rw [effectiveEpi_iff_effectiveEpiFamily, ← Sieve.effectiveEpimorphic_family]
  suffices h₂ : (Sieve.generate (Presieve.ofArrows _ _)) ∈ (regularTopology C) X by
    change Nonempty _
    rw [← Sieve.forallYonedaIsSheaf_iff_colimit]
    exact fun W => regularTopology.isSheaf_yoneda_obj W _ h₂
  apply Coverage.Saturate.transitive X (Sieve.generate (Presieve.ofArrows (fun () ↦ Y)
      (fun () ↦ π)))
  · apply Coverage.Saturate.of
    use Y, π
  · intro V f ⟨Y₁, h, g, ⟨hY, hf⟩⟩
    rw [← hf, Sieve.pullback_comp]
    apply (regularTopology C).pullback_stable'
    apply regularTopology.mem_sieves_of_hasEffectiveEpi
    cases hY
    exact ⟨Y', π', inferInstance, Y', (𝟙 _), π' ≫ π, Presieve.ofArrows.mk (), (by simp)⟩

/-- A sieve is a cover for the regular topology if and only if it contains an `EffectiveEpi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianta29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianta29ce7401c52010c2f49641ee508acff5e4972fb9b33584b40896bbe0aa74fca.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480f7b05cd2d64501bd8ae3865d189c5d4b150c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
