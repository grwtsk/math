# EqualizerCondition.bijective_mapToEqualizer_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddd8b58b-d443-446d-8a11-f0c763e27676",
  "kind": "theorem",
  "lexical_name": "EqualizerCondition.bijective_mapToEqualizer_pullback",
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
  "slug": "equalizercondition-bijective-maptoequalizer-pullback--a95332158c02572e2c304839",
  "source": {
    "blob": "f38f04b1a9011c85bd13217c84fa3a3437947521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a95332158c02572e2c3048393b235abf7e5879d67c2408fd428af72f05319185",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd8b58b-d443-446d-8a11-f0c763e27676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EqualizerCondition.bijective_mapToEqualizer_pullback (P : Cᵒᵖ ⥤ Type*)
    (hP : EqualizerCondition P) : ∀ (X B : C) (π : X ⟶ B) [EffectiveEpi π] [HasPullback π π],
    Function.Bijective
      (MapToEqualizer P π (pullback.fst π π) (pullback.snd π π) pullback.condition) := by
  intro X B π _ _
  specialize hP π _ (pullbackIsPullback π π)
  rw [Types.type_equalizer_iff_unique] at hP
  rw [Function.bijective_iff_existsUnique]
  intro ⟨b, hb⟩
  obtain ⟨a, ha₁, ha₂⟩ := hP b hb
  refine ⟨a, ?_, ?_⟩
  · simpa [MapToEqualizer] using ha₁
  · simpa [MapToEqualizer] using ha₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f38f04b1a9011c85bd13217c84fa3a3437947521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
