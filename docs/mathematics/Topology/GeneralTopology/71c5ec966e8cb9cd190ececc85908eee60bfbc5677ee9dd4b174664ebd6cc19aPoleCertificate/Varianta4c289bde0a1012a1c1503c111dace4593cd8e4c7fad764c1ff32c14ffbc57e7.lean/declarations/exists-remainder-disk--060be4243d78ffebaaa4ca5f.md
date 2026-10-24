# exists_remainder_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c7590ac-c7e8-3713-8c65-c65e5619a8a0",
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
  "slug": "exists-remainder-disk--060be4243d78ffebaaa4ca5f",
  "source": {
    "blob": "de06cc4b6a444d170fe5a20fa003acb92df90238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 871,
    "line": 835,
    "path": "GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:060be4243d78ffebaaa4ca5f2b52e10766e9dec9e78797bdea8c0840f6c27e80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c7590ac-c7e8-3713-8c65-c65e5619a8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 835–871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_remainder_disk
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    ∃ r : ℝ, 0 < r ∧
      sphere (2 * (p.val - 1 / 2)) r ⊆
        convergenceDomain ∧
      (∀ s ∈ closedBall
        (2 * (p.val - 1 / 2)) r,
        Summable
          (fun o : RemainingOccurrence p ↦
            ‖sourceKernel (shiftedValue o.val) s‖)) ∧
      HasSumUniformlyOn
        (fun o : RemainingOccurrence p ↦
          sourceKernel (shiftedValue o.val))
        (remainder p)
        (closedBall (2 * (p.val - 1 / 2)) r) ∧
      AnalyticOnNhd ℂ (remainder p)
        (ball (2 * (p.val - 1 / 2)) r) := by
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  obtain ⟨r, hr, hlocal⟩ :=
    exists_isolating_radius _ hc
  have hD :=
    sphere_subset_domain _ r hr hlocal
  have hhol :=
    remaining_kernel_analytic_on_isolating_disk
      p r hr hlocal
  exact ⟨r, hr, hD,
    fun s hs ↦
      closedDisk_norms_summable
        p r hr hD hhol s hs,
    remainder_hasSumUniformlyOn_closedDisk
      p r hr hD hhol,
    remainder_analyticOn_ball p r hr hD hhol⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean#L835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06cc4b6a444d170fe5a20fa003acb92df90238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
