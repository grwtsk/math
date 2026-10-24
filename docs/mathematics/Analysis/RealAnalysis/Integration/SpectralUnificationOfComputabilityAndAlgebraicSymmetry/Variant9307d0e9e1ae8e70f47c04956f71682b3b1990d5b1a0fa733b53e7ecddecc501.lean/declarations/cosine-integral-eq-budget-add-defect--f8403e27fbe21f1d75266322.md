# cosine_integral_eq_budget_add_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9abaada2781c8745aae8c22d130ba7b4e5197e80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20df1831-c3ed-3ed8-53e5-343bce04321a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24e489e7-0ea4-e0d1-0349-5ab7290fb5f5",
  "kind": "theorem",
  "lexical_name": "cosine_integral_eq_budget_add_defect",
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
  "slug": "cosine-integral-eq-budget-add-defect--f8403e27fbe21f1d75266322",
  "source": {
    "blob": "9abaada2781c8745aae8c22d130ba7b4e5197e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8403e27fbe21f1d75266322c7fe1ccc4b57b79737277f5c1dc46c5b7cdfd5be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24e489e7-0ea4-e0d1-0349-5ab7290fb5f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cosine_integral_eq_budget_add_defect (A : ℝ) (ρ : ℝ → ℝ)
    (hρ : Integrable ρ) (hmass : (∫ ξ, ρ ξ) = 1)
    (hcos : ∀ n ∈ primeIndices A,
      Integrable (fun ξ ↦ Real.cos (ξ * Real.log n) * ρ ξ)) :
    (∫ ξ, cosineMultiplier A ξ * ρ ξ) =
      -2 * totalWeight A + ∫ ξ, phaseDefect A ξ * ρ ξ := by
  calc
    _ = ∫ ξ, (-2 * totalWeight A) * ρ ξ + phaseDefect A ξ * ρ ξ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      rw [cosineMultiplier_eq_budget_add_defect, add_mul]
    _ = _ := by
      rw [integral_add (hρ.const_mul _) (phaseDefect_integrable A ρ hρ hcos),
        integral_const_mul, hmass, mul_one]

/-- A conditional adapter for the exact source quadratic value. The remaining
uniform compensation of `-2 W_A` is not included among the conclusions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9abaada2781c8745aae8c22d130ba7b4e5197e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
