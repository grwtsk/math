# mul_smul_mul_eq_smul_mul_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3166259d-ba9c-aebb-4b24-ae1fd81ae078",
  "kind": "theorem",
  "lexical_name": "mul_smul_mul_eq_smul_mul_smul",
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
  "slug": "mul-smul-mul-eq-smul-mul-smul--cae74fed667b2da23c727375",
  "source": {
    "blob": "39fd7763f0b29bfef59dad27092bf5f3538362fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 555,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae74fed667b2da23c7273755b569bda90f9219eb9b6bed5eaf8719bfb83f7ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3166259d-ba9c-aebb-4b24-ae1fd81ae078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_smul_mul_eq_smul_mul_smul (x y : R) : (x * y) • (M * N) = (x • M) * (y • N) := by
  ext
  refine ⟨?_, fun hx ↦ Submodule.mul_induction_on hx ?_ fun _ _ hx hy ↦ Submodule.add_mem _ hx hy⟩
  · rintro ⟨_, hx, rfl⟩
    rw [DistribMulAction.toLinearMap_apply]
    refine Submodule.mul_induction_on hx (fun m hm n hn ↦ ?_) (fun _ _ hn hm ↦ ?_)
    · rw [mul_smul_mul_comm]
      exact mul_mem_mul (smul_mem_pointwise_smul m x M hm) (smul_mem_pointwise_smul n y N hn)
    · rw [smul_add]
      exact Submodule.add_mem _ hn hm
  · rintro _ ⟨m, hm, rfl⟩ _ ⟨n, hn, rfl⟩
    simp_rw [DistribMulAction.toLinearMap_apply, smul_mul_smul_comm]
    exact smul_mem_pointwise_smul _ _ _ (mul_mem_mul hm hn)

/-- Sub-R-modules of an R-algebra form an idempotent semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39fd7763f0b29bfef59dad27092bf5f3538362fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
