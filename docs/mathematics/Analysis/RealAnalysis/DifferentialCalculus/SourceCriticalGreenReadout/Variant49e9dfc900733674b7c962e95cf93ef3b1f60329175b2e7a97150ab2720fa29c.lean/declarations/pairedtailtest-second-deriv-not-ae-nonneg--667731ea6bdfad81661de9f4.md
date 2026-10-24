# pairedTailTest_second_deriv_not_ae_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:508e6000-d975-378a-e818-68c996f57bcf",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_second_deriv_not_ae_nonneg",
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
  "slug": "pairedtailtest-second-deriv-not-ae-nonneg--667731ea6bdfad81661de9f4",
  "source": {
    "blob": "f87b96a80befd601f68e219481c7403cd4532ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant49e9dfc900733674b7c962e95cf93ef3b1f60329175b2e7a97150ab2720fa29c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:667731ea6bdfad81661de9f436ca311ff7a37b9fcfde5095067eeef4d5e85db6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant49e9dfc900733674b7c962e95cf93ef3b1f60329175b2e7a97150ab2720fa29c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508e6000-d975-378a-e818-68c996f57bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_second_deriv_not_ae_nonneg {A : ℝ} (hA : 1 ≤ A) :
    ¬ (∀ᵐ u ∂volume.restrict (Ioc 0 (2 * A)),
      0 ≤ deriv (deriv (pairedTailTest A)) u) := by
  intro hnonneg
  have hL : 0 < 2 * A := by linarith
  have hi := (pairedTailTest_deriv_absolutelyContinuous hA).intervalIntegrable_deriv
  have hweighted : IntervalIntegrable
      (fun u => u * deriv (deriv (pairedTailTest A)) u) volume 0 (2 * A) :=
    hi.continuousOn_mul continuous_id.continuousOn
  have hweighted_nonneg :
      0 ≤ᵐ[volume.restrict (Ioc 0 (2 * A))]
        (fun u => u * deriv (deriv (pairedTailTest A)) u) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc, hnonneg] with u hu hH
    exact mul_nonneg hu.1.le hH
  have hm := pairedTailTest_second_deriv_moments hA
  have hweighted_zero :=
    (intervalIntegral.integral_eq_zero_iff_of_le_of_nonneg_ae hL.le
      hweighted_nonneg hweighted).mp hm.2
  have hzero : (fun u => deriv (deriv (pairedTailTest A)) u) =ᵐ[
      volume.restrict (Ioc 0 (2 * A))] 0 := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc, hweighted_zero] with u hu hH
    change u * deriv (deriv (pairedTailTest A)) u = 0 at hH
    rcases mul_eq_zero.mp hH with hu0 | hH0
    · exact (ne_of_gt hu.1 hu0).elim
    · exact hH0
  have hmass_zero :=
    (intervalIntegral.integral_eq_zero_iff_of_le_of_nonneg_ae hL.le hnonneg hi).mpr hzero
  linarith [hm.1]

end FormalResearch.RiemannHypothesis.SourceCriticalGreenReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant49e9dfc900733674b7c962e95cf93ef3b1f60329175b2e7a97150ab2720fa29c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant49e9dfc900733674b7c962e95cf93ef3b1f60329175b2e7a97150ab2720fa29c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87b96a80befd601f68e219481c7403cd4532ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
