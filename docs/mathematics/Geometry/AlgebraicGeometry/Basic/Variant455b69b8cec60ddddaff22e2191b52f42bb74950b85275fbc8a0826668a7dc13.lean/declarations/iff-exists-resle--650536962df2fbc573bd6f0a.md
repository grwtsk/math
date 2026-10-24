# iff_exists_resLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67eb0b9e-afcc-76e1-6277-f33552343813",
  "kind": "lemma",
  "lexical_name": "iff_exists_resLE",
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
  "slug": "iff-exists-resle--650536962df2fbc573bd6f0a",
  "source": {
    "blob": "ef109d77ea0832b10e22aeb0537c7e22f330f82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 329,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:650536962df2fbc573bd6f0a0c23b3fd578f178d9b5f21d7f0a1a8b6f106df3d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67eb0b9e-afcc-76e1-6277-f33552343813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_exists_resLE [IsZariskiLocalAtTarget P]
    [P.RespectsRight @IsOpenImmersion] :
    P f ↔ ∀ x : X, ∃ (U : Y.Opens) (V : X.Opens) (_ : x ∈ V.1) (e : V ≤ f ⁻¹ᵁ U),
      P (f.resLE U V e) := by
  refine ⟨fun hf x ↦ ⟨⊤, ⊤, trivial, by simp, resLE _ hf⟩, fun hf ↦ ?_⟩
  choose U V hxU e hf using hf
  rw [IsZariskiLocalAtSource.iff_of_iSup_eq_top (fun x : X ↦ V x) (P := P)]
  · intro x
    rw [← Scheme.Hom.resLE_comp_ι _ (e x)]
    exact MorphismProperty.RespectsRight.postcomp (Q := @IsOpenImmersion) _ inferInstance _ (hf x)
  · rw [eq_top_iff]
    rintro x -
    simp only [Opens.mem_iSup]
    use x, hxU x

end IsZariskiLocalAtSourceAndTarget

end IsZariskiLocalAtSource

/-- An `AffineTargetMorphismProperty` is a class of morphisms from an arbitrary scheme into an
affine scheme. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef109d77ea0832b10e22aeb0537c7e22f330f82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
