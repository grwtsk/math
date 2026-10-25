# mk_eq_of_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aea9ded8-852f-25d2-3f4b-7f31a6d75d0d",
  "kind": "theorem",
  "lexical_name": "mk_eq_of_naturality",
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
  "slug": "mk-eq-of-naturality--8a0a69d009ef0ba6511d6266",
  "source": {
    "blob": "1bf6422ed57a04da3acccb60512e86912aff5b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a0a69d009ef0ba6511d6266e03004b0d77024a0912e2650d115af61b4590d02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aea9ded8-852f-25d2-3f4b-7f31a6d75d0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_eq_of_naturality {f g f' : a ⟶ b} {η θ : f ⟶ g} {η' θ' : f ≅ g}
    (η_f : 𝟙 a ≫ f ≅ f') (η_g : 𝟙 a ≫ g ≅ f')
    (Hη : η'.hom = η) (Hθ : θ'.hom = θ)
    (Hη' : whiskerLeftIso (𝟙 a) η' ≪≫ η_g = η_f)
    (Hθ' : whiskerLeftIso (𝟙 a) θ' ≪≫ η_g = η_f) : η = θ :=
  calc
    η = η'.hom := Hη.symm
    _ = (λ_ f).inv ≫ η_f.hom ≫ η_g.inv ≫ (λ_ g).hom := by
      simp [← reassoc_of% (congrArg Iso.hom Hη')]
    _ = θ'.hom := by
      simp [← reassoc_of% (congrArg Iso.hom Hθ')]
    _ = θ := Hθ

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf6422ed57a04da3acccb60512e86912aff5b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
