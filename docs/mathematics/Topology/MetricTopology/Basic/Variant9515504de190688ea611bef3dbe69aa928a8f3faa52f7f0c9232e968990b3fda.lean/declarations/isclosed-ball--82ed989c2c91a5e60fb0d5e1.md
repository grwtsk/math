# isClosed_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b20f39a0-f71e-77ed-00f1-c6d63208bf5a",
  "kind": "lemma",
  "lexical_name": "isClosed_ball",
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
  "slug": "isclosed-ball--82ed989c2c91a5e60fb0d5e1",
  "source": {
    "blob": "2a795decc1e67d207cc38ea61f6d0adc4f339ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 123,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82ed989c2c91a5e60fb0d5e1b97de76b6610986c6c7fb28c89cb119f15e0e84c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b20f39a0-f71e-77ed-00f1-c6d63208bf5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_ball (x : X) (r : ℝ) : IsClosed (ball x r) := by
  cases le_or_gt r 0 with
  | inl hr =>
    simp [ball_eq_empty.mpr hr]
  | inr h =>
    rw [← isOpen_compl_iff, isOpen_iff]
    push _ ∈ _
    intro y hy
    cases ball_eq_or_disjoint x y r with
    | inl hd =>
      rw [hd] at hy
      simp [h.not_ge] at hy
    | inr hd =>
      use r
      simp [h, le_compl_iff_disjoint_left, hd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a795decc1e67d207cc38ea61f6d0adc4f339ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
