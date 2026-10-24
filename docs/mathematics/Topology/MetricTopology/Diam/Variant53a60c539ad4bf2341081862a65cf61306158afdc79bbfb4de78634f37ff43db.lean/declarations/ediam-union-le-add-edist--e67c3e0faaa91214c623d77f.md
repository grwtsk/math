# ediam_union_le_add_edist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feb8e5e9-a2d0-aad6-2906-139716b7626b",
  "kind": "theorem",
  "lexical_name": "ediam_union_le_add_edist",
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
  "slug": "ediam-union-le-add-edist--e67c3e0faaa91214c623d77f",
  "source": {
    "blob": "ec304b9eaf48300a6604e3889dcd0f0af5ab82da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 102,
    "path": "GRWTSK/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67c3e0faaa91214c623d77f0da8d0918e1e9c2c5a0f951033069413a439d440",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feb8e5e9-a2d0-aad6-2906-139716b7626b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_union_le_add_edist (xs : x ∈ s) (yt : y ∈ t) :
    ediam (s ∪ t) ≤ ediam s + edist x y + ediam t := by
  have A : ∀ a ∈ s, ∀ b ∈ t, edist a b ≤ ediam s + edist x y + ediam t := fun a ha b hb =>
    calc
      edist a b ≤ edist a x + edist x y + edist y b := edist_triangle4 _ _ _ _
      _ ≤ ediam s + edist x y + ediam t := by
        gcongr
        exacts [edist_le_ediam_of_mem ha xs, edist_le_ediam_of_mem yt hb]
  refine ediam_le fun a ha b hb => ?_
  rw [mem_union] at ha hb
  rcases ha with h'a | h'a <;> rcases hb with h'b | h'b
  · calc
      edist a b ≤ ediam s := edist_le_ediam_of_mem h'a h'b
      _ ≤ ediam s + (edist x y + ediam t) := le_self_add
      _ = ediam s + edist x y + ediam t := (add_assoc _ _ _).symm
  · exact A a h'a b h'b
  · have Z := A b h'b a h'a
    rwa [edist_comm] at Z
  · calc
      edist a b ≤ ediam t := edist_le_ediam_of_mem h'a h'b
      _ ≤ ediam s + edist x y + ediam t := le_add_self

/-- If two sets have nonempty intersection, then the extended diameter of their union
is estimated from above by the sum of their union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec304b9eaf48300a6604e3889dcd0f0af5ab82da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
