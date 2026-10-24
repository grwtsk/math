# integrable_one_add_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06981a1a-8742-fae5-7e4c-84261b43ce25",
  "kind": "theorem",
  "lexical_name": "integrable_one_add_norm",
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
  "slug": "integrable-one-add-norm--c9868c6b7ffe5d4320f05b61",
  "source": {
    "blob": "84d86d9ae7feaa31beacc09ee085e123e57ca273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9868c6b7ffe5d4320f05b61c40ba8f9c759e028b87eafe4efca9bc587bfa199",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06981a1a-8742-fae5-7e4c-84261b43ce25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_one_add_norm {r : ℝ} (hnr : (finrank ℝ E : ℝ) < r) :
    Integrable (fun x ↦ (1 + ‖x‖) ^ (-r)) μ := by
  constructor
  · apply Measurable.aestronglyMeasurable (by fun_prop)
  -- Lower Lebesgue integral
  have : (∫⁻ a : E, ‖(1 + ‖a‖) ^ (-r)‖ₑ ∂μ) = ∫⁻ a : E, ENNReal.ofReal ((1 + ‖a‖) ^ (-r)) ∂μ :=
    lintegral_enorm_of_nonneg fun _ => rpow_nonneg (by positivity) _
  rw [hasFiniteIntegral_iff_enorm, this]
  exact finite_integral_one_add_norm hnr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d86d9ae7feaa31beacc09ee085e123e57ca273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
