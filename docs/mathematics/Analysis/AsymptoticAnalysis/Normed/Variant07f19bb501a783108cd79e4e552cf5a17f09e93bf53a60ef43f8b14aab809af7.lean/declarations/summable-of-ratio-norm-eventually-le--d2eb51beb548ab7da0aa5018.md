# summable_of_ratio_norm_eventually_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f6bf427-4405-5d59-db3a-ff1cebd0ea10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c88f751f-d5f0-9841-0359-b3eebf9fbdbd",
  "kind": "theorem",
  "lexical_name": "summable_of_ratio_norm_eventually_le",
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
  "slug": "summable-of-ratio-norm-eventually-le--d2eb51beb548ab7da0aa5018",
  "source": {
    "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 502,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2eb51beb548ab7da0aa501824d4d77e16dbb71745798ea45a58dc802e498813",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c88f751f-d5f0-9841-0359-b3eebf9fbdbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_of_ratio_norm_eventually_le {α : Type*} [SeminormedAddCommGroup α]
    [CompleteSpace α] {f : ℕ → α} {r : ℝ} (hr₁ : r < 1)
    (h : ∀ᶠ n in atTop, ‖f (n + 1)‖ ≤ r * ‖f n‖) : Summable f := by
  by_cases hr₀ : 0 ≤ r
  · rw [eventually_atTop] at h
    rcases h with ⟨N, hN⟩
    rw [← @summable_nat_add_iff α _ _ _ _ N]
    refine' summable_of_norm_bounded (fun n ↦ ‖f N‖ * r ^ n)
      (Summable.mul_left _ <| summable_geometric_of_lt_1 hr₀ hr₁) fun n ↦ _
    simp only
    conv_rhs => rw [mul_comm, ← zero_add N]
    refine' le_geom (u := fun n ↦ ‖f (n + N)‖) hr₀ n fun i _ ↦ _
    convert hN (i + N) (N.le_add_left i) using 3
    ac_rfl
  · push_neg at hr₀
    refine' summable_of_norm_bounded_eventually 0 summable_zero _
    rw [Nat.cofinite_eq_atTop]
    filter_upwards [h]with _ hn
    by_contra' h
    exact not_lt.mpr (norm_nonneg _) (lt_of_le_of_lt hn <| mul_neg_of_neg_of_pos hr₀ h)
#align summable_of_ratio_norm_eventually_le summable_of_ratio_norm_eventually_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a0509ea311c6da87d9732908c1153ca772dccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
