# fundamentalDomain_ae_parallelepiped

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
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4348e03d-f4b6-1a6e-ba97-004d3dc55a9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06967049-3ef0-e43e-17ed-b8f61638ee75",
  "kind": "theorem",
  "lexical_name": "fundamentalDomain_ae_parallelepiped",
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
  "slug": "fundamentaldomain-ae-parallelepiped--900701e6593a77f722c2a129",
  "source": {
    "blob": "e57e688ffc1047d2e47b32ace9528b7673bdb24c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 397,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:900701e6593a77f722c2a1295d5243f979b9c7140278bd61b1fb80af6472dfa7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06967049-3ef0-e43e-17ed-b8f61638ee75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fundamentalDomain_ae_parallelepiped [Fintype ι] [MeasurableSpace E] (μ : Measure E)
    [BorelSpace E] [Measure.IsAddHaarMeasure μ] :
    fundamentalDomain b =ᵐ[μ] parallelepiped b := by
  classical
  have : FiniteDimensional ℝ E := b.finiteDimensional_of_finite
  rw [← measure_symmDiff_eq_zero_iff, symmDiff_of_le (fundamentalDomain_subset_parallelepiped b)]
  suffices (parallelepiped b \ fundamentalDomain b) ⊆ ⋃ i,
      AffineSubspace.mk' (b i) (span ℝ (b '' (Set.univ \ {i}))) by
    refine measure_mono_null this
      (measure_iUnion_null_iff.mpr fun i ↦ Measure.addHaar_affineSubspace μ _ ?_)
    refine (ne_of_mem_of_not_mem' (AffineSubspace.mem_top _ _ 0)
      (AffineSubspace.mem_mk'.not.mpr ?_)).symm
    simp_rw [vsub_eq_sub, zero_sub, neg_mem_iff]
    exact linearIndependent_iff_notMem_span.mp b.linearIndependent i
  intro x hx
  simp_rw [parallelepiped_basis_eq, Set.mem_Icc, Set.mem_sdiff, Set.mem_ofPred_eq,
    mem_fundamentalDomain, Set.mem_Ico, not_forall, not_and, not_lt] at hx
  obtain ⟨i, hi⟩ := hx.2
  have : b.repr x i = 1 := le_antisymm (hx.1 i).2 (hi (hx.1 i).1)
  rw [← b.sum_repr x, ← Finset.sum_erase_add _ _ (Finset.mem_univ i), this, one_smul, ← vadd_eq_add]
  refine Set.mem_iUnion.mpr ⟨i, AffineSubspace.vadd_mem_mk' _
    (sum_smul_mem _ _ (fun i hi ↦ Submodule.subset_span ?_))⟩
  exact ⟨i, Set.mem_sdiff_singleton.mpr ⟨trivial, Finset.ne_of_mem_erase hi⟩, rfl⟩

end Real

end ZSpan

section ZLattice

open Submodule Module ZSpan

-- TODO: generalize this class to other rings than `ℤ`
/-- `L : Submodule ℤ E` where `E` is a vector space over a normed field `K` is a `ℤ`-lattice if
it is discrete and spans `E` over `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e57e688ffc1047d2e47b32ace9528b7673bdb24c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
