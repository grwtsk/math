# lower_discrepancy_second_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11dec718-e49e-0733-e7ef-a7f2f5452d4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1354a97a-87f3-961e-669c-e3a5fe59c172",
  "kind": "theorem",
  "lexical_name": "lower_discrepancy_second_abel",
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
  "slug": "lower-discrepancy-second-abel--4998fb74652e27efb11900a7",
  "source": {
    "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 358,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4998fb74652e27efb11900a737773e83c59073aba1a3186124b528d44acd9837",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1354a97a-87f3-961e-669c-e3a5fe59c172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_discrepancy_second_abel (A : ℝ) (f : C(ℝ, ℝ))
    (hF : ContDiff ℝ 2 (logarithmicAbelTest f))
    (hFB : logarithmicAbelTest f (2 * A) = 0)
    (hF'B : deriv (logarithmicAbelTest f) (2 * A) = 0) :
    lowerPowerDiscrepancy A f = ∫ t in (0 : ℝ)..2 * A,
      lowerAbelPrimitive A t * deriv (deriv (logarithmicAbelTest f)) t := by
  classical
  have hi := finite_second_abel_identity (lowerPowerInventory A) (fun n ↦ Real.log n)
    ArithmeticFunction.vonMangoldt (logarithmicAbelTest f) hF (2 * A)
    (fun n hn ↦ ⟨(lower_inventory_log_bounds A n hn).1.le,
      (lower_inventory_log_bounds A n hn).2.le⟩) hFB hF'B
  have hs : (∑ n ∈ lowerPowerInventory A,
      ArithmeticFunction.vonMangoldt n * logarithmicAbelTest f (Real.log n)) =
      ∑ n ∈ lowerPowerInventory A, primeWeight n * f (Real.log n) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hnp := EstimateTailReduction.mem_primeIndices_iff A n |>.mp (Finset.mem_filter.mp hn).1
    rw [logarithmic_abel_test_log f n (by omega)]
    unfold primeWeight
    ring
  simp_rw [exponential_logarithmic_abel_test] at hi
  rw [hs] at hi
  exact hi

/-- A `C¹` function vanishing on the right half-line also has a zero derivative at its endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c42f09290414d90b352cd246d303a54d94c5ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
