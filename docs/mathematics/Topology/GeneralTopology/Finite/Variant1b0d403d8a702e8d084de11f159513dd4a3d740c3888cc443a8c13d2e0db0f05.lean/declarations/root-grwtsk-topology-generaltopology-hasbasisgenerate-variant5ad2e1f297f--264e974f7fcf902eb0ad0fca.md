# _root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.Set.PairwiseDisjoint.exists_mem_filter_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f8d2316-d198-895c-d83a-483480e8da0b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.Set.PairwiseDisjoint.exists_mem_filter_basis",
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
  "slug": "root-grwtsk-topology-generaltopology-hasbasisgenerate-variant5ad2e1f297f--264e974f7fcf902eb0ad0fca",
  "source": {
    "blob": "fad067a06ac0be24e0d077ac4fe05bbbef03a410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:264e974f7fcf902eb0ad0fca0e8d9a1a0a8787cef6ef080c5408785e18cdcdf9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f8d2316-d198-895c-d83a-483480e8da0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.Set.PairwiseDisjoint.exists_mem_filter_basis {I : Type*} {l : I → Filter α}
    {ι : I → Sort*} {p : ∀ i, ι i → Prop} {s : ∀ i, ι i → Set α} {S : Set I}
    (hd : S.PairwiseDisjoint l) (hS : S.Finite) (h : ∀ i, (l i).HasBasis (p i) (s i)) :
    ∃ ind : ∀ i, ι i, (∀ i, p i (ind i)) ∧ S.PairwiseDisjoint fun i => s i (ind i) := by
  rcases hd.exists_mem_filter hS with ⟨t, htl, hd⟩
  choose ind hp ht using fun i => (h i).mem_iff.1 (htl i)
  exact ⟨ind, hp, hd.mono ht⟩

/-- If `s : ι → Set α` is an indexed family of sets, then finite intersections of `s i` form a basis
of `⨅ i, 𝓟 (s i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fad067a06ac0be24e0d077ac4fe05bbbef03a410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
