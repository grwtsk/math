# isGaussian_iff_charFunDual_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b33f7ff-d1a1-0bd7-903e-3c2a7b1925d4",
  "kind": "theorem",
  "lexical_name": "isGaussian_iff_charFunDual_eq",
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
  "slug": "isgaussian-iff-charfundual-eq--0e65ffeb9e15c6b451298781",
  "source": {
    "blob": "5b0546af7ad0d8e86b30939959392562dbfbe046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e65ffeb9e15c6b4512987816c665467cd09bed4c2ff5e91a728fcac39c4ddb5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b33f7ff-d1a1-0bd7-903e-3c2a7b1925d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGaussian_iff_charFunDual_eq {μ : Measure E} [IsFiniteMeasure μ] :
    IsGaussian μ ↔ ∀ L : Dual ℝ E, charFunDual μ L = exp (μ[L] * I - Var[L; μ] / 2) := by
  refine ⟨fun h ↦ h.charFunDual_eq, fun h ↦ ⟨fun L ↦ Measure.ext_of_charFun ?_⟩⟩
  ext u
  rw [charFun_map_eq_charFunDual_smul L u, h (u • L), charFun_gaussianReal]
  simp only [ContinuousLinearMap.coe_smul', Pi.smul_apply, smul_eq_mul, ofReal_mul,
    Real.coe_toNNReal']
  congr
  · rw [integral_const_mul, integral_complex_ofReal]
  · rw [max_eq_left (variance_nonneg _ _), mul_comm, ← ofReal_pow, ← ofReal_mul, ← variance_mul]
    congr

alias ⟨_, isGaussian_of_charFunDual_eq⟩ := isGaussian_iff_charFunDual_eq

end charFunDual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant0b0558df07c60e1ae6232bf8d224f529772b0602fcba8c4087a7216cf4dfd9a0.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0546af7ad0d8e86b30939959392562dbfbe046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
