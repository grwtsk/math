# mem_affineSpan_insert_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30b87342-807d-de72-2c68-c735193e9439",
  "kind": "theorem",
  "lexical_name": "mem_affineSpan_insert_iff",
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
  "slug": "mem-affinespan-insert-iff--bc4f82ee8b4d0c80f0c1364b",
  "source": {
    "blob": "6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1514,
    "line": 1478,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc4f82ee8b4d0c80f0c1364b87b306697b50fe33fc4209d9202febf6d148a68f",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30b87342-807d-de72-2c68-c735193e9439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1478–1514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_affineSpan_insert_iff {s : AffineSubspace k P} {p1 : P} (hp1 : p1 ∈ s) (p2 p : P) :
    p ∈ affineSpan k (insert p2 (s : Set P)) ↔
      ∃ (r : k) (p0 : P) (_hp0 : p0 ∈ s), p = r • (p2 -ᵥ p1 : V) +ᵥ p0 := by
  rw [← mem_coe] at hp1
  rw [← vsub_right_mem_direction_iff_mem (mem_affineSpan k (Set.mem_insert_of_mem _ hp1)),
    direction_affineSpan_insert hp1, Submodule.mem_sup]
  constructor
  · rintro ⟨v1, hv1, v2, hv2, hp⟩
    rw [Submodule.mem_span_singleton] at hv1
    rcases hv1 with ⟨r, rfl⟩
    use r, v2 +ᵥ p1, vadd_mem_of_mem_direction hv2 hp1
    symm at hp
    rw [← sub_eq_zero, ← vsub_vadd_eq_vsub_sub, vsub_eq_zero_iff_eq] at hp
    rw [hp, vadd_vadd]
  · rintro ⟨r, p3, hp3, rfl⟩
    use r • (p2 -ᵥ p1), Submodule.mem_span_singleton.2 ⟨r, rfl⟩, p3 -ᵥ p1,
      vsub_mem_direction hp3 hp1
    rw [vadd_vsub_assoc, add_comm]
#align affine_subspace.mem_affine_span_insert_iff AffineSubspace.mem_affineSpan_insert_iff

end AffineSubspace

section MapComap

variable {k V₁ P₁ V₂ P₂ V₃ P₃ : Type*} [Ring k]

variable [AddCommGroup V₁] [Module k V₁] [AddTorsor V₁ P₁]

variable [AddCommGroup V₂] [Module k V₂] [AddTorsor V₂ P₂]

variable [AddCommGroup V₃] [Module k V₃] [AddTorsor V₃ P₃]

section

variable (f : P₁ →ᵃ[k] P₂)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean#L1478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
