# thetaPhiTermSecondDeriv_norm_le_compactBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb65323d-1e93-4018-79a0-183a125b7e72",
  "kind": "theorem",
  "lexical_name": "thetaPhiTermSecondDeriv_norm_le_compactBound",
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
  "slug": "thetaphitermsecondderiv-norm-le-compactbound--eae305bcd4df74df48ff233e",
  "source": {
    "blob": "330633acc6d5e8ebf52cf915dd34798b0403eed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 275,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae305bcd4df74df48ff233e9ef3f415a30087d9d0b77eb54bf1e84df9a3c44b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb65323d-1e93-4018-79a0-183a125b7e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiTermSecondDeriv_norm_le_compactBound {a b t : ℝ}
    (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTermSecondDeriv m t‖ ≤ thetaPhiSecondDerivCompactBound a b m := by
  rw [thetaPhiTermSecondDeriv_eq_gaussians]
  refine (norm_sub_sub_add_le_real _ _ _ _).trans ?_
  unfold thetaPhiSecondDerivCompactBound
  simp only [norm_mul]
  exact add_le_add (add_le_add
    (add_le_add (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 4 9 m ht)
      (by positivity))
      (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 2 5 m ht) (by positivity)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 6 13 m ht) (by positivity)))
    (mul_le_mul_of_nonneg_left (thetaGaussianTerm_norm_le_compactBound 8 17 m ht) (by positivity))

/-- Polynomial form of the first derivative sum, meaningful on the entire real line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330633acc6d5e8ebf52cf915dd34798b0403eed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
