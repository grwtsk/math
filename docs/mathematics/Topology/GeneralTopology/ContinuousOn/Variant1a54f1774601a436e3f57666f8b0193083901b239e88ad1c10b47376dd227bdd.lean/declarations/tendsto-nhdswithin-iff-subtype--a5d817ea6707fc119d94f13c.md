# tendsto_nhdsWithin_iff_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef544284-8cd2-7a50-f29a-c76433aff137",
  "kind": "theorem",
  "lexical_name": "tendsto_nhdsWithin_iff_subtype",
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
  "slug": "tendsto-nhdswithin-iff-subtype--a5d817ea6707fc119d94f13c",
  "source": {
    "blob": "17850a8aa0371a4be6e67dbf51bf53e076819f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 514,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d817ea6707fc119d94f13c42e37e14bfc37cc41ab41ba2e124327773a2bf54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef544284-8cd2-7a50-f29a-c76433aff137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhdsWithin_iff_subtype {s : Set α} {a : α} (h : a ∈ s) (f : α → β) (l : Filter β) :
    Tendsto f (𝓝[s] a) l ↔ Tendsto (s.restrict f) (𝓝 ⟨a, h⟩) l := by
  rw [nhdsWithin_eq_map_subtype_coe h, tendsto_map'_iff]; rfl

/-!
## Local continuity properties of functions
-/

variable [TopologicalSpace β] [TopologicalSpace γ] [TopologicalSpace δ]
  {f g : α → β} {s s' s₁ t : Set α} {x : α}

/-!
### `ContinuousWithinAt`
-/

/-- If a function is continuous within `s` at `x`, then it tends to `f x` within `s` by definition.
We register this fact for use with the dot notation, especially to use `Filter.Tendsto.comp` as
`ContinuousWithinAt.comp` will have a different meaning. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17850a8aa0371a4be6e67dbf51bf53e076819f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
