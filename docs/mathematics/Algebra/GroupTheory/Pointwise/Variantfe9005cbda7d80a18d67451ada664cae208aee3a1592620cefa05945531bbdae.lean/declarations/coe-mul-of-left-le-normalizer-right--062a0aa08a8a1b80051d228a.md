# coe_mul_of_left_le_normalizer_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2b6c687-d64b-14e5-db42-12f3d3b4c0e6",
  "kind": "theorem",
  "lexical_name": "coe_mul_of_left_le_normalizer_right",
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
  "slug": "coe-mul-of-left-le-normalizer-right--062a0aa08a8a1b80051d228a",
  "source": {
    "blob": "69f17308e6b72d3dcd99c04c51b742513f7eefac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 254,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:062a0aa08a8a1b80051d228a8789e8d15977aa0907819c1a245701434e8b78c3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b6c687-d64b-14e5-db42-12f3d3b4c0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_mul_of_left_le_normalizer_right (H N : Subgroup G) (hLE : H ≤ N.normalizer) :
    (↑(H ⊔ N) : Set G) = H * N := by
  rw [sup_eq_closure_mul]
  refine Set.Subset.antisymm (fun x hx => ?_) subset_closure
  induction hx using closure_induction'' with
  | one => exact ⟨1, one_mem _, 1, one_mem _, mul_one 1⟩
  | mem _ hx => exact hx
  | inv_mem x hx =>
    obtain ⟨x, hx, y, hy, rfl⟩ := hx
    simpa only [mul_inv_rev, mul_assoc, inv_inv, inv_mul_cancel_left]
      using mul_mem_mul (inv_mem hx) ((mem_normalizer_iff.mp (hLE hx) y⁻¹).mp (inv_mem hy))
  | mul x' x' _ _ hx hx' =>
    obtain ⟨x, hx, y, hy, rfl⟩ := hx
    obtain ⟨x', hx', y', hy', rfl⟩ := hx'
    refine ⟨x * x', mul_mem hx hx', x'⁻¹ * y * x' * y', mul_mem ?_ hy', ?_⟩
    · exact (mem_normalizer_iff''.mp (hLE hx') y).mp hy
    · simp only [mul_assoc, mul_inv_cancel_left]

/-- The carrier of `N ⊔ H` is just `↑N * ↑H` (pointwise set product) when
`H` is a subgroup of the normalizer of `N` in `G`. -/
@[to_additive "The carrier of `N ⊔ H` is just `↑N + ↑H` (pointwise set addition)
when `H` is a subgroup of the normalizer of `N` in `G`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f17308e6b72d3dcd99c04c51b742513f7eefac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
