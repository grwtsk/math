# discriminant_eq_E₄_cube_sub_E₆_sq_graded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0ae951e-b0b3-f247-6883-5301c323cf8c",
  "kind": "theorem",
  "lexical_name": "discriminant_eq_E₄_cube_sub_E₆_sq_graded",
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
  "slug": "discriminant-eq-e-cube-sub-e-sq-graded--3a62d8712466c862bde15bd1",
  "source": {
    "blob": "f9f4e55c6b6ab7a24e13ccdcef91047e1be4c9a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/GradedRing/Variant717d01b6b003d69e11a3d1ec719134c5c8957d0f84dd3a350dd97898e65df1a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a62d8712466c862bde15bd131fe202844434460122e26a614209321039a9af4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/GradedRing/Variant717d01b6b003d69e11a3d1ec719134c5c8957d0f84dd3a350dd97898e65df1a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ae951e-b0b3-f247-6883-5301c323cf8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discriminant_eq_E₄_cube_sub_E₆_sq_graded :
    DirectSum.of (ModularForm 𝒮ℒ) 12 CuspForm.discriminant =
      (1 / 1728 : ℂ) • (.of (ModularForm 𝒮ℒ) 4 E₄ ^ 3 - .of (ModularForm 𝒮ℒ) 6 E₆ ^ 2) := by
  simp only [ModularForm.directSum_of_pow]
  change DirectSum.of (ModularForm 𝒮ℒ) 12 CuspForm.discriminant = (1 / 1728 : ℂ) •
    (DirectSum.of (ModularForm 𝒮ℒ) 12 (E₄.pow 3) - DirectSum.of (ModularForm 𝒮ℒ) 12 (E₆.pow 2))
  rw [← map_sub (DirectSum.of (ModularForm 𝒮ℒ) 12), ← DirectSum.of_smul]
  congr 1
  ext z
  change ModularForm.discriminant z = (1 / 1728 : ℂ) * (E₄ z ^ 3 - E₆ z ^ 2)
  grind [discriminant_eq_E₄_cube_sub_E₆_sq z]

end ModularForm

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/GradedRing/Variant717d01b6b003d69e11a3d1ec719134c5c8957d0f84dd3a350dd97898e65df1a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/GradedRing/Variant717d01b6b003d69e11a3d1ec719134c5c8957d0f84dd3a350dd97898e65df1a4.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f4e55c6b6ab7a24e13ccdcef91047e1be4c9a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
