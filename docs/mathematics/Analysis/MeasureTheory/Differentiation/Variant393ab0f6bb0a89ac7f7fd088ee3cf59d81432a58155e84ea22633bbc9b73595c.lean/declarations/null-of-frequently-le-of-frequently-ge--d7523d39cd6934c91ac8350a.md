# null_of_frequently_le_of_frequently_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82a1984c-3b88-d75d-4b4c-ae8d8ff78995",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e174f738-e348-c5a8-7772-ac7449e26245",
  "kind": "theorem",
  "lexical_name": "null_of_frequently_le_of_frequently_ge",
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
  "slug": "null-of-frequently-le-of-frequently-ge--d7523d39cd6934c91ac8350a",
  "source": {
    "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 211,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7523d39cd6934c91ac8350adb7a0ac90873931360ed69f2170f688c5566f97d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e174f738-e348-c5a8-7772-ac7449e26245`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem null_of_frequently_le_of_frequently_ge {c d : ℝ≥0} (hcd : c < d) (s : Set α)
    (hc : ∀ x ∈ s, ∃ᶠ a in v.filterAt x, ρ a ≤ c * μ a)
    (hd : ∀ x ∈ s, ∃ᶠ a in v.filterAt x, (d : ℝ≥0∞) * μ a ≤ ρ a) : μ s = 0 := by
  apply measure_null_of_locally_null s fun x _ => ?_
  obtain ⟨o, xo, o_open, μo⟩ : ∃ o : Set α, x ∈ o ∧ IsOpen o ∧ μ o < ∞ :=
    Measure.exists_isOpen_measure_lt_top μ x
  refine ⟨s ∩ o, inter_mem_nhdsWithin _ (o_open.mem_nhds xo), ?_⟩
  let s' := s ∩ o
  by_contra h
  apply lt_irrefl (ρ s')
  calc
    ρ s' ≤ c * μ s' := v.measure_le_of_frequently_le (c • μ) hρ s' fun x hx => hc x hx.1
    _ < d * μ s' := by
      apply (ENNReal.mul_lt_mul_right h _).2 (ENNReal.coe_lt_coe.2 hcd)
      exact (lt_of_le_of_lt (measure_mono inter_subset_right) μo).ne
    _ ≤ ρ s' := v.measure_le_of_frequently_le ρ smul_absolutelyContinuous s' fun x hx ↦ hd x hx.1

/-- If `ρ` is absolutely continuous with respect to `μ`, then for almost every `x`,
the ratio `ρ a / μ a` converges as `a` shrinks to `x` along a Vitali family for `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4306b546065d2c8e4816f30f3507973d6ace6a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
