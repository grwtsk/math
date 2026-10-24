# eval₂_C_mul_T

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce7d2326e284726b70a341262842cbb627565894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 577,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0da21b08-be05-46dc-8ce3-73e6b2a51f19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b706b88-891c-7b81-49de-98815029ccfe",
  "kind": "theorem",
  "lexical_name": "eval₂_C_mul_T",
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
  "slug": "eval-c-mul-t--cc940e9d72961fba23e54bcc",
  "source": {
    "blob": "ce7d2326e284726b70a341262842cbb627565894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 577,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc940e9d72961fba23e54bcc2e2652696f5820f17c411c21b545bfeae67cfef7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b706b88-891c-7b81-49de-98815029ccfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_C_mul_T (r : R) (n : ℤ) : eval₂ f x (C r * T n) = f r * (x ^ n).val := by
  by_cases hn : 0 ≤ n
  · lift n to ℕ using hn
    rw [map_mul, eval₂_C, eval₂_T_n, zpow_natCast, Units.val_pow_eq_pow_val]
  · obtain ⟨m, rfl⟩ := Int.exists_eq_neg_ofNat (Int.le_of_not_le hn)
    rw [map_mul, eval₂_C, eval₂_T_neg_n, zpow_neg, zpow_natCast, ← inv_pow,
      Units.val_pow_eq_pow_val]

end CommSemiring

section Inversion

variable {R : Type*} [CommSemiring R]

/-- The map which substitutes `T ↦ T⁻¹` into a Laurent polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7d2326e284726b70a341262842cbb627565894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
