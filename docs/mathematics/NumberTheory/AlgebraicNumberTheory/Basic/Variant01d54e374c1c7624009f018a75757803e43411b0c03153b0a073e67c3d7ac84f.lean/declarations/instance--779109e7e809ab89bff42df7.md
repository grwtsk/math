# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f266b475f002af48ff2682bb7fff1d69086d6713e874b34c1bef3f0a9dc2e8c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--779109e7e809ab89bff42df7",
  "source": {
    "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 628,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:779109e7e809ab89bff42df7a4c101495745f677bcf4feb2786a1b80253ce910",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f266b475f002af48ff2682bb7fff1d69086d6713e874b34c1bef3f0a9dc2e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsFractionRing A K] [IsDomain A] [NeZero ((n : ℕ) : A)] :
    IsFractionRing (CyclotomicRing n A K) (CyclotomicField n K) where
  map_units' := fun ⟨x, hx⟩ => by
    rw [isUnit_iff_ne_zero]
    apply map_ne_zero_of_mem_nonZeroDivisors
    · apply adjoin_algebra_injective
    · exact hx
  surj' x := by
    letI : NeZero ((n : ℕ) : K) := NeZero.nat_of_injective (IsFractionRing.injective A K)
    refine
      Algebra.adjoin_induction
        (hx := ((IsCyclotomicExtension.iff_singleton n K (CyclotomicField n K)).1
            (CyclotomicField.isCyclotomicExtension n K)).2 x)
        (fun y hy => ?_) (fun k => ?_) ?_ ?_
    · exact ⟨⟨⟨y, subset_adjoin hy⟩, 1⟩, by simp; rfl⟩
    · have : IsLocalization (nonZeroDivisors A) K := inferInstance
      replace := this.surj
      obtain ⟨⟨z, w⟩, hw⟩ := this k
      refine ⟨⟨algebraMap A (CyclotomicRing n A K) z, algebraMap A (CyclotomicRing n A K) w,
        map_mem_nonZeroDivisors _ (algebraBase_injective n A K) w.2⟩, ?_⟩
      letI : IsScalarTower A K (CyclotomicField n K) :=
        IsScalarTower.of_algebraMap_eq (congr_fun rfl)
      rw [← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply,
        @IsScalarTower.algebraMap_apply A K _ _ _ _ _ (_root_.CyclotomicField.algebra n K) _ _ w,
        ← RingHom.map_mul, hw, ← IsScalarTower.algebraMap_apply]
    · rintro y z - - ⟨a, ha⟩ ⟨b, hb⟩
      refine ⟨⟨a.1 * b.2 + b.1 * a.2, a.2 * b.2, mul_mem_nonZeroDivisors.2 ⟨a.2.2, b.2.2⟩⟩, ?_⟩
      rw [RingHom.map_mul, add_mul, ← mul_assoc, ha,
        mul_comm ((algebraMap (CyclotomicRing n A K) _) ↑a.2), ← mul_assoc, hb]
      simp only [map_add, map_mul]
    · rintro y z - - ⟨a, ha⟩ ⟨b, hb⟩
      refine ⟨⟨a.1 * b.1, a.2 * b.2, mul_mem_nonZeroDivisors.2 ⟨a.2.2, b.2.2⟩⟩, ?_⟩
      rw [RingHom.map_mul, mul_comm ((algebraMap (CyclotomicRing n A K) _) ↑a.2), mul_assoc, ←
        mul_assoc z, hb, ← mul_comm ((algebraMap (CyclotomicRing n A K) _) ↑a.2), ← mul_assoc, ha]
      simp only [map_mul]
  exists_of_eq {x y} h := ⟨1, by rw [adjoin_algebra_injective n A K h]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04b79552195d58566ee5f066c8dabc47ce044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
