# IsZLattice.isCompact_range_of_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e57e688ffc1047d2e47b32ace9528b7673bdb24c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 788,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cd37afd-ecb1-807d-2c22-6da350c77dd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fe3fca3-cf3d-9852-08b9-f20c16b10ff5",
  "kind": "lemma",
  "lexical_name": "IsZLattice.isCompact_range_of_periodic",
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
  "slug": "iszlattice-iscompact-range-of-periodic--0490b318d73f25ce709c3c4a",
  "source": {
    "blob": "e57e688ffc1047d2e47b32ace9528b7673bdb24c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 788,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0490b318d73f25ce709c3c4a879f37437dd4213cb85276172578c17020b4cf1f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fe3fca3-cf3d-9852-08b9-f20c16b10ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 788–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsZLattice.isCompact_range_of_periodic
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    [TopologicalSpace F]
    (L : Submodule ℤ E) [DiscreteTopology L] [IsZLattice ℝ L] (f : E → F) (hf : Continuous f)
    (hf' : ∀ z w, w ∈ L → f (z + w) = f z) : IsCompact (Set.range f) := by
  have := ZLattice.module_free ℝ L
  let b := Module.Free.chooseBasis ℤ L
  convert! (b.ofZLatticeBasis ℝ).parallelepiped.isCompact.image hf
  refine le_antisymm ?_ (Set.image_subset_range _ _)
  rintro _ ⟨x, rfl⟩
  let x' : L := b.repr.symm (Finsupp.equivFunOnFinite.symm
    fun i ↦ ⌊(b.ofZLatticeBasis ℝ).repr x i⌋)
  refine ⟨x + (- x'), ?_, hf' _ _ (- x').2⟩
  simp [parallelepiped_basis_eq, x', Int.floor_le, Int.lt_floor_add_one, le_of_lt, add_comm (1 : ℝ)]

end ZLattice
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean#L788).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e57e688ffc1047d2e47b32ace9528b7673bdb24c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
