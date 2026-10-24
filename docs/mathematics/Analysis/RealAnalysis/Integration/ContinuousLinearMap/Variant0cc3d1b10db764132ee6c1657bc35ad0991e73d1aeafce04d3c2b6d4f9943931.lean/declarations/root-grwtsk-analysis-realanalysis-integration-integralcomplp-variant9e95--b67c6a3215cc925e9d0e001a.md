# _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralCompLp.Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.ContinuousMultilinearMap.integral_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdae50cd-c238-fc99-8226-a1545eb80277",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralCompLp.Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.ContinuousMultilinearMap.integral_apply",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-integralcomplp-variant9e95--b67c6a3215cc925e9d0e001a",
  "source": {
    "blob": "7d4329a27a93834efbde87a6f8dd5bc6d0db8d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b67c6a3215cc925e9d0e001aca467196e02a79d33d71898aebaa81ad9401b4ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdae50cd-c238-fc99-8226-a1545eb80277`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralCompLp.Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.ContinuousMultilinearMap.integral_apply {ι : Type*} [Fintype ι] {M : ι → Type*}
    [∀ i, NormedAddCommGroup (M i)] [∀ i, NormedSpace 𝕜 (M i)]
    {φ : X → ContinuousMultilinearMap 𝕜 M E} (φ_int : Integrable φ μ) (m : ∀ i, M i) :
    (∫ x, φ x ∂μ) m = ∫ x, φ x m ∂μ := by
  by_cases hE : CompleteSpace E
  · exact ((ContinuousMultilinearMap.apply 𝕜 M E m).integral_comp_comm φ_int).symm
  · by_cases! hm : ∀ i, m i ≠ 0
    · have : ¬ CompleteSpace (ContinuousMultilinearMap 𝕜 M E) := by
        rwa [SeparatingDual.completeSpace_continuousMultilinearMap_iff _ _ hm]
      simp [integral, hE, this]
    · rcases hm with ⟨i, hi⟩
      simp [ContinuousMultilinearMap.map_coord_zero _ i hi]

variable [CompleteSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4329a27a93834efbde87a6f8dd5bc6d0db8d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
