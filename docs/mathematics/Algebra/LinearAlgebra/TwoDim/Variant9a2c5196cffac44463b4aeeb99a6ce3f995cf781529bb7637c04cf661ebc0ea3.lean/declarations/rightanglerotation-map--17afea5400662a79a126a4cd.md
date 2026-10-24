# rightAngleRotation_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daac2fc6-38d1-0b56-b364-5442946ba9e9",
  "kind": "theorem",
  "lexical_name": "rightAngleRotation_map",
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
  "slug": "rightanglerotation-map--17afea5400662a79a126a4cd",
  "source": {
    "blob": "7dc28c4d6460d4e0d7d0ef5097a44e96b09baa93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 302,
    "path": "GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17afea5400662a79a126a4cda737ae4faccf063e59d01033354489f186748516",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daac2fc6-38d1-0b56-b364-5442946ba9e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightAngleRotation_map {F : Type*} [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    [hF : Fact (finrank ℝ F = 2)] (φ : E ≃ₗᵢ[ℝ] F) (x : F) :
    (Orientation.map (Fin 2) φ.toLinearEquiv o).rightAngleRotation x =
      φ (o.rightAngleRotation (φ.symm x)) := by
  apply ext_inner_right ℝ
  intro y
  rw [inner_rightAngleRotation_left]
  trans ⟪J (φ.symm x), φ.symm y⟫
  · simp [o.areaForm_map]
  trans ⟪φ (J (φ.symm x)), φ (φ.symm y)⟫
  · rw [φ.inner_map_map]
  · simp

/-- `J` commutes with any positively-oriented isometric automorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dc28c4d6460d4e0d7d0ef5097a44e96b09baa93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
