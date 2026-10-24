# IsClosed.upperClosure_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b688bc0-2619-6cca-f0a1-c0e6b9393316",
  "kind": "lemma",
  "lexical_name": "IsClosed.upperClosure_pi",
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
  "slug": "isclosed-upperclosure-pi--c8590d342cde58a1e814b1b0",
  "source": {
    "blob": "1c22adc63de5354f1081f4b6effdbcb06f55d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 205,
    "path": "GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8590d342cde58a1e814b1b053ded3ca7af337170acddaa7129dabb097edb996",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b688bc0-2619-6cca-f0a1-c0e6b9393316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsClosed.upperClosure_pi (hs : IsClosed s) (hs' : BddBelow s) :
    IsClosed (upperClosure s : Set (ι → ℝ)) := by
  cases nonempty_fintype ι
  refine IsSeqClosed.isClosed fun f x hf hx ↦ ?_
  choose g hg hgf using hf
  obtain ⟨a, ha⟩ := hx.bddAbove_range
  obtain ⟨b, hb, φ, hφ, hbf⟩ := tendsto_subseq_of_bounded (hs'.isBounded_inter bddAbove_Iic) fun n ↦
    ⟨hg n, (hgf _).trans <| ha <| mem_range_self _⟩
  exact ⟨b, closure_minimal inter_subset_left hs hb,
    le_of_tendsto_of_tendsto' hbf (hx.comp hφ.tendsto_atTop) fun _ ↦ hgf _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c22adc63de5354f1081f4b6effdbcb06f55d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
