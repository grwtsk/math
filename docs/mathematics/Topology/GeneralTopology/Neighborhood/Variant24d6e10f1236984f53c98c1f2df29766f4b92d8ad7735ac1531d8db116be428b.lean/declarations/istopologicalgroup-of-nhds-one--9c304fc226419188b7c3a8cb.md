# IsTopologicalGroup.of_nhds_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db316958-4d23-6df7-9081-316671635961",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24efe99c-96f3-0339-c524-d1df667e527e",
  "kind": "theorem",
  "lexical_name": "IsTopologicalGroup.of_nhds_one'",
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
  "slug": "istopologicalgroup-of-nhds-one--9c304fc226419188b7c3a8cb",
  "source": {
    "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c304fc226419188b7c3a8cbb80f06d599a82c65c79f3f8163bcdd4a54a27a1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24efe99c-96f3-0339-c524-d1df667e527e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalGroup.of_nhds_one' {G : Type*} [Group G] [TopologicalSpace G]
    (hmul : Tendsto (uncurry ((· * ·) : G → G → G)) (𝓝 1 ×ˢ 𝓝 1) (𝓝 1))
    (hinv : Tendsto (fun x : G => x⁻¹) (𝓝 1) (𝓝 1))
    (hleft : ∀ x₀ : G, 𝓝 x₀ = map (fun x => x₀ * x) (𝓝 1))
    (hright : ∀ x₀ : G, 𝓝 x₀ = map (fun x => x * x₀) (𝓝 1)) : IsTopologicalGroup G :=
  { toContinuousMul := ContinuousMul.of_nhds_one hmul hleft hright
    toContinuousInv :=
      ContinuousInv.of_nhds_one hinv hleft fun x₀ =>
        le_of_eq
          (by
            rw [show (fun x => x₀ * x * x₀⁻¹) = (fun x => x * x₀⁻¹) ∘ fun x => x₀ * x from rfl, ←
              map_map, ← hleft, hright, map_map]
            simp) }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f001740a81132036b29324daefca70a9d5e64e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
