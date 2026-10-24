# mass_readout_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93a35770-89ed-df17-edb9-859463959b46",
  "kind": "theorem",
  "lexical_name": "mass_readout_bound",
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
  "slug": "mass-readout-bound--278be8e7defc97f49d15e1a1",
  "source": {
    "blob": "212273556409c7f9984cfbf6947c30f225299acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:278be8e7defc97f49d15e1a113ac140f1fc6f18ae049722fe3fd5170fa569897",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93a35770-89ed-df17-edb9-859463959b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass_readout_bound {A : ℝ} (hA : 1 ≤ A) (f : ℝ → ℝ)
    (hf : Continuous f) (hs : Function.support f ⊆ Ioc (-A) (3 * A)) :
    |(∫ x : ℝ, f x) / (∫ x : ℝ, prescribedSource A x)| ≤
      massDecoder * Real.sqrt (∫ x : ℝ, f x ^ 2) := by
  have hp : 0 < A := by linarith
  have hs2 : Function.support (fun x ↦ f x ^ 2) ⊆ Ioc (-A) (3 * A) := by
    intro x hx
    apply hs
    intro hz
    exact hx (by simp [hz])
  have hwhole := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have hwhole2 := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs2
  have hcs := FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens.integral_sq_le_length_mul_integral_sq (by linarith : -A ≤ 3 * A)
    (hf.intervalIntegrable (μ := volume) (-A) (3 * A))
    ((hf.pow 2).intervalIntegrable (μ := volume) (-A) (3 * A))
  rw [hwhole, hwhole2] at hcs
  apply mass_decoder_of_square_bound hA
    (integral_nonneg (fun _ ↦ sq_nonneg _))
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceMass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `212273556409c7f9984cfbf6947c30f225299acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
