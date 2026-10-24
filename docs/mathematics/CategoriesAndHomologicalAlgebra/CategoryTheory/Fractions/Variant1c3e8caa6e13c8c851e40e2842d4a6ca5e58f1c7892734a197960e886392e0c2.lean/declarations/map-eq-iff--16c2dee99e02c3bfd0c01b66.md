# map_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "465d603552c31ffbf3d3c2e57c43eeb8bccd38c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f0418a0-21dd-d897-a9c9-466155753043",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03cbe9d1-68f3-d2c3-aa2a-5ea18acd5d57",
  "kind": "lemma",
  "lexical_name": "map_eq_iff",
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
  "slug": "map-eq-iff--16c2dee99e02c3bfd0c01b66",
  "source": {
    "blob": "465d603552c31ffbf3d3c2e57c43eeb8bccd38c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16c2dee99e02c3bfd0c01b6635229e4ef91449a648d30d81b48e19694f7fe048",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03cbe9d1-68f3-d2c3-aa2a-5ea18acd5d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_eq_iff {X Y : C} (φ ψ : W.LeftFraction₂ X Y) :
    (φ.fst.map L (Localization.inverts _ _) = ψ.fst.map L (Localization.inverts _ _) ∧
    φ.snd.map L (Localization.inverts _ _) = ψ.snd.map L (Localization.inverts _ _)) ↔
      LeftFraction₂Rel φ ψ := by
  simp only [LeftFraction.map_eq_iff L W]
  constructor
  · intro ⟨h, h'⟩
    obtain ⟨Z, t₁, t₂, hst, hft, ht⟩ := h
    obtain ⟨Z', t₁', t₂', hst', hft', ht'⟩ := h'
    dsimp at t₁ t₂ t₁' t₂' hst hft hst' hft' ht ht'
    have ⟨α, hα⟩ := (RightFraction.mk _ ht (φ.s ≫ t₁')).exists_leftFraction
    simp only [Category.assoc] at hα
    obtain ⟨Z'', u, hu, fac⟩ := HasLeftCalculusOfFractions.ext _ _ _ φ.hs hα
    have hα' : ψ.s ≫ t₂ ≫ α.f ≫ u = ψ.s ≫ t₂' ≫ α.s ≫ u := by
      rw [← reassoc_of% hst, ← reassoc_of% hα, ← reassoc_of% hst']
    obtain ⟨Z''', u', hu', fac'⟩ := HasLeftCalculusOfFractions.ext _ _ _ ψ.hs hα'
    simp only [Category.assoc] at fac fac'
    refine ⟨Z''', t₁' ≫ α.s ≫ u ≫ u', t₂' ≫ α.s ≫ u ≫ u', ?_, ?_, ?_, ?_⟩
    · rw [reassoc_of% hst']
    · rw [reassoc_of% fac, reassoc_of% hft, fac']
    · rw [reassoc_of% hft']
    · rw [← Category.assoc]
      exact W.comp_mem _ _ ht' (W.comp_mem _ _ α.hs (W.comp_mem _ _ hu hu'))
  · intro h
    exact ⟨h.fst, h.snd⟩

end LeftFraction₂

namespace RightFraction₂

variable {X Y : C}
variable (φ : W.RightFraction₂ X Y)

/-- The first right fraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465d603552c31ffbf3d3c2e57c43eeb8bccd38c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
