# mul_smul_mul_eq_smul_mul_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "476527349fcea81a613d2bd32b24cd4b442cdb7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 547,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42c8a639-bb2f-c6c4-e914-cf3356ac9ef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b022ee55-6e19-e2cf-7f2b-406e676adc42",
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
  "slug": "mul-smul-mul-eq-smul-mul-smul--a4b52b6908ab9d21f24b6a39",
  "source": {
    "blob": "476527349fcea81a613d2bd32b24cd4b442cdb7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 547,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4b52b6908ab9d21f24b6a39352daf026bbdd351bc0d49f5ebd47dd82803b7eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b022ee55-6e19-e2cf-7f2b-406e676adc42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–561.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476527349fcea81a613d2bd32b24cd4b442cdb7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
