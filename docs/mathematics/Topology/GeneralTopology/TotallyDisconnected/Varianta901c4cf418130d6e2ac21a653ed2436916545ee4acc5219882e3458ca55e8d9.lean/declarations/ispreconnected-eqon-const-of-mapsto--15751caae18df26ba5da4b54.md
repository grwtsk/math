# IsPreconnected.eqOn_const_of_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a68c4e41-e052-f54e-89b1-d9befbd5d524",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.eqOn_const_of_mapsTo",
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
  "slug": "ispreconnected-eqon-const-of-mapsto--15751caae18df26ba5da4b54",
  "source": {
    "blob": "fd11b06d09450631e88f4260cb6e7029b0cb6bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 323,
    "path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15751caae18df26ba5da4b546ecd46e30240a95c240f8b9dda8b3a7a6fd552f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a68c4e41-e052-f54e-89b1-d9befbd5d524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.eqOn_const_of_mapsTo {S : Set α} (hS : IsPreconnected S)
    {β} [TopologicalSpace β] {T : Set β} [DiscreteTopology T] {f : α → β} (hc : ContinuousOn f S)
    (hTm : MapsTo f S T) (hne : T.Nonempty) : ∃ y ∈ T, EqOn f (const α y) S := by
  rcases S.eq_empty_or_nonempty with (rfl | ⟨x, hx⟩)
  · exact hne.imp fun _ hy => ⟨hy, eqOn_empty _ _⟩
  · exact ⟨f x, hTm hx, fun x' hx' => hS.constant_of_mapsTo hc hTm hx' hx⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd11b06d09450631e88f4260cb6e7029b0cb6bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
