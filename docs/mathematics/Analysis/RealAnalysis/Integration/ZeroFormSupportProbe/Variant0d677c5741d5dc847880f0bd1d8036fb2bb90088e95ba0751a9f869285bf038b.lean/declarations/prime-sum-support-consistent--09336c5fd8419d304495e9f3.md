# prime_sum_support_consistent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36ce04c597e40e711718f670053eaae46dd5c235",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:321b3af0-e205-c4a4-3be7-d7e77b658f6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ccd36bd-fe85-2094-1d79-3c8fcdfe949c",
  "kind": "theorem",
  "lexical_name": "prime_sum_support_consistent",
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
  "slug": "prime-sum-support-consistent--09336c5fd8419d304495e9f3",
  "source": {
    "blob": "36ce04c597e40e711718f670053eaae46dd5c235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09336c5fd8419d304495e9f3f43e5bf309656d8adc4245403fa4c9252dd41f8f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ccd36bd-fe85-2094-1d79-3c8fcdfe949c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_sum_support_consistent {f : ℝ → ℝ} {A R : ℝ}
    (hsupport : Function.support f ⊆ Icc (-A) A) (hAR : A ≤ R) :
    (∑ n ∈ primeCutoff R, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
      (∫ x, f x * f (x - Real.log n))) =
    (∑ n ∈ primeCutoff A, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
      (∫ x, f x * f (x - Real.log n))) := by
  symm
  apply Finset.sum_subset (primeCutoff_mono hAR)
  intro n hnR hnA
  have hn2 : 2 ≤ n := (mem_primeCutoff_iff R n).mp hnR |>.1
  have hnotlt : ¬ (n : ℝ) < Real.exp (2 * A) := by
    intro hn
    exact hnA ((mem_primeCutoff_iff A n).mpr ⟨hn2, hn⟩)
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hlog : 2 * A ≤ Real.log n :=
    (Real.le_log_iff_exp_le hnpos).mpr (le_of_not_gt hnotlt)
  rw [correlation_zero_of_two_mul_radius_le hsupport hlog, mul_zero]

/-- Enlarging the support parameter preserves the whole exact form. The archimedean and
pole terms are literally identical; only zero prime atoms are added. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ce04c597e40e711718f670053eaae46dd5c235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
