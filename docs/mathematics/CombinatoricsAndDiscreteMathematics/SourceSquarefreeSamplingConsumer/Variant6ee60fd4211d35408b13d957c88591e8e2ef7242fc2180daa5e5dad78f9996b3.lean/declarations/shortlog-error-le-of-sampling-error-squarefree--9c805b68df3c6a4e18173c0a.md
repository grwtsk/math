# shortLog_error_le_of_sampling_error_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95192d0c-f709-2332-8ab3-8d5f4eab69fd",
  "kind": "theorem",
  "lexical_name": "shortLog_error_le_of_sampling_error_squarefree",
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
  "slug": "shortlog-error-le-of-sampling-error-squarefree--9c805b68df3c6a4e18173c0a",
  "source": {
    "blob": "8f5423bed034ff0ac817efc0855c45c5c4d26935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c805b68df3c6a4e18173c0a2a6b92f31997ec9a1b9fa1d45d0a0b93eadc7b73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95192d0c-f709-2332-8ab3-8d5f4eab69fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortLog_error_le_of_sampling_error_squarefree {A E : ℝ} (hA : 1 ≤ A) (hE : 0 ≤ E)
    (J₁ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |sourceMobiusKernel A d - J₁ d| ≤ E / (A ^ 2 * Real.sqrt d)) :
    |shortLogSource A - shortLogMainTerm A J₁| ≤ (3 / 2 : ℝ) * E / A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  unfold shortLogSource shortLogMainTerm
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |realMoebius d * sourceMobiusKernel A d - realMoebius d * J₁ d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), E / A ^ 2 * (|realMoebius d| / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [← mul_sub, abs_mul]
      calc
        _ ≤ |realMoebius d| * (E / (A ^ 2 * Real.sqrt d)) :=
          mul_le_mul_of_nonneg_left (herr d hd) (abs_nonneg _)
        _ = _ := by ring
    _ = E / A ^ 2 * ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt d :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ E / A ^ 2 * ((3 / 2) * Real.sqrt (vaughanCutoff A)) :=
      mul_le_mul_of_nonneg_left (actual_squarefree_weight_sum _) (by positivity)
    _ ≤ E / A ^ 2 * ((3 / 2) * A) := by
      gcongr
      exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f5423bed034ff0ac817efc0855c45c5c4d26935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
