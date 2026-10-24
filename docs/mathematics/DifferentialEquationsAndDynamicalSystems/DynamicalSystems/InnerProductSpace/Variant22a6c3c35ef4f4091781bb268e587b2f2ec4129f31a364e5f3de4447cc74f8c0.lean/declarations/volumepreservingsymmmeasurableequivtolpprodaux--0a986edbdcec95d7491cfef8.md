# volumePreservingSymmMeasurableEquivToLpProdAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37782d1685e8b6ab08e4668f6ce56b8d7a5b3525b2ab0fad4a270874e7d6b483",
  "kind": "def",
  "lexical_name": "volumePreservingSymmMeasurableEquivToLpProdAux",
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
  "slug": "volumepreservingsymmmeasurableequivtolpprodaux--0a986edbdcec95d7491cfef8",
  "source": {
    "blob": "ccff5045d9b2511827e4a36ab713135714b8a496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 178,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a986edbdcec95d7491cfef8daebb3d3891f0af7f1f5f3d995a1c07a5a7bbdb1",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37782d1685e8b6ab08e4668f6ce56b8d7a5b3525b2ab0fad4a270874e7d6b483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def volumePreservingSymmMeasurableEquivToLpProdAux :
    WithLp 2 (U × V) ≃ᵐ U × V :=
  ( -- WithLp 2 (U × V) ≃ₗᵢ[ℝ] WithLp 2 (WithLp 2 (Fin .. → ℝ) × WithLp 2 (Fin .. → ℝ)
    (LinearIsometryEquiv.withLpProdCongr 2
      (stdOrthonormalBasis ℝ U).repr
      (stdOrthonormalBasis ℝ V).repr).trans <|
    -- .. ≃ₗᵢ[ℝ] WithLp 2 (Fin (finrank ℝ U) ⊕ Fin (finrank ℝ V) → ℝ)
    (PiLp.sumPiLpEquivProdLpPiLp 2 (fun _ ↦ ℝ)).symm
  ).toMeasurableEquiv.trans <|
  -- .. ≃ᵐ Fin (finrank ℝ U) ⊕ Fin (finrank ℝ V) → ℝ
  (MeasurableEquiv.toLp 2 _).symm.trans <|
  -- .. ≃ᵐ Fin (finrank ℝ U) → ℝ × Fin (finrank ℝ V) → ℝ
  (MeasurableEquiv.sumPiEquivProdPi (fun _ ↦ ℝ)).trans <|
  -- .. ≃ᵐ U × V
  (MeasurableEquiv.prodCongr
    ((MeasurableEquiv.toLp 2 _).trans (stdOrthonormalBasis ℝ U).repr.symm.toMeasurableEquiv)
    ((MeasurableEquiv.toLp 2 _).trans (stdOrthonormalBasis ℝ V).repr.symm.toMeasurableEquiv))

/-- The measure equivalence between `WithLp 2 (U × V)` and `U × V` is volume preserving. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccff5045d9b2511827e4a36ab713135714b8a496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
