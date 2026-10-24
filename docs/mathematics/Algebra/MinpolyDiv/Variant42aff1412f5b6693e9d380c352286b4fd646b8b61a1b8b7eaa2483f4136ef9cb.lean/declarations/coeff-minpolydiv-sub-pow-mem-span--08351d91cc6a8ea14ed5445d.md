# coeff_minpolyDiv_sub_pow_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3474a064-e511-f7d2-921e-d6df66096da3",
  "kind": "lemma",
  "lexical_name": "coeff_minpolyDiv_sub_pow_mem_span",
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
  "slug": "coeff-minpolydiv-sub-pow-mem-span--08351d91cc6a8ea14ed5445d",
  "source": {
    "blob": "ba816856ee1786f572e7d378c37d1b50fa42163b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08351d91cc6a8ea14ed5445d5b79f5a7325b93d1dbb023bc8ec41c26fc65c8a0",
  "verification": {
    "reference": "docs/verification/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3474a064-e511-f7d2-921e-d6df66096da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_minpolyDiv_sub_pow_mem_span {i} (hi : i ≤ natDegree (minpolyDiv R x)) :
    coeff (minpolyDiv R x) (natDegree (minpolyDiv R x) - i) - x ^ i ∈
      Submodule.span R ((x ^ ·) '' Set.Iio i) := by
  induction i with
  | zero => simp [(minpolyDiv_monic hx).leadingCoeff]
  | succ i IH =>
    rw [coeff_minpolyDiv, add_sub_assoc, pow_succ, ← sub_mul, Algebra.algebraMap_eq_smul_one]
    refine add_mem ?_ ?_
    · apply Submodule.smul_mem
      apply Submodule.subset_span
      exact ⟨0, Nat.zero_lt_succ _, pow_zero _⟩
    · rw [← tsub_tsub, tsub_add_cancel_of_le (le_tsub_of_add_le_left (b := 1) hi)]
      apply SetLike.le_def.mp ?_
        (Submodule.mul_mem_mul (IH ((Nat.le_succ _).trans hi))
          (Submodule.mem_span_singleton_self x))
      rw [Submodule.span_mul_span, Set.mul_singleton, Set.image_image]
      apply Submodule.span_mono
      rintro _ ⟨j, hj, rfl⟩
      rw [Set.mem_Iio] at hj
      exact ⟨j + 1, Nat.add_lt_of_lt_sub hj, pow_succ x j⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba816856ee1786f572e7d378c37d1b50fa42163b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
