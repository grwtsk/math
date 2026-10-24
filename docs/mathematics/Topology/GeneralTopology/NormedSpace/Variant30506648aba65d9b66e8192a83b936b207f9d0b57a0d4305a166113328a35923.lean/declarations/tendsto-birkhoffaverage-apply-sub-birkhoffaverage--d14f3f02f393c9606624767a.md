# tendsto_birkhoffAverage_apply_sub_birkhoffAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dadc6ab-5054-5364-586e-4b287cdc856f",
  "kind": "theorem",
  "lexical_name": "tendsto_birkhoffAverage_apply_sub_birkhoffAverage",
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
  "slug": "tendsto-birkhoffaverage-apply-sub-birkhoffaverage--d14f3f02f393c9606624767a",
  "source": {
    "blob": "b0f806b2c7ea228c7f345f150861c660d70253b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/NormedSpace/Variant30506648aba65d9b66e8192a83b936b207f9d0b57a0d4305a166113328a35923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14f3f02f393c9606624767a3f568480816b5a6ae3e364fb1207c996113f07d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NormedSpace/Variant30506648aba65d9b66e8192a83b936b207f9d0b57a0d4305a166113328a35923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dadc6ab-5054-5364-586e-4b287cdc856f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_birkhoffAverage_apply_sub_birkhoffAverage {f : α → α} {g : α → E} {x : α}
    (h : Bornology.IsBounded (range (g <| f^[·] x))) :
    Tendsto (fun n ↦ birkhoffAverage 𝕜 f g n (f x) - birkhoffAverage 𝕜 f g n x) atTop (𝓝 0) := by
  rcases Metric.isBounded_range_iff.1 h with ⟨C, hC⟩
  have : Tendsto (fun n : ℕ ↦ C / n) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop tendsto_natCast_atTop_atTop
  refine squeeze_zero_norm (fun n ↦ ?_) this
  rw [← dist_eq_norm, dist_birkhoffAverage_apply_birkhoffAverage]
  gcongr
  exact hC n 0

/-- If a function `g` is bounded,
then the difference between Birkhoff averages of `g`
along the orbit of `f x` and along the orbit of `x`
tends to zero.

See also `tendsto_birkhoffAverage_apply_sub_birkhoffAverage`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NormedSpace/Variant30506648aba65d9b66e8192a83b936b207f9d0b57a0d4305a166113328a35923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NormedSpace/Variant30506648aba65d9b66e8192a83b936b207f9d0b57a0d4305a166113328a35923.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0f806b2c7ea228c7f345f150861c660d70253b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
