# intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bced1279-de36-ca49-5d1a-b51390221ff9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2606e934-7558-b2d1-46ed-13302aae359b",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable",
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
  "slug": "intervalintegrable--42a0a05e1fb9898a96f4226e",
  "source": {
    "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 280,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a0a05e1fb9898a96f4226e0fc0decc2fa8673224cca72b7f55026f068e646a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2606e934-7558-b2d1-46ed-13302aae359b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable {t : ℝ} (h₁f : Function.Periodic f T)
    (hT : T ≠ 0) (h₂f : IntervalIntegrable f volume t (t + T)) (a₁ a₂ : ℝ) :
    IntervalIntegrable f volume a₁ a₂ := by
  wlog hT : 0 < T
  · rcases (not_lt.1 hT).eq_or_lt with h | h
    · tauto
    · have hnT : 0 < -T := neg_pos.mpr h
      nth_rw 1 [(by ring : t = (t + T) + (-T))] at h₂f
      apply this h₁f.neg hnT.ne' h₂f.symm _ _ hnT
  -- Replace [a₁, a₂] by [t - n₁ * T, t + n₂ * T], where n₁ and n₂ are natural numbers
  obtain ⟨n₁, hn₁⟩ := exists_nat_ge ((t - min a₁ a₂) / T)
  obtain ⟨n₂, hn₂⟩ := exists_nat_ge ((max a₁ a₂ - t) / T)
  have : Set.uIcc a₁ a₂ ⊆ Set.uIcc (t - n₁ * T) (t + n₂ * T) := by
    rw [Set.uIcc_subset_uIcc_iff_le]
    constructor
    · calc min (t - n₁ * T) (t + n₂ * T)
      _ ≤ (t - n₁ * T) := by apply min_le_left
      _ ≤ min a₁ a₂ := by linarith [(div_le_iff₀ hT).1 hn₁]
    · calc max a₁ a₂
      _ ≤ t + n₂ * T := by linarith [(div_le_iff₀ hT).1 hn₂]
      _ ≤ max (t - n₁ * T) (t + n₂ * T) := by apply le_max_right
  apply IntervalIntegrable.mono_set _ this
  -- Suffices to show integrability over shifted periods
  let a : ℕ → ℝ := fun n ↦ t + (n - n₁) * T
  rw [(by ring : t - n₁ * T = a 0), (by simp [a] : t + n₂ * T = a (n₁ + n₂))]
  apply IntervalIntegrable.trans_iterate
  -- Show integrability over a shifted period
  intro k hk
  convert! (IntervalIntegrable.comp_sub_right h₂f ((k - n₁) * T) enorm_ne_top) using 1
  · funext x
    simpa using (h₁f.sub_int_mul_eq (k - n₁)).symm
  · simp [a, Nat.cast_add]
    ring

/--
A periodic function is interval integrable over one full period if and only if it is interval
integrable over any other full period.

Special case of `Function.Periodic.intervalIntegrable`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
