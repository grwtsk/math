# exists_log_from_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bb14033-6fa9-94ce-3f7f-d4235f718be7",
  "kind": "theorem",
  "lexical_name": "exists_log_from_quotient",
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
  "slug": "exists-log-from-quotient--9da2450837edd679620e7f40",
  "source": {
    "blob": "4c219746d834b4bd7630380a4a1a8161185c91b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 84,
    "path": "GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da2450837edd679620e7f40fcee412d9608d550ffcca6674466ae65739b4256",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bb14033-6fa9-94ce-3f7f-d4235f718be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_log_from_quotient {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f g : ℂ → ℂ) (M η : ℝ) (hM : 0 < M) (hη : 0 < η)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hn : ∀ z ∈ ball 0 (11 / 4 : ℝ), g z ≠ 0)
    (hfactor : ∀ z ∈ closedBall 0 (3 : ℝ),
      f z = g z * ∏ i ∈ S, (factor 3 (a i) z) ^ m i)
    (hbound : ∀ z ∈ sphere 0 (3 : ℝ), ‖f z‖ ≤ M) (hfloor : η ≤ ‖f 0‖) :
    ∃ L : ℂ → ℂ, g 0 ≠ 0 ∧ L 0 = 0 ∧
      DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ)) ∧
      (∀ z ∈ ball 0 (11 / 4 : ℝ), HasDerivAt L (logDeriv g z) z) ∧
      (∀ z ∈ ball 0 (11 / 4 : ℝ), (L z).re ≤ Real.log (M / η)) ∧
      (∀ z ∈ ball 0 (11 / 4 : ℝ), f z = g 0 *
        (Complex.exp (L z) * ∏ i ∈ S, (factor 3 (a i) z) ^ m i)) := by
  have hsub : ball (0 : ℂ) (11 / 4 : ℝ) ⊆ ball 0 (3 : ℝ) :=
    ball_subset_ball (by norm_num)
  have hf0 : η ≤ ‖g 0‖ := quotient_center_floor S a m f g η ha
    (hfactor 0 (by norm_num)) hfloor
  have hgn : g 0 ≠ 0 := norm_ne_zero_iff.mp (hη.trans_le hf0).ne'
  obtain ⟨L, h0, hL, hd, he, hr⟩ := exists_normalized_log_bounded g (11 / 4) M η
    (by norm_num) hM hη (hg.differentiableOn.mono hsub) hn
    (fun z hz => quotient_norm_le S a m f g M ha hg hfactor hbound z
      (ball_subset_closedBall (hsub hz))) hf0
  refine ⟨L, hgn, h0, hL, hd, hr, ?_⟩
  intro z hz
  rw [hfactor z (ball_subset_closedBall (hsub hz)), he z hz]
  ring

end
end GRWTSK.Analysis.Complex.BlaschkeQuotientLogarithm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c219746d834b4bd7630380a4a1a8161185c91b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
