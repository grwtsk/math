# mul_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:795b8fad-cfb8-cf5d-9645-45b807fb9001",
  "kind": "theorem",
  "lexical_name": "mul_normal",
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
  "slug": "mul-normal--4b4564bb3d8c46c964eacce8",
  "source": {
    "blob": "f107b1cd49f3c5a0651b5c71058acd35815ddc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 175,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b4564bb3d8c46c964eacce862b9a881656a7e8c88847e5a8685c60ce2a62ca8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:795b8fad-cfb8-cf5d-9645-45b807fb9001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_normal (H N : Subgroup G) [hN : N.Normal] : (↑(H ⊔ N) : Set G) = H * N := by
  rw [sup_eq_closure]
  refine Set.Subset.antisymm (fun x hx => ?_) subset_closure
  refine closure_induction'' (p := fun x => x ∈ (H : Set G) * (N : Set G)) hx ?_ ?_ ?_ ?_
  · rintro _ ⟨x, y, hx, hy, rfl⟩
    exact mul_mem_mul hx hy
  · rintro _ ⟨x, y, hx, hy, rfl⟩
    simpa only [mul_inv_rev, mul_assoc, inv_inv, inv_mul_cancel_left]
      using mul_mem_mul (inv_mem hx) (hN.conj_mem _ (inv_mem hy) x)
  · exact ⟨1, 1, one_mem _, one_mem _, mul_one 1⟩
  · rintro _ _ ⟨x, y, hx, hy, rfl⟩ ⟨x', y', hx', hy', rfl⟩
    refine ⟨x * x', x'⁻¹ * y * x' * y', mul_mem hx hx', mul_mem ?_ hy', ?_⟩
    · simpa using hN.conj_mem _ hy x'⁻¹
    · simp only [mul_assoc, mul_inv_cancel_left]
#align subgroup.mul_normal Subgroup.mul_normal
#align add_subgroup.add_normal AddSubgroup.add_normal

/-- The carrier of `N ⊔ H` is just `↑N * ↑H` (pointwise set product) when `N` is normal. -/
@[to_additive "The carrier of `N ⊔ H` is just `↑N + ↑H` (pointwise set addition)
when `N` is normal."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f107b1cd49f3c5a0651b5c71058acd35815ddc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
