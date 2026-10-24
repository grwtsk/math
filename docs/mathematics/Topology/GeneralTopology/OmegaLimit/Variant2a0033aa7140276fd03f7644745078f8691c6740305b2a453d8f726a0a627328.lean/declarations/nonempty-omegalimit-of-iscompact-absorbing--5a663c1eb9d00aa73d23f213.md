# nonempty_omegaLimit_of_isCompact_absorbing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f67d0a98b6bf517e62ee2fb45e3e09258dcc7506",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f087331-5ea7-2c5d-b910-5e3cf817bbd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a33e553c-2b19-d32d-c1fc-e584cf1b9de6",
  "kind": "theorem",
  "lexical_name": "nonempty_omegaLimit_of_isCompact_absorbing",
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
  "slug": "nonempty-omegalimit-of-iscompact-absorbing--5a663c1eb9d00aa73d23f213",
  "source": {
    "blob": "f67d0a98b6bf517e62ee2fb45e3e09258dcc7506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 273,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a663c1eb9d00aa73d23f21322ab29d66b60462e32013e8f8a077d98a6ddb482",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a33e553c-2b19-d32d-c1fc-e584cf1b9de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_omegaLimit_of_isCompact_absorbing [NeBot f] {c : Set β} (hc₁ : IsCompact c)
    (hc₂ : ∃ v ∈ f, closure (image2 ϕ v s) ⊆ c) (hs : s.Nonempty) : (ω f ϕ s).Nonempty := by
  rcases hc₂ with ⟨v, hv₁, hv₂⟩
  rw [omegaLimit_eq_iInter_inter _ _ _ hv₁]
  apply IsCompact.nonempty_iInter_of_directed_nonempty_isCompact_isClosed
  · rintro ⟨u₁, hu₁⟩ ⟨u₂, hu₂⟩
    use ⟨u₁ ∩ u₂, inter_mem hu₁ hu₂⟩
    constructor
    all_goals exact closure_mono (image2_subset (inter_subset_inter_left _ (by simp)) Subset.rfl)
  · intro u
    have hn : (image2 ϕ (u ∩ v) s).Nonempty :=
      Nonempty.image2 (Filter.nonempty_of_mem (inter_mem u.prop hv₁)) hs
    exact hn.mono subset_closure
  · intro
    apply hc₁.of_isClosed_subset isClosed_closure
    calc
      _ ⊆ closure (image2 ϕ v s) := closure_mono (image2_subset inter_subset_right Subset.rfl)
      _ ⊆ c := hv₂
  · exact fun _ ↦ isClosed_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f67d0a98b6bf517e62ee2fb45e3e09258dcc7506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
