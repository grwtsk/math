# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4031088ed29770577f5bcfcf91d7f90cd0ad9958dec831a5cb8f767df8e361b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7b80dd3e280b1ddeb6ee0a1c",
  "source": {
    "blob": "8c1e43eaf555101bf034f2c3a0690715663ec66f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 602,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b80dd3e280b1ddeb6ee0a1c197b35d9542bec8ad2f43ad314b5b0e32dc84464",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4031088ed29770577f5bcfcf91d7f90cd0ad9958dec831a5cb8f767df8e361b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LieGroup (𝓡 1) circle where
  smooth_mul := by
    apply ContMDiff.codRestrict_sphere
    let c : circle → ℂ := (↑)
    have h₂ : ContMDiff (𝓘(ℝ, ℂ).prod 𝓘(ℝ, ℂ)) 𝓘(ℝ, ℂ) ∞ fun z : ℂ × ℂ => z.fst * z.snd := by
      rw [contMDiff_iff]
      exact ⟨continuous_mul, fun x y => contDiff_mul.contDiffOn⟩
    -- Porting note: needed to fill in first 3 arguments or could not figure out typeclasses
    suffices h₁ : ContMDiff ((𝓡 1).prod (𝓡 1)) (𝓘(ℝ, ℂ).prod 𝓘(ℝ, ℂ)) ⊤ (Prod.map c c)
    · apply h₂.comp h₁
    · apply ContMDiff.prod_map <;>
      exact contMDiff_coe_sphere
  smooth_inv := by
    apply ContMDiff.codRestrict_sphere
    simp only [← coe_inv_circle, coe_inv_circle_eq_conj]
    exact Complex.conjCle.contDiff.contMDiff.comp contMDiff_coe_sphere

/-- The map `fun t ↦ exp (t * I)` from `ℝ` to the unit circle in `ℂ` is smooth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1e43eaf555101bf034f2c3a0690715663ec66f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
