# HasProd.nat_mul_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f9cdec5-fd89-a7c2-4311-c64b4791d212",
  "kind": "theorem",
  "lexical_name": "HasProd.nat_mul_neg",
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
  "slug": "hasprod-nat-mul-neg--b19aa357e86336a0411ff882",
  "source": {
    "blob": "5071414aef3e355f531ae4bd3ccdb26cca49c783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 428,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b19aa357e86336a0411ff8822a1d1fee0a03ad938d73857eb14b33623d1bb404",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f9cdec5-fd89-a7c2-4311-c64b4791d212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProd.nat_mul_neg {f : ℤ → M} (hf : HasProd f m) :
    HasProd (fun n : ℕ ↦ f n * f (-n)) (m * f 0) := by
  -- Note this is much easier to prove if you assume more about the target space, but we have to
  -- work hard to prove it under the very minimal assumptions here.
  apply (hf.mul (hasProd_ite_eq (0 : ℤ) (f 0))).hasProd_of_prod_eq fun u ↦ ?_
  refine ⟨u.image Int.natAbs, fun v' hv' ↦ ?_⟩
  let u1 := v'.image fun x : ℕ ↦ (x : ℤ)
  let u2 := v'.image fun x : ℕ ↦ -(x : ℤ)
  have A : u ⊆ u1 ∪ u2 := by
    intro x hx
    simp only [u1, u2, mem_union, mem_image, exists_prop]
    rcases le_total 0 x with (h'x | h'x)
    · refine Or.inl ⟨_, hv' <| mem_image.mpr ⟨x, hx, rfl⟩, ?_⟩
      simp only [Int.natCast_natAbs, abs_eq_self, h'x]
    · refine Or.inr ⟨_, hv' <| mem_image.mpr ⟨x, hx, rfl⟩, ?_⟩
      simp only [abs_of_nonpos h'x, Int.natCast_natAbs, neg_neg]
  exact ⟨_, A, calc
    (∏ x ∈ u1 ∪ u2, (f x * if x = 0 then f 0 else 1)) =
        (∏ x ∈ u1 ∪ u2, f x) * ∏ x ∈ u1 ∩ u2, f x := by
      rw [prod_mul_distrib]
      congr 1
      refine (prod_subset_one_on_sdiff inter_subset_union ?_ ?_).symm
      · intro x hx
        suffices x ≠ 0 by simp only [this, if_false]
        rintro rfl
        simp only [mem_sdiff, mem_union, mem_image, Nat.cast_eq_zero, exists_eq_right, neg_eq_zero,
          or_self, mem_inter, and_self, and_not_self, u1, u2] at hx
      · intro x hx
        simp only [u1, u2, mem_inter, mem_image, exists_prop] at hx
        suffices x = 0 by simp only [this, eq_self_iff_true, if_true]
        omega
    _ = (∏ x ∈ u1, f x) * ∏ x ∈ u2, f x := prod_union_inter
    _ = (∏ b ∈ v', f b) * ∏ b ∈ v', f (-b) := by
      simp only [u1, u2, Nat.cast_inj, imp_self, implies_true, forall_const, prod_image, neg_inj]
    _ = ∏ b ∈ v', (f b * f (-b)) := prod_mul_distrib.symm⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5071414aef3e355f531ae4bd3ccdb26cca49c783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
