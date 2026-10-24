# _root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.Set.PairwiseDisjoint.exists_mem_filter_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64219b2a-7e1e-0a4f-ba51-23cbf6c956d5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.Set.PairwiseDisjoint.exists_mem_filter_basis",
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
  "slug": "root-grwtsk-topology-generaltopology-hasbasisgenerate-variant3b708dd87a7--ab4d7652f12bc0e3fade2b5a",
  "source": {
    "blob": "3a1c08d3822ced071a902b1e2342aeef4ce7fd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab4d7652f12bc0e3fade2b5a01f580d21055417694bf2706b7e05cb4e0cfa272",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64219b2a-7e1e-0a4f-ba51-23cbf6c956d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.Set.PairwiseDisjoint.exists_mem_filter_basis {I : Type*} {l : I → Filter α}
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1c08d3822ced071a902b1e2342aeef4ce7fd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
