# Continuous.image_derivedSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcf268743bee66851dca5a9dc0f6bce74ebe8620",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2c67555-84b8-f6d8-5f42-5304c8465de2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ec67beb-1d56-26b4-603f-7787e1799c8d",
  "kind": "theorem",
  "lexical_name": "Continuous.image_derivedSet",
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
  "slug": "continuous-image-derivedset--228e599a4742c98b7b1cd716",
  "source": {
    "blob": "bcf268743bee66851dca5a9dc0f6bce74ebe8620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:228e599a4742c98b7b1cd716d2c8bf1faab5453efd632cb867921269c8fedeeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec67beb-1d56-26b4-603f-7787e1799c8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.image_derivedSet {β : Type*} [TopologicalSpace β] {A : Set X} {f : X → β}
    (hf1 : Continuous f) (hf2 : Function.Injective f) :
    f '' derivedSet A ⊆ derivedSet (f '' A) := by
  intro x hx
  simp only [Set.mem_image, mem_derivedSet] at hx
  obtain ⟨y, hy1, rfl⟩ := hx
  convert hy1.map hf1.continuousAt hf2
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf268743bee66851dca5a9dc0f6bce74ebe8620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
