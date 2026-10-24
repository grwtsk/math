# mem_span_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0babd125-5a74-9d58-2f5d-25338fde4fc9",
  "kind": "theorem",
  "lexical_name": "mem_span_iff",
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
  "slug": "mem-span-iff--5198efc9603fa83b7a97c449",
  "source": {
    "blob": "a9d5260595b68a0d69126db9cd0c2a21fcd91912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 130,
    "path": "GRWTSK/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5198efc9603fa83b7a97c44913ac6bd5950b931af040d10bdf4b0d29587bce13",
  "verification": {
    "reference": "docs/verification/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0babd125-5a74-9d58-2f5d-25338fde4fc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_iff {N : Type*} [AddCommMonoid N] [Module R N] [Module S N] [IsScalarTower R S N]
    {x : N} {a : Set N} :
    x ∈ Submodule.span S a ↔ ∃ y ∈ Submodule.span R a, ∃ z : M, x = mk' S 1 z • y := by
  constructor
  · intro h
    refine Submodule.span_induction ?_ ?_ ?_ ?_ h
    · rintro x hx
      exact ⟨x, Submodule.subset_span hx, 1, by rw [mk'_one, map_one, one_smul]⟩
    · exact ⟨0, Submodule.zero_mem _, 1, by rw [mk'_one, map_one, one_smul]⟩
    · rintro _ _ _ _ ⟨y, hy, z, rfl⟩ ⟨y', hy', z', rfl⟩
      refine
        ⟨(z' : R) • y + (z : R) • y',
          Submodule.add_mem _ (Submodule.smul_mem _ _ hy) (Submodule.smul_mem _ _ hy'), z * z', ?_⟩
      rw [smul_add, ← IsScalarTower.algebraMap_smul S (z : R), ←
        IsScalarTower.algebraMap_smul S (z' : R), smul_smul, smul_smul]
      congr 1
      · rw [← mul_one (1 : R), mk'_mul, mul_assoc, mk'_spec, map_one, mul_one, mul_one]
      · rw [← mul_one (1 : R), mk'_mul, mul_right_comm, mk'_spec, map_one, mul_one, one_mul]
    · rintro a _ _ ⟨y, hy, z, rfl⟩
      obtain ⟨y', z', rfl⟩ := mk'_surjective M a
      refine ⟨y' • y, Submodule.smul_mem _ _ hy, z' * z, ?_⟩
      rw [← IsScalarTower.algebraMap_smul S y', smul_smul, ← mk'_mul, smul_smul,
        mul_comm (mk' S _ _), mul_mk'_eq_mk'_of_mul]
  · rintro ⟨y, hy, z, rfl⟩
    exact Submodule.smul_mem _ _ (Submodule.span_subset_span R S _ hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d5260595b68a0d69126db9cd0c2a21fcd91912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
