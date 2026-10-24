# cfcₙHom_of_cfcHom_map_quasispectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2977155a-16d2-889f-8b54-55c2a96c630f",
  "kind": "lemma",
  "lexical_name": "cfcₙHom_of_cfcHom_map_quasispectrum",
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
  "slug": "cfc-hom-of-cfchom-map-quasispectrum--f8b7e9c390837f0aabe35ce6",
  "source": {
    "blob": "d5b8be2ff6a62665311738463360b43b972982a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 837,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b7e9c390837f0aabe35ce6697ccb3ecaaae52f32dfcdfd029b10a95dd6c483",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2977155a-16d2-889f-8b54-55c2a96c630f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙHom_of_cfcHom_map_quasispectrum [ContinuousFunctionalCalculus R A p] {a : A} (ha : p a) :
    ∀ f : C(σₙ R a, R)₀, σₙ R (cfcₙHom_of_cfcHom R ha f) = range f := by
  intro f
  simp only [cfcₙHom_of_cfcHom]
  rw [quasispectrum_eq_spectrum_union_zero]
  simp only [NonUnitalStarAlgHom.comp_apply, StarAlgHom.coe_toNonUnitalStarAlgHom]
  rw [cfcHom_map_spectrum ha]
  ext x
  constructor
  · rintro (⟨x, rfl⟩ | rfl)
    · exact ⟨⟨x.1, spectrum_subset_quasispectrum R a x.2⟩, rfl⟩
    · exact ⟨0, map_zero f⟩
  · rintro ⟨x, rfl⟩
    have hx := x.2
    simp_rw [quasispectrum_eq_spectrum_union_zero R a] at hx
    obtain (hx | hx) := hx
    · exact Or.inl ⟨⟨x.1, hx⟩, rfl⟩
    · apply Or.inr
      push _ ∈ _ at hx ⊢
      rw [show x = 0 from Subtype.val_injective hx, map_zero]

-- gives access to the `ContinuousFunctionalCalculus.compactSpace_spectrum` instance
open scoped ContinuousFunctionalCalculus

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b8be2ff6a62665311738463360b43b972982a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
