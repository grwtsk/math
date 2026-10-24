# diam_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ac70c9-77b8-f00e-84c4-0ae8c47c99c5",
  "kind": "theorem",
  "lexical_name": "diam_union",
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
  "slug": "diam-union--c5bf2b65ef5d4cfee5df5702",
  "source": {
    "blob": "5c631544583800fff714f3c40b9cb1bd86e51e7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 975,
    "line": 955,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5bf2b65ef5d4cfee5df5702985d6e5f6a3581f13b987827c142f6f3d6c97334",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ac70c9-77b8-f00e-84c4-0ae8c47c99c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–975.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diam_union {t : Set α} (xs : x ∈ s) (yt : y ∈ t) :
    diam (s ∪ t) ≤ diam s + edist x y + diam t := by
  have A : ∀ a ∈ s, ∀ b ∈ t, edist a b ≤ diam s + edist x y + diam t := fun a ha b hb =>
    calc
      edist a b ≤ edist a x + edist x y + edist y b := edist_triangle4 _ _ _ _
      _ ≤ diam s + edist x y + diam t :=
        add_le_add (add_le_add (edist_le_diam_of_mem ha xs) le_rfl) (edist_le_diam_of_mem yt hb)
  refine' diam_le fun a ha b hb => _
  cases' (mem_union _ _ _).1 ha with h'a h'a <;> cases' (mem_union _ _ _).1 hb with h'b h'b
  · calc
      edist a b ≤ diam s := edist_le_diam_of_mem h'a h'b
      _ ≤ diam s + (edist x y + diam t) := le_self_add
      _ = diam s + edist x y + diam t := (add_assoc _ _ _).symm
  · exact A a h'a b h'b
  · have Z := A b h'b a h'a
    rwa [edist_comm] at Z
  · calc
      edist a b ≤ diam t := edist_le_diam_of_mem h'a h'b
      _ ≤ diam s + edist x y + diam t := le_add_self
#align emetric.diam_union EMetric.diam_union

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c631544583800fff714f3c40b9cb1bd86e51e7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
