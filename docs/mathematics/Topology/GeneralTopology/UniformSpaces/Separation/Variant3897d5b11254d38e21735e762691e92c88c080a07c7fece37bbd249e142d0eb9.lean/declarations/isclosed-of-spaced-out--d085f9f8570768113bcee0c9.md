# isClosed_of_spaced_out

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "697d1cc32a1c610b22348980acacfa6ed5a78480",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4dd579c-6a54-5636-bc01-a7db3ab87fbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:322cafd4-3a62-6d75-345b-9be635f63180",
  "kind": "theorem",
  "lexical_name": "isClosed_of_spaced_out",
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
  "slug": "isclosed-of-spaced-out--d085f9f8570768113bcee0c9",
  "source": {
    "blob": "697d1cc32a1c610b22348980acacfa6ed5a78480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d085f9f8570768113bcee0c905b784d44e972fa4e86f622e53525044c4d6457b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322cafd4-3a62-6d75-345b-9be635f63180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_of_spaced_out [T0Space α] {V₀ : Set (α × α)} (V₀_in : V₀ ∈ 𝓤 α) {s : Set α}
    (hs : s.Pairwise fun x y => (x, y) ∉ V₀) : IsClosed s := by
  rcases comp_symm_mem_uniformity_sets V₀_in with ⟨V₁, V₁_in, V₁_symm, h_comp⟩
  apply isClosed_of_closure_subset
  intro x hx
  rw [mem_closure_iff_ball] at hx
  rcases hx V₁_in with ⟨y, hy, hy'⟩
  suffices x = y by rwa [this]
  apply eq_of_forall_symmetric
  intro V V_in _
  rcases hx (inter_mem V₁_in V_in) with ⟨z, hz, hz'⟩
  obtain rfl : z = y := by
    by_contra hzy
    exact hs hz' hy' hzy (h_comp <| mem_comp_of_mem_ball (ball_inter_left x _ _ hz) hy)
  exact ball_inter_right x _ _ hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `697d1cc32a1c610b22348980acacfa6ed5a78480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
