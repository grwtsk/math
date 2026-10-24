# Scheme.Hom.isLocallyConstant_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6116c99-800b-8d5b-4dcc-96e30807c6d4",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.isLocallyConstant_finrank",
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
  "slug": "scheme-hom-islocallyconstant-finrank--beaa434bccd5938213858011",
  "source": {
    "blob": "2c1d3ee597b32bacebd1aaf18059d1e679a08b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 239,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beaa434bccd5938213858011c47412a10b7dd4567ed176718356a5aeb351501e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6116c99-800b-8d5b-4dcc-96e30807c6d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma Scheme.Hom.isLocallyConstant_finrank [LocallyOfFinitePresentation f] :
    IsLocallyConstant (finrank f) := by
  wlog hY : ∃ R, Y = Spec R
  · rw [IsLocallyConstant.iff_exists_open]
    intro y
    obtain ⟨R, g, _, x, rfl⟩ := Y.exists_Spec_apply_eq y
    simp_rw [IsLocallyConstant.iff_exists_open] at this
    obtain ⟨U, hU, hxU, H⟩ := this (pullback.snd f g) ⟨_, rfl⟩ x
    refine ⟨g ''ᵁ ⟨U, hU⟩, (g ''ᵁ ⟨U, hU⟩).2, ⟨x, hxU, rfl⟩, fun y ↦ ?_⟩
    rintro ⟨y', (hyU : y' ∈ U), (rfl : g y' = y)⟩
    rw [← finrank_pullback_snd _ g, ← finrank_pullback_snd _ g]
    exact H y' hyU
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · have _ : IsAffine X := isAffine_of_isAffineHom f
    rw [← finrank_comp_left_of_isIso X.isoSpec.inv]
    exact this _ _ ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  simp only [Flat.SpecMap_iff, IsFinite.SpecMap_iff, LocallyOfFinitePresentation.SpecMap_iff] at *
  rw [finrank_SpecMap_eq_finrank ‹_› ‹_›]
  algebraize [φ.hom]
  have := Module.FinitePresentation.of_finite_of_finitePresentation
  exact Module.isLocallyConstant_rankAtStalk

set_option backward.isDefEq.respectTransparency false in
/-- The rank of an isomorphism is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1d3ee597b32bacebd1aaf18059d1e679a08b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
