# sum_columnMinor_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c71cf5be-8efe-4c4f-ad0f-963904e7e023",
  "kind": "theorem",
  "lexical_name": "sum_columnMinor_sq",
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
  "slug": "sum-columnminor-sq--eb7a602ea001e2d63802bb71",
  "source": {
    "blob": "c2f895aa5e792a99ca5c2341354b18e8ebca87e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb7a602ea001e2d63802bb71ec222de5512da19e38d7ce2f886939a31ab9dce2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c71cf5be-8efe-4c4f-ad0f-963904e7e023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_columnMinor_sq (A : Matrix (Fin k) (Fin n) ℝ) :
    (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      (k.factorial : ℝ) * ∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2 := by
  classical
  have hs : (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      ∑ c : {c : Fin k → Fin n // Function.Injective c}, columnMinor A c.val ^ 2 := by
    rw [← Finset.sum_toFinset_eq_subtype
      (fun c : Fin k → Fin n => Function.Injective c) (fun c => columnMinor A c ^ 2)]
    symm
    apply Finset.sum_subset (Finset.subset_univ _)
    intro c _ hc
    have h : ¬ Function.Injective c := by simpa using hc
    rw [columnMinor_eq_zero_of_not_injective A c h, zero_pow (by decide : 2 ≠ 0)]
  rw [hs, ← orderedPermutationEquiv.sum_comp]
  change (∑ p : (Fin k ↪o Fin n) × Equiv.Perm (Fin k),
    columnMinor A (fun i => p.1 (p.2 i)) ^ 2) = _
  rw [Fintype.sum_prod_type]
  simp only [columnMinor_comp_perm_sq, Finset.sum_const, Finset.card_univ,
    Fintype.card_perm, Fintype.card_fin, nsmul_eq_mul]
  rw [Finset.mul_sum]

/-- Cauchy--Binet squared-minor identity for orthonormal rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f895aa5e792a99ca5c2341354b18e8ebca87e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
