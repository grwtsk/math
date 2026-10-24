# cauchySeq_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f68ca3ee-eba0-5c07-9c63-807bcc417083",
  "kind": "theorem",
  "lexical_name": "cauchySeq_bdd",
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
  "slug": "cauchyseq-bdd--fb0780b57545ae95e23458dc",
  "source": {
    "blob": "9c0c2abf9819bcd378360c38aec25bb657c58965",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb0780b57545ae95e23458dcbb092c867478e8410c8ab65834308391f9616803",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f68ca3ee-eba0-5c07-9c63-807bcc417083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_bdd {u : ℕ → α} (hu : CauchySeq u) : ∃ R > 0, ∀ m n, dist (u m) (u n) < R := by
  rcases Metric.cauchySeq_iff'.1 hu 1 zero_lt_one with ⟨N, hN⟩
  rsuffices ⟨R, R0, H⟩ : ∃ R > 0, ∀ n, dist (u n) (u N) < R
  · exact ⟨_, add_pos R0 R0, fun m n =>
      lt_of_le_of_lt (dist_triangle_right _ _ _) (add_lt_add (H m) (H n))⟩
  let R := Finset.sup (Finset.range N) fun n => nndist (u n) (u N)
  refine ⟨↑R + 1, add_pos_of_nonneg_of_pos R.2 zero_lt_one, fun n => ?_⟩
  rcases le_or_lt N n with h | h
  · exact lt_of_lt_of_le (hN _ h) (le_add_of_nonneg_left R.2)
  · have : _ ≤ R := Finset.le_sup (Finset.mem_range.2 h)
    exact lt_of_le_of_lt this (lt_add_of_pos_right _ zero_lt_one)

/-- Yet another metric characterization of Cauchy sequences on integers. This one is often the
most efficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0c2abf9819bcd378360c38aec25bb657c58965` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
