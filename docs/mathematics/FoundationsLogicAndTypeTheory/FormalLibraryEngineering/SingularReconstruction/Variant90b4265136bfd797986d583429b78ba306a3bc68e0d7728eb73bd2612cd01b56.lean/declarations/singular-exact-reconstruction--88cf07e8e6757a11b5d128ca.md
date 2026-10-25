# singular_exact_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2f2cd54-bfa5-3d32-8791-3013df637e31",
  "kind": "theorem",
  "lexical_name": "singular_exact_reconstruction",
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
  "slug": "singular-exact-reconstruction--88cf07e8e6757a11b5d128ca",
  "source": {
    "blob": "b39c3fa4672ebf664ef9fb21b969a1ade4ff87ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88cf07e8e6757a11b5d128cabf47f703e672a4def10c863f5422522969f1609a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f2cd54-bfa5-3d32-8791-3013df637e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singular_exact_reconstruction (P : Set (Set X)) (μ κ : Cardinal.{u})
    (hμ : μ.IsStrongLimit) (huncountable : ℵ₀ < μ)
    (hsingular : μ.IsSingular) (hκ : κ < μ)
    (smallCover : ∀ B : Set X, #B < μ →
      ∃ Q : Set (Set X), Q ⊆ P ∧ #Q < κ ∧ B ⊆ ⋃₀ Q)
    (A : Set X) (hA : #A ≤ μ) :
    singularCoverThreshold μ κ < μ ∧
      ∃ (I : Type u) (C : I → Set X), #I < singularCoverThreshold μ κ ∧
        (∀ i, C i ∈ downwardClosure P) ∧ A = ⋃ i, C i := by
  refine ⟨singularCoverThreshold_lt μ κ hμ huncountable hsingular hκ, ?_⟩
  classical
  obtain ⟨J, B, hJ, hB, hdecompose⟩ := singular_small_decomposition A μ hsingular hA
  choose Q hQP hQκ hcover using fun j ↦ smallCover (B j) (hB j)
  let γ : Cardinal.{u} := max ℵ₀ (max κ μ.ord.cof)
  have hκγ : κ ≤ γ := (le_max_left _ _).trans (le_max_right _ _)
  have hJγ : #J ≤ γ := hJ.le.trans ((le_max_right _ _).trans (le_max_right _ _))
  have hindex : #(Σ j, Q j) < singularCoverThreshold μ κ := by
    rw [Cardinal.mk_sigma]
    exact Cardinal.sum_lt_of_isRegular (Cardinal.isRegular_succ (le_max_left _ _))
      (hJγ.trans_lt (Order.lt_succ γ)) fun j ↦
        (hQκ j).trans_le (hκγ.trans (Order.le_succ γ))
  let C : (Σ j, Q j) → Set X := fun i ↦ i.2.val
  have hC : ∀ i, C i ∈ P := fun i ↦ hQP i.1 i.2.property
  have htotal : A ⊆ ⋃ i, C i := by
    intro x hx
    obtain ⟨j, hj⟩ := mem_iUnion.mp (hdecompose ▸ hx)
    obtain ⟨D, hDQ, hxD⟩ := mem_sUnion.mp (hcover j hj)
    exact mem_iUnion.mpr ⟨⟨j, ⟨D, hDQ⟩⟩, hxD⟩
  exact ⟨Σ j, Q j, fun i ↦ A ∩ C i, hindex,
    restriction_mem_downwardClosure P A C hC, reconstruct_of_cover A C htotal⟩

end FormalResearch.MathematicalTooling.Coverage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39c3fa4672ebf664ef9fb21b969a1ade4ff87ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
