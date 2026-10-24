# tendsto_inf_principal_nhds_iff_of_forall_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1786220817deb3a9d38e9f59e93bd22fafd0dd34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5db7ec7c-2ac0-ec76-857b-4f7f95488a02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa93c09b-7f4b-58c3-6f15-b08d847f43cf",
  "kind": "theorem",
  "lexical_name": "tendsto_inf_principal_nhds_iff_of_forall_eq",
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
  "slug": "tendsto-inf-principal-nhds-iff-of-forall-eq--d9d0a40b3ce1cd6859ef762a",
  "source": {
    "blob": "1786220817deb3a9d38e9f59e93bd22fafd0dd34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9d0a40b3ce1cd6859ef762a5e557ec0fd2fdeb40fa0fef03735d1a922e9e61a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa93c09b-7f4b-58c3-6f15-b08d847f43cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_inf_principal_nhds_iff_of_forall_eq {f : α → X} {l : Filter α} {s : Set α}
    (h : ∀ a ∉ s, f a = x) : Tendsto f (l ⊓ 𝓟 s) (𝓝 x) ↔ Tendsto f l (𝓝 x) := by
  rw [tendsto_iff_comap, tendsto_iff_comap]
  replace h : 𝓟 sᶜ ≤ comap f (𝓝 x) := by
    rintro U ⟨t, ht, htU⟩ x hx
    have : f x ∈ t := (h x hx).symm ▸ mem_of_mem_nhds ht
    exact htU this
  refine ⟨fun h' => ?_, le_trans inf_le_left⟩
  have := sup_le h' h
  rw [sup_inf_right, sup_principal, union_compl_self, principal_univ, inf_top_eq, sup_le_iff]
    at this
  exact this.1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1786220817deb3a9d38e9f59e93bd22fafd0dd34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
