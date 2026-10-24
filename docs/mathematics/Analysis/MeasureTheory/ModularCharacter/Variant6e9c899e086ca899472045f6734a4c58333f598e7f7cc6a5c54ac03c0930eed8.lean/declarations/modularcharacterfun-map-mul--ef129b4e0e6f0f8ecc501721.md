# modularCharacterFun_map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd60ed12-79aa-cb7d-c48c-181cb85e9a82",
  "kind": "lemma",
  "lexical_name": "modularCharacterFun_map_mul",
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
  "slug": "modularcharacterfun-map-mul--ef129b4e0e6f0f8ecc501721",
  "source": {
    "blob": "a1a0c998ea5aad725e72b4a5c8ab8573e986b0fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 118,
    "path": "GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef129b4e0e6f0f8ecc501721fb5607ef14f136b9f400411f0f5b5eb21f95307e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd60ed12-79aa-cb7d-c48c-181cb85e9a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma modularCharacterFun_map_mul (g h : G) : modularCharacterFun (g * h) =
    modularCharacterFun g * modularCharacterFun h := by
  borelize G
  have mul_g_meas : Measurable (· * g) := Measurable.mul_const (fun ⦃_⦄ a ↦ a) g
  have mul_h_meas : Measurable (· * h) := Measurable.mul_const (fun ⦃_⦄ a ↦ a) h
  let ν := MeasureTheory.Measure.haar (G := G)
  symm
  calc
    modularCharacterFun g * modularCharacterFun h =
      modularCharacterFun h * modularCharacterFun g := mul_comm _ _
    _ = haarScalarFactor (map (· * h) (map (· * g) ν)) (map (· * g) ν) *
      modularCharacterFun g := by
      rw [modularCharacterFun_eq_haarScalarFactor (map (· * g) ν) _]
    _ = haarScalarFactor (map (· * h) (map (· * g) ν)) (map (· * g) ν) *
      haarScalarFactor (map (· * g) ν) ν := rfl
    _ = haarScalarFactor (map (· * (g * h)) ν) ν := by simp only [map_map mul_h_meas mul_g_meas,
      comp_mul_right, ← haarScalarFactor_eq_mul]

/-- The modular character homomorphism. The underlying function is `modularCharacterFun`, which is
`g ↦ μ (· * g⁻¹) / μ`, where `μ` is a left Haar measure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a0c998ea5aad725e72b4a5c8ab8573e986b0fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
