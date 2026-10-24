# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:612c7be131236dfcd3686e33c6efc5b038308285b0a92933f180e52884de729b",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--ee9b6ac0aa18edcbc83d06cd",
  "source": {
    "blob": "cee8d254b9e8e6f325e97b8c4e3d454f311e7ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee9b6ac0aa18edcbc83d06cd1f7f5a7d1c7ca626fdd2129a05865def8d1adadf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:612c7be131236dfcd3686e33c6efc5b038308285b0a92933f180e52884de729b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def map (m : α → β) {f : Filter α} (F : f.Realizer) : (map m f).Realizer :=
  ⟨F.σ,
    { f := fun s ↦ image m (F.F s)
      pt := F.F.pt
      inf := F.F.inf
      inf_le_left := fun _ _ ↦ image_subset _ (F.F.inf_le_left _ _)
      inf_le_right := fun _ _ ↦ image_subset _ (F.F.inf_le_right _ _) },
    filter_eq <| Set.ext fun _ ↦ by
      simp only [CFilter.toFilter, image_subset_iff, mem_setOf_eq, Filter.mem_sets, mem_map]
      rw [F.mem_sets]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cee8d254b9e8e6f325e97b8c4e3d454f311e7ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
