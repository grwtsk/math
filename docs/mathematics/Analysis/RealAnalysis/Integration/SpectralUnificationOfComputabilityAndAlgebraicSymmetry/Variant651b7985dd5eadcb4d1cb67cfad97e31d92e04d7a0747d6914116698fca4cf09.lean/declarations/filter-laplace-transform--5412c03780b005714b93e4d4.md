# filter_laplace_transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43a92e773c9aa7501c1fee3f3a69032de99e66b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/651b7985dd5eadcb4d1cb67cfad97e31d92e04d7a0747d6914116698fca4cf09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d68d4b1-78cb-9fb8-5f10-e57e8c1227c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19f526e5-0744-dc6e-7486-6cc9cf164ce5",
  "kind": "theorem",
  "lexical_name": "filter_laplace_transform",
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
  "slug": "filter-laplace-transform--5412c03780b005714b93e4d4",
  "source": {
    "blob": "43a92e773c9aa7501c1fee3f3a69032de99e66b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant651b7985dd5eadcb4d1cb67cfad97e31d92e04d7a0747d6914116698fca4cf09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5412c03780b005714b93e4d4f5055036ff24612e3c95f6c01d323e4674349403",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant651b7985dd5eadcb4d1cb67cfad97e31d92e04d7a0747d6914116698fca4cf09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19f526e5-0744-dc6e-7486-6cc9cf164ce5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_laplace_transform (j : ℕ) (hj : j ∈ Finset.Icc 9 17)
    (b : ℝ) (hb : 0 < b) :
    (∫ u : ℝ in Ioi 0, Real.exp (-(b * u)) * monomialFilter j u) =
      (Nat.factorial j : ℝ) * (b ^ 2 - 1 / 4) ^ 2 / b ^ (j + 1) := by
  have h := filter_weighted_laplace_integral j 0 b hb
  simp only [pow_zero, one_mul, Nat.zero_add] at h
  rw [h]
  have hn : b ≠ 0 := ne_of_gt hb
  obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hj
  interval_cases j <;> norm_num [Nat.factorial] <;> field_simp <;> ring

/-- The unweighted filter transform is a convergent integral at every positive real rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant651b7985dd5eadcb4d1cb67cfad97e31d92e04d7a0747d6914116698fca4cf09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant651b7985dd5eadcb4d1cb67cfad97e31d92e04d7a0747d6914116698fca4cf09.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a92e773c9aa7501c1fee3f3a69032de99e66b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
