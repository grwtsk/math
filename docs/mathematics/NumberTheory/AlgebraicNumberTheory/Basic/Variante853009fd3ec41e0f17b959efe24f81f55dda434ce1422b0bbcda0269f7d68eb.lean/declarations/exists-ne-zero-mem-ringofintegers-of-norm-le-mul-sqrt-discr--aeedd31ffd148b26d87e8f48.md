# exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a602da3ca6d9bd91bcab784f3ff97816083a8801",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64b2b15a-bd3d-d5ef-c39b-e03765376347",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29525aa9-f73a-8ddd-4e85-e56147ff0d69",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr",
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
  "slug": "exists-ne-zero-mem-ringofintegers-of-norm-le-mul-sqrt-discr--aeedd31ffd148b26d87e8f48",
  "source": {
    "blob": "a602da3ca6d9bd91bcab784f3ff97816083a8801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeedd31ffd148b26d87e8f484eb9bcbaec0849878fde4bbcba2d1b78ef225a90",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29525aa9-f73a-8ddd-4e85-e56147ff0d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr :
    ∃ (a : 𝓞 K), a ≠ 0 ∧
      |Algebra.norm ℚ (a : K)| ≤ (4 / π) ^ nrComplexPlaces K *
        (finrank ℚ K).factorial / (finrank ℚ K) ^ (finrank ℚ K) * Real.sqrt |discr K| := by
  obtain ⟨_, h_mem, h_nz, h_nm⟩ := exists_ne_zero_mem_ideal_of_norm_le_mul_sqrt_discr K ↑1
  obtain ⟨a, rfl⟩ := (FractionalIdeal.mem_one_iff _).mp h_mem
  refine ⟨a, ne_zero_of_map h_nz, ?_⟩
  simp_rw [Units.val_one, FractionalIdeal.absNorm_one, Rat.cast_one, one_mul] at h_nm
  exact h_nm

/--
The Minkowski lower bound `n^{2n}/((4/pi)^{2r_2}*n!^2)` for the absolute value of the discriminant
of a number field of degree n.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a602da3ca6d9bd91bcab784f3ff97816083a8801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
