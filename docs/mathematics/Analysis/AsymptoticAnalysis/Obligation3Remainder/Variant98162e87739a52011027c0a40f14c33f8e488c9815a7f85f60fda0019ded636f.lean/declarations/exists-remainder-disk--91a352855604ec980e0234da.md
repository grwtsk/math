# exists_remainder_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:505f6ae1-757c-dc79-7084-7e5db8ceb8e2",
  "kind": "lemma",
  "lexical_name": "exists_remainder_disk",
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
  "slug": "exists-remainder-disk--91a352855604ec980e0234da",
  "source": {
    "blob": "87225e52ff21f3b53b565a33cf47ee5b04cf5387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 118,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91a352855604ec980e0234da108fc66966dd1cbd8a4ef4bbf98da6d300e53c27",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505f6ae1-757c-dc79-7084-7e5db8ceb8e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_remainder_disk (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    ∃ r : ℝ, 0 < r ∧
      sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain ∧
      Summable (fun o : RemainingOccurrence p ↦
        compactKernelNorm (closedBall (2 * (p.val - 1 / 2)) r) o.val) ∧
      (∀ s ∈ closedBall (2 * (p.val - 1 / 2)) r,
        Summable (fun o : RemainingOccurrence p ↦ ‖sourceKernel (shiftedValue o.val) s‖)) ∧
      HasSumUniformlyOn (fun o : RemainingOccurrence p ↦ sourceKernel (shiftedValue o.val))
        (remainder p) (closedBall (2 * (p.val - 1 / 2)) r) ∧
      AnalyticOnNhd ℂ (remainder p) (ball (2 * (p.val - 1 / 2)) r) := by
  have hc : 0 < (2 * (p.val - 1 / 2)).re := by
    simpa using mul_pos (by norm_num : (0 : ℝ) < 2) hp
  obtain ⟨r, hr, hlocal⟩ := SourceLaplaceIsolation.exists_isolating_radius _ hc
  have hD := SourceLaplaceIsolation.sphere_subset_domain _ r hr hlocal
  have hhol := remaining_kernel_analytic_on_isolating_disk p r hr hlocal
  exact ⟨r, hr, hD, closedDisk_supNorms_summable p r hr hD hhol,
    fun s hs ↦ closedDisk_norms_summable p r hr hD hhol s hs,
    remainder_hasSumUniformlyOn_closedDisk p r hr hD hhol,
    remainder_analyticOn_ball p r hr hD hhol⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87225e52ff21f3b53b565a33cf47ee5b04cf5387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
