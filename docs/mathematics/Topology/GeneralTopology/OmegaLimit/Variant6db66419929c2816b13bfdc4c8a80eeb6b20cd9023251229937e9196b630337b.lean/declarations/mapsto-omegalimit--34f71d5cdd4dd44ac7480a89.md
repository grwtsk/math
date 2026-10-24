# mapsTo_omegaLimit'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ea45196-ca5f-9145-d3e0-dcfbac1c23a6",
  "kind": "theorem",
  "lexical_name": "mapsTo_omegaLimit'",
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
  "slug": "mapsto-omegalimit--34f71d5cdd4dd44ac7480a89",
  "source": {
    "blob": "ef2852a5a56a5ab4362dfdb8d5d0c16a3cc07ddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34f71d5cdd4dd44ac7480a89c08cccc8cadb3c845f38d73362e73b3f9733da44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ea45196-ca5f-9145-d3e0-dcfbac1c23a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapsTo_omegaLimit' {α' β' : Type*} [TopologicalSpace β'] {f : Filter τ} {ϕ : τ → α → β}
    {ϕ' : τ → α' → β'} {ga : α → α'} {s' : Set α'} (hs : MapsTo ga s s') {gb : β → β'}
    (hg : ∀ᶠ t in f, EqOn (gb ∘ ϕ t) (ϕ' t ∘ ga) s) (hgc : Continuous gb) :
    MapsTo gb (ω f ϕ s) (ω f ϕ' s') := by
  simp only [omegaLimit_def, mem_iInter, MapsTo]
  intro y hy u hu
  refine map_mem_closure hgc (hy _ (inter_mem hu hg)) (forall_mem_image2.2 fun t ht x hx ↦ ?_)
  calc
    ϕ' t (ga x) ∈ image2 ϕ' u s' := mem_image2_of_mem ht.1 (hs hx)
    _ = gb (ϕ t x) := ht.2 hx |>.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6db66419929c2816b13bfdc4c8a80eeb6b20cd9023251229937e9196b630337b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef2852a5a56a5ab4362dfdb8d5d0c16a3cc07ddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
