# map_prodMap_coprod_le.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78018720c807c48411e914ffbc8e4fbc3b5a7abf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9704d63-6128-f8b9-a4e1-2934a5762dae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ece26046-2dee-f3dd-8723-0a75fb6af0f5",
  "kind": "theorem",
  "lexical_name": "map_prodMap_coprod_le.",
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
  "slug": "map-prodmap-coprod-le--5a2d736756ecf9fa46863074",
  "source": {
    "blob": "78018720c807c48411e914ffbc8e4fbc3b5a7abf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 490,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a2d736756ecf9fa46863074ca5939172ef185d14c2431c693487d310e3ba78b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ece26046-2dee-f3dd-8723-0a75fb6af0f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_prodMap_coprod_le.{u, v, w, x} {α₁ : Type u} {α₂ : Type v} {β₁ : Type w} {β₂ : Type x}
    {f₁ : Filter α₁} {f₂ : Filter α₂} {m₁ : α₁ → β₁} {m₂ : α₂ → β₂} :
    map (Prod.map m₁ m₂) (f₁.coprod f₂) ≤ (map m₁ f₁).coprod (map m₂ f₂) := by
  intro s
  simp only [mem_map, mem_coprod_iff]
  rintro ⟨⟨u₁, hu₁, h₁⟩, u₂, hu₂, h₂⟩
  refine ⟨⟨m₁ ⁻¹' u₁, hu₁, fun _ hx => h₁ ?_⟩, ⟨m₂ ⁻¹' u₂, hu₂, fun _ hx => h₂ ?_⟩⟩ <;> convert hx

@[deprecated (since := "2025-03-10")]
alias map_prod_map_coprod_le := map_prodMap_coprod_le

/-- Characterization of the coproduct of the `Filter.map`s of two principal filters `𝓟 {a}` and
`𝓟 {i}`, the first under the constant function `fun a => b` and the second under the identity
function. Together with the next lemma, `map_prodMap_const_id_principal_coprod_principal`, this
provides an example showing that the inequality in the lemma `map_prodMap_coprod_le` can be strict.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78018720c807c48411e914ffbc8e4fbc3b5a7abf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
