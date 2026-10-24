# actual_complex_source_sharp_coercive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dab615f-c043-a5b3-ac6f-f021383a5983",
  "kind": "theorem",
  "lexical_name": "actual_complex_source_sharp_coercive",
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
  "slug": "actual-complex-source-sharp-coercive--f2d5652261566ea538a041a5",
  "source": {
    "blob": "5127da06105e6326b0860bfc2825aefc008ea8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2d5652261566ea538a041a57a310fc51e9a50feadd8dd140c92aeb24795bade",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dab615f-c043-a5b3-ac6f-f021383a5983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complex_source_sharp_coercive (z : Two → ℂ) :
    actualSourceSharpGap * ‖WithLp.toLp 2 z‖ ^ 2 ≤ hermitianEnergy twoSourceGram z := by
  have hn : 0 ≤ hermitianEnergy (complexSourceFactorᴴ * complexSourceFactor) z := by
    rw [show complexSourceFactorᴴ * complexSourceFactor =
      complexSourceFactorᴴ * (1 : Matrix (Fin 1) (Fin 1) ℂ) * complexSourceFactor by simp,
      hermitianEnergy_congruence, hermitianEnergy_one]
    exact sq_nonneg _
  rw [← twoSourceGram_residual] at hn
  simp only [hermitianEnergy, Matrix.sub_mulVec, dotProduct_sub, Complex.sub_re] at hn
  rw [Matrix.smul_mulVec, Matrix.one_mulVec,
    dotProduct_smul actualSourceSharpGap (star z) z, Complex.smul_re, smul_eq_mul] at hn
  have hz := hermitianEnergy_one z
  simp only [hermitianEnergy, Matrix.one_mulVec] at hz
  rw [hz] at hn
  simp only [hermitianEnergy]
  linarith

end FormalResearch.PositiveAtlas.QuantitativeGap.Source
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSourceCertificate/Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5127da06105e6326b0860bfc2825aefc008ea8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
