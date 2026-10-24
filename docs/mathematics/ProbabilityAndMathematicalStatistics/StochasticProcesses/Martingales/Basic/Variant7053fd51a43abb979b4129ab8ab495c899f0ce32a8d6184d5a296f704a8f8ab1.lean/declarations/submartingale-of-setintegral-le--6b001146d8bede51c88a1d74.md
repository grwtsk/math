# submartingale_of_setIntegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb010acd-9134-0902-e5e2-0bddb43c5575",
  "kind": "theorem",
  "lexical_name": "submartingale_of_setIntegral_le",
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
  "slug": "submartingale-of-setintegral-le--6b001146d8bede51c88a1d74",
  "source": {
    "blob": "ea1b0afa81bb24d14de7568155f206e4b7b7dd9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 262,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b001146d8bede51c88a1d749f8217ef879135cf8dfd8b0c3190a04827cfb3a8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb010acd-9134-0902-e5e2-0bddb43c5575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submartingale_of_setIntegral_le [SigmaFiniteFiltration μ ℱ]
    {f : ι → Ω → ℝ} (hadp : Adapted ℱ f)
    (hint : ∀ i, Integrable (f i) μ) (hf : ∀ i j : ι,
      i ≤ j → ∀ s : Set Ω, MeasurableSet[ℱ i] s → ∫ ω in s, f i ω ∂μ ≤ ∫ ω in s, f j ω ∂μ) :
    Submartingale f ℱ μ := by
  refine ⟨hadp, fun i j hij => ?_, hint⟩
  suffices f i ≤ᵐ[μ.trim (ℱ.le i)] μ[f j|ℱ i] by exact ae_le_of_ae_le_trim this
  suffices 0 ≤ᵐ[μ.trim (ℱ.le i)] μ[f j|ℱ i] - f i by
    filter_upwards [this] with x hx
    rwa [← sub_nonneg]
  refine ae_nonneg_of_forall_setIntegral_nonneg
    ((integrable_condExp.sub (hint i)).trim _ (stronglyMeasurable_condExp.sub <| hadp i))
      fun s hs _ => ?_
  specialize hf i j hij s hs
  rwa [← setIntegral_trim _ (stronglyMeasurable_condExp.sub <| hadp i) hs,
    integral_sub' integrable_condExp.integrableOn (hint i).integrableOn, sub_nonneg,
    setIntegral_condExp (ℱ.le i) (hint j) hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1b0afa81bb24d14de7568155f206e4b7b7dd9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
