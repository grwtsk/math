# samplingDerivative_prefactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991a6fd7-ad28-9033-6e61-8a86b9845c07",
  "kind": "theorem",
  "lexical_name": "samplingDerivative_prefactor",
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
  "slug": "samplingderivative-prefactor--370c8919e917a106b8d1cdf7",
  "source": {
    "blob": "15e55ac8aa897632ba22db483b9a1ffab8ed9b4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:370c8919e917a106b8d1cdf71afb9d50eea5a4c5173069733a53ee86e77a9dee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991a6fd7-ad28-9033-6e61-8a86b9845c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samplingDerivative_prefactor {k u : ℝ} (hk : 0 < k) (hu : 0 < u) :
    Real.exp (-(Real.log k + Real.log u) / 2) / u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by
  have hi : u⁻¹ = Real.exp (-Real.log u) := by rw [Real.exp_neg, Real.exp_log hu]
  have hh : 1 / Real.sqrt k = Real.exp (-Real.log k / 2) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hk]
    simp only [one_div]
  rw [div_eq_mul_inv, hi, hh, Real.rpow_def_of_pos hu, ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

/-- The plain derivative error is the exact scaled Taylor remainder derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15e55ac8aa897632ba22db483b9a1ffab8ed9b4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
