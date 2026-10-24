# Module.Finite.base_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae6d5ed3964d543d8e029731ebc4ec7518f7aede8a6b25cbbfa03f19eaa01ef6",
  "kind": "instance",
  "lexical_name": "Module.Finite.base_change",
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
  "slug": "module-finite-base-change--b055a0ad4b336db410a4607c",
  "source": {
    "blob": "bb35424c63bf81464502e4a9645bf70ab95dee8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 645,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b055a0ad4b336db410a4607cb4c84491526c21f5d680f80ecda8ee7ff5a8e764",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae6d5ed3964d543d8e029731ebc4ec7518f7aede8a6b25cbbfa03f19eaa01ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Module.Finite.base_change [CommSemiring R] [Semiring A] [Algebra R A] [AddCommMonoid M]
    [Module R M] [h : Module.Finite R M] : Module.Finite A (TensorProduct R A M) := by
  classical
    obtain ⟨s, hs⟩ := h.out
    refine' ⟨⟨s.image (TensorProduct.mk R A M 1), eq_top_iff.mpr fun x _ => _⟩⟩
    apply @TensorProduct.induction_on _ _ _ _ _ _ _ _ _ x
    · exact zero_mem _
    · intro x y
      -- Porting note: new TC reminder
      haveI : IsScalarTower R A (TensorProduct R A M) := TensorProduct.isScalarTower_left
      rw [Finset.coe_image, ← Submodule.span_span_of_tower R, Submodule.span_image, hs,
        Submodule.map_top, LinearMap.range_coe]
      change _ ∈ Submodule.span A (Set.range <| TensorProduct.mk R A M 1)
      rw [← mul_one x, ← smul_eq_mul, ← TensorProduct.smul_tmul']
      exact Submodule.smul_mem _ x (Submodule.subset_span <| Set.mem_range_self y)
    · exact fun _ _ => Submodule.add_mem _
#align module.finite.base_change Module.Finite.base_change

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb35424c63bf81464502e4a9645bf70ab95dee8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
