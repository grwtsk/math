# geom_mean_weighted_of_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f2a3af7-16c2-c869-1013-d848283a0ed8",
  "kind": "theorem",
  "lexical_name": "geom_mean_weighted_of_constant",
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
  "slug": "geom-mean-weighted-of-constant--cfef5cdf0230204f59d141f3",
  "source": {
    "blob": "9666dfd38e6814c2fa05f62bef682868468c0bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfef5cdf0230204f59d141f31a72348133ba24dcb1fa9a35fa210488001e1896",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f2a3af7-16c2-c869-1013-d848283a0ed8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_mean_weighted_of_constant (w z : ι → ℝ) (x : ℝ) (hw : ∀ i ∈ s, 0 ≤ w i)
    (hw' : ∑ i ∈ s, w i = 1) (hz : ∀ i ∈ s, 0 ≤ z i) (hx : ∀ i ∈ s, w i ≠ 0 → z i = x) :
    ∏ i ∈ s, z i ^ w i = x :=
  calc
    ∏ i ∈ s, z i ^ w i = ∏ i ∈ s, x ^ w i := by
      refine prod_congr rfl fun i hi => ?_
      rcases eq_or_ne (w i) 0 with h₀ | h₀
      · rw [h₀, rpow_zero, rpow_zero]
      · rw [hx i hi h₀]
    _ = x := by
      rw [← rpow_sum_of_nonneg _ hw, hw', rpow_one]
      have : (∑ i ∈ s, w i) ≠ 0 := by
        rw [hw']
        exact one_ne_zero
      obtain ⟨i, his, hi⟩ := exists_ne_zero_of_sum_ne_zero this
      rw [← hx i his hi]
      exact hz i his

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9666dfd38e6814c2fa05f62bef682868468c0bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
