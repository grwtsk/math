# mem_closure_of_arc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad855b61-2812-f88b-9018-b682a03fb809",
  "kind": "lemma",
  "lexical_name": "mem_closure_of_arc",
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
  "slug": "mem-closure-of-arc--dfab110761873ed3657c9205",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 895,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfab110761873ed3657c920591d509ee591bf3016d3beee65391a4f57c813f48",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad855b61-2812-f88b-9018-b682a03fb809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_closure_of_arc {x : ℍ} (hxnorm : ‖(x : ℂ)‖ = 1) (hxre : |x.re| ≤ 1 / 2) :
    x ∈ closure 𝒟ᵒ := by
  -- We show that `x` is a limit of points known to be in the closure.
  rw [← closure_closure]
  -- Consider a vertical line going upwards from `x` (parametrized by `ℝ≥0`)
  apply mem_closure_of_frequently_of_tendsto (b := 𝓝[>] 0)
    (f := fun t : ℝ≥0 ↦ ⟨x + t * Complex.I, by
      simpa using! add_pos_of_pos_of_nonneg x.coe_im_pos t.property⟩)
  · apply Filter.Eventually.frequently
    filter_upwards [self_mem_nhdsWithin] with a (ha : 0 < a)
    refine mem_closure_of_one_lt_norm ?_ (by simpa using! hxre)
    suffices 1 < ‖(x : ℂ)‖ ^ 2 + a ^ 2 + 2 * a * x.im by
      rw [← one_lt_normSq_iff]
      convert! this
      simp [← normSq_eq_norm_sq, normSq_apply]
      ring
    rw [hxnorm, one_pow, add_assoc, lt_add_iff_pos_right]
    positivity
  · refine .mono_left ?_ nhdsWithin_le_nhds
    simpa [show 𝓝 (x : ℂ) = 𝓝 (x + (((0 : ℝ≥0) : ℝ) : ℂ) * Complex.I) by simp,
      isOpenEmbedding_coe.tendsto_nhds_iff] using! Continuous.tendsto (by fun_prop) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
