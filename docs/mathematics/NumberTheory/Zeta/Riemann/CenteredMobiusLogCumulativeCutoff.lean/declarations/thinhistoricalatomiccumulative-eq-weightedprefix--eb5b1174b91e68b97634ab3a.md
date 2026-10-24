# thinHistoricalAtomicCumulative_eq_weightedPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7799b132-49e7-0272-bada-29d606bca135",
  "kind": "theorem",
  "lexical_name": "thinHistoricalAtomicCumulative_eq_weightedPrefix",
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
  "slug": "thinhistoricalatomiccumulative-eq-weightedprefix--eb5b1174b91e68b97634ab3a",
  "source": {
    "blob": "02e6ad1166fdc6ea8444fbd988b240f171d3ea87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb5b1174b91e68b97634ab3a9fffc70184e9228b0f2df5a429ee853bd7061788",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7799b132-49e7-0272-bada-29d606bca135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thinHistoricalAtomicCumulative_eq_weightedPrefix
    {X : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    thinHistoricalAtomicCumulative X t =
      centeredGreenWeightedPrefix X (centeredGreenCutoff X t) := by
  unfold thinHistoricalAtomicCumulative thinHistoricalStep
    centeredGreenWeightedPrefix centeredGreenWindow
    centeredGreenArithmeticCoefficient
  let m := centeredGreenCutoff X t
  have hm := centeredGreenCutoff_bounds hX ht0 ht1
  rw [← Finset.sum_filter]
  apply Finset.sum_congr
  · ext n
    simp only [Finset.mem_filter, Finset.mem_Ioc]
    constructor
    · intro hn
      refine ⟨hn.1.1, ?_⟩
      exact (location_le_iff_le_cutoff hX ht0 ht1).mp hn.2
    · intro hn
      refine ⟨⟨hn.1, le_trans hn.2 hm.2⟩, ?_⟩
      exact (location_le_iff_le_cutoff hX ht0 ht1).mpr hn.2
  · intro n hn
    have hloc := (Finset.mem_filter.mp hn).2
    rw [if_pos hloc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e6ad1166fdc6ea8444fbd988b240f171d3ea87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
