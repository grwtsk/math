# IsCompact.compl_mem_sets_of_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bc4129c-6914-c734-fa9d-09ffc27e7e5e",
  "kind": "theorem",
  "lexical_name": "IsCompact.compl_mem_sets_of_nhdsWithin",
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
  "slug": "iscompact-compl-mem-sets-of-nhdswithin--ac4da0979925b2f08508dea8",
  "source": {
    "blob": "27af4af59e3a778358fce087bbe1c024f6c5d810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac4da0979925b2f08508dea89eb4f657b07bd92ae26bf8c338d53d96ed9ef525",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bc4129c-6914-c734-fa9d-09ffc27e7e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.compl_mem_sets_of_nhdsWithin (hs : IsCompact s) {f : Filter X}
    (hf : ∀ x ∈ s, ∃ t ∈ 𝓝[s] x, tᶜ ∈ f) : sᶜ ∈ f := by
  refine hs.compl_mem_sets fun x hx => ?_
  rcases hf x hx with ⟨t, ht, hst⟩
  replace ht := mem_inf_principal.1 ht
  apply mem_inf_of_inter ht hst
  rintro x ⟨h₁, h₂⟩ hs
  exact h₂ (h₁ hs)

/-- If `p : Set X → Prop` is stable under restriction and union, and each point `x`
  of a compact set `s` has a neighborhood `t` within `s` such that `p t`, then `p s` holds. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27af4af59e3a778358fce087bbe1c024f6c5d810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
