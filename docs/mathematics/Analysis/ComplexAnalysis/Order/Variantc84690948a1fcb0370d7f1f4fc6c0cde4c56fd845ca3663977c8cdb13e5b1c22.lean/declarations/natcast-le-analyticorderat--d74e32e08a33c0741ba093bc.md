# natCast_le_analyticOrderAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a65baa2d92421feada608b4a18a1c60c795db56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e2d3071-71d2-59ed-c41e-11bb30f80247",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63a1da8d-9891-14dd-c237-14d305921f0b",
  "kind": "lemma",
  "lexical_name": "natCast_le_analyticOrderAt",
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
  "slug": "natcast-le-analyticorderat--d74e32e08a33c0741ba093bc",
  "source": {
    "blob": "9a65baa2d92421feada608b4a18a1c60c795db56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 160,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d74e32e08a33c0741ba093bc69f5306f06871f1431722372b18b4eccbb25d1da",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a1da8d-9891-14dd-c237-14d305921f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natCast_le_analyticOrderAt (hf : AnalyticAt 𝕜 f z₀) {n : ℕ} :
    n ≤ analyticOrderAt f z₀ ↔
      ∃ g, AnalyticAt 𝕜 g z₀ ∧ ∀ᶠ z in 𝓝 z₀, f z = (z - z₀) ^ n • g z := by
  unfold analyticOrderAt
  split_ifs with h
  · simpa using ⟨0, analyticAt_const .., by simpa⟩
  · let m := (hf.exists_eventuallyEq_pow_smul_nonzero_iff.mpr h).choose
    obtain ⟨g, hg, hg_ne, hm⟩ := (hf.exists_eventuallyEq_pow_smul_nonzero_iff.mpr h).choose_spec
    rw [ENat.coe_le_coe]
    refine ⟨fun hmn ↦ ⟨fun z ↦ (z - z₀) ^ (m - n) • g z, by fun_prop, ?_⟩, fun ⟨h, hh, hfh⟩ ↦ ?_⟩
    · filter_upwards [hm] with z hz using by rwa [← mul_smul, ← pow_add, Nat.add_sub_of_le hmn]
    · contrapose! hg_ne
      have : ContinuousAt (fun z ↦ (z - z₀) ^ (n - m) • h z) z₀ := by fun_prop
      rw [tendsto_nhds_unique_of_eventuallyEq (l := 𝓝[≠] z₀)
        hg.continuousAt.continuousWithinAt this.continuousWithinAt ?_]
      · simp [m, Nat.sub_ne_zero_of_lt hg_ne]
      · filter_upwards [self_mem_nhdsWithin, hm.filter_mono nhdsWithin_le_nhds,
          hfh.filter_mono nhdsWithin_le_nhds] with z hz hf' hf''
        rw [← inv_smul_eq_iff₀ (pow_ne_zero _ <| sub_ne_zero_of_ne hz), hf'', smul_comm,
          ← mul_smul] at hf'
        rw [pow_sub₀ _ (sub_ne_zero_of_ne hz) (by omega), ← hf']

@[deprecated (since := "2025-05-03")] alias natCast_le_order_iff := natCast_le_analyticOrderAt

/-- If two functions agree in a neighborhood of `z₀`, then their orders at `z₀` agree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a65baa2d92421feada608b4a18a1c60c795db56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
