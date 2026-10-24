# Topology.IsInducing.joinedIn_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0178f8796b28d415eff41b94d90a20167bb59ddd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d08cd904-bafc-7ae9-156c-90243bcb3be3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdd7028d-9874-1cd6-c576-3ae603e67ab5",
  "kind": "theorem",
  "lexical_name": "Topology.IsInducing.joinedIn_image",
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
  "slug": "topology-isinducing-joinedin-image--ff7184ee9c85b7b1f0a1a9b5",
  "source": {
    "blob": "0178f8796b28d415eff41b94d90a20167bb59ddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff7184ee9c85b7b1f0a1a9b54052c2775e290b5b918156bdfb6d785979de9ebb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd7028d-9874-1cd6-c576-3ae603e67ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsInducing.joinedIn_image {f : X → Y} (hf : IsInducing f) (hx : x ∈ F)
    (hy : y ∈ F) : JoinedIn (f '' F) (f x) (f y) ↔ JoinedIn F x y := by
  refine ⟨?_, (.map · hf.continuous)⟩
  rintro ⟨γ, hγ⟩
  choose γ' hγ'F hγ' using hγ
  have h₀ : x ⤳ γ' 0 := by rw [← hf.specializes_iff, hγ', γ.source]
  have h₁ : γ' 1 ⤳ y := by rw [← hf.specializes_iff, hγ', γ.target]
  have h : JoinedIn F (γ' 0) (γ' 1) := by
    refine ⟨⟨⟨γ', ?_⟩, rfl, rfl⟩, hγ'F⟩
    simpa only [hf.continuous_iff, comp_def, hγ'] using map_continuous γ
  exact (h₀.joinedIn hx (hγ'F _)).trans <| h.trans <| h₁.joinedIn (hγ'F _) hy

@[deprecated (since := "2024-10-28")] alias Inducing.joinedIn_image := IsInducing.joinedIn_image

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0178f8796b28d415eff41b94d90a20167bb59ddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
