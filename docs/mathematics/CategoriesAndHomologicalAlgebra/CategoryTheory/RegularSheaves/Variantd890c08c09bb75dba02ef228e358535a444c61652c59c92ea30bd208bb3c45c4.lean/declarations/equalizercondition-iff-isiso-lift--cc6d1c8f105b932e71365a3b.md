# equalizerCondition_iff_isIso_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3328dccf599610a0cfe4799381f664ce680b2f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81e379ef-c45e-0a13-8f5a-7f81ab673bbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:091b5db6-2eff-af70-7a57-47a5752e8ed3",
  "kind": "theorem",
  "lexical_name": "equalizerCondition_iff_isIso_lift",
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
  "slug": "equalizercondition-iff-isiso-lift--cc6d1c8f105b932e71365a3b",
  "source": {
    "blob": "c3328dccf599610a0cfe4799381f664ce680b2f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc6d1c8f105b932e71365a3b150d969d0e7cf31bcbc3b5a993deeb0d0a1f3aeb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:091b5db6-2eff-af70-7a57-47a5752e8ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equalizerCondition_iff_isIso_lift (P : Cᵒᵖ ⥤ Type*) : EqualizerCondition P ↔
    ∀ (X B : C) (π : X ⟶ B) [EffectiveEpi π] [HasPullback π π],
      IsIso (equalizer.lift (P.map π.op) (equalizerCondition_w' P π)) := by
  constructor
  · intro hP X B π _ _
    have h := hP.bijective_mapToEqualizer_pullback _ X B π
    rw [← isIso_iff_bijective, mapToEqualizer_eq_comp] at h
    exact IsIso.of_isIso_comp_right (equalizer.lift (P.map π.op)
      (equalizerCondition_w' P π))
      (Types.equalizerIso _ _).hom
  · intro hP
    apply EqualizerCondition.mk
    intro X B π _ _
    rw [mapToEqualizer_eq_comp, ← isIso_iff_bijective]
    infer_instance

/-- `P` satisfies the equalizer condition iff its precomposition by an equivalence does. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3328dccf599610a0cfe4799381f664ce680b2f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
