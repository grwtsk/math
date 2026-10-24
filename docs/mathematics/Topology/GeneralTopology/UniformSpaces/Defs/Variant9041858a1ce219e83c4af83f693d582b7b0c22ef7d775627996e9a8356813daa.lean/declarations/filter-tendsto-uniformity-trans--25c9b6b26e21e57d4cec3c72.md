# Filter.Tendsto.uniformity_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6896ce14cc551b0ec0fbf023ee7f088ec1477499",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27596e5a-916b-a3bf-be15-f619028d1b2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fb91513-6e15-4b0d-4265-04f0e32a64ff",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.uniformity_trans",
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
  "slug": "filter-tendsto-uniformity-trans--25c9b6b26e21e57d4cec3c72",
  "source": {
    "blob": "6896ce14cc551b0ec0fbf023ee7f088ec1477499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 447,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c9b6b26e21e57d4cec3c724e4da2f0af9db337bb476de81deef3a1a401fabc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fb91513-6e15-4b0d-4265-04f0e32a64ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.uniformity_trans {l : Filter β} {f₁ f₂ f₃ : β → α}
    (h₁₂ : Tendsto (fun x => (f₁ x, f₂ x)) l (𝓤 α))
    (h₂₃ : Tendsto (fun x => (f₂ x, f₃ x)) l (𝓤 α)) : Tendsto (fun x => (f₁ x, f₃ x)) l (𝓤 α) := by
  refine le_trans (le_lift'.2 fun s hs => mem_map.2 ?_) comp_le_uniformity
  filter_upwards [mem_map.1 (h₁₂ hs), mem_map.1 (h₂₃ hs)] with x hx₁₂ hx₂₃ using ⟨_, hx₁₂, hx₂₃⟩

/-- Relation `fun f g ↦ Tendsto (fun x ↦ (f x, g x)) l (𝓤 α)` is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6896ce14cc551b0ec0fbf023ee7f088ec1477499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
