# regularTopology.isLocallySurjective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5676666-2cea-5735-c793-b63425acc4d6",
  "kind": "lemma",
  "lexical_name": "regularTopology.isLocallySurjective_iff",
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
  "slug": "regulartopology-islocallysurjective-iff--12388b6397d1a974bf9ee454",
  "source": {
    "blob": "99783b0824f32a0e69eb852c71a4104a399b98a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12388b6397d1a974bf9ee4543f3ea9dcc762f75103b025933227c2858d11d18d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5676666-2cea-5735-c793-b63425acc4d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma regularTopology.isLocallySurjective_iff [Preregular C] {F G : Cᵒᵖ ⥤ D} (f : F ⟶ G) :
    Presheaf.IsLocallySurjective (regularTopology C) f ↔
      ∀ (X : C) (y : ToType (G.obj ⟨X⟩)), (∃ (X' : C) (φ : X' ⟶ X) (_ : EffectiveEpi φ)
        (x : ToType (F.obj ⟨X'⟩)),
        f.app ⟨X'⟩ x = G.map ⟨φ⟩ y) := by
  constructor
  · intro ⟨h⟩ X y
    specialize h y
    rw [regularTopology.mem_sieves_iff_hasEffectiveEpi] at h
    obtain ⟨X', π, h, h'⟩ := h
    exact ⟨X', π, h, h'⟩
  · intro h
    refine ⟨fun y ↦ ?_⟩
    obtain ⟨X', π, h, h'⟩ := h _ y
    rw [regularTopology.mem_sieves_iff_hasEffectiveEpi]
    exact ⟨X', π, h, h'⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99783b0824f32a0e69eb852c71a4104a399b98a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
