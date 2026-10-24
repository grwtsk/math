# exists_norm_proj_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d07fb370da9edc99f72e875de13adac15b59147c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ad8a580-1710-c943-9191-ea087ffc174d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76640d2a-24d0-3d1f-798b-46e394c4353c",
  "kind": "theorem",
  "lexical_name": "exists_norm_proj_le",
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
  "slug": "exists-norm-proj-le--f29181cf0d2dfe9d5f40b40b",
  "source": {
    "blob": "d07fb370da9edc99f72e875de13adac15b59147c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29181cf0d2dfe9d5f40b40b4dd19a81910fc271b94ae7c33db5f09d5107ce2b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76640d2a-24d0-3d1f-798b-46e394c4353c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_proj_le [CompleteSpace X] : ∃ C : ℝ, ∀ A : Finset β, ‖b.proj A‖ ≤ C := by
  classical
  apply banach_steinhaus
  intro x
  obtain ⟨A₀, hA₀⟩ := summable_iff_vanishing_norm.mp (b.expansion x).summable 1 zero_lt_one
  use (A₀.powerset.image fun B ↦ ‖b.proj B x‖).sup' ((Finset.powerset_nonempty A₀).image _) id + 1
  intro A
  have hdecomp : b.proj A x = b.proj (A ∩ A₀) x + b.proj (A \ A₀) x := by
    simp only [GeneralSchauderBasis.proj_apply]
    rw [← Finset.sum_union (Finset.disjoint_sdiff_inter A A₀).symm,
      Finset.union_comm, Finset.sdiff_union_inter]
  rw [hdecomp]
  -- -- The projection on the tail (A \ A₀) at `x` is bounded by 1
  have htail : ‖b.proj (A \ A₀) x‖ < 1 := by
    rw [GeneralSchauderBasis.proj_apply]
    exact hA₀ (A \ A₀) Finset.sdiff_disjoint
  apply (norm_add_le _ _).trans (add_le_add _ htail.le)
  -- The projection on (A ∩ A₀) at `x` is bounded by the `sup'`.
  exact Finset.le_sup' id <| Finset.mem_image_of_mem (fun B ↦ ‖b.proj B x‖)
      (Finset.mem_powerset.2 Finset.inter_subset_right)

/-- The basis constant for unconditional bases (supremum over all finite sets) as `nnnorm`.
    It requires completeness to guarantee that the supremum is finite,
    see lemma `bddAbove_range_nnnorm_proj` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d07fb370da9edc99f72e875de13adac15b59147c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
