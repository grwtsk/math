# weightedContribution_eq_finiteWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c91e4ba1-4376-b7bf-9da0-31de8d5e7927",
  "kind": "theorem",
  "lexical_name": "weightedContribution_eq_finiteWeight",
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
  "slug": "weightedcontribution-eq-finiteweight--434aa7d727d572a5efcab861",
  "source": {
    "blob": "ff7a54ab935c2fec7644c039196d0bca32c91eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:434aa7d727d572a5efcab86194bdf915f9ac6de43bc4cdebde62fb912f3a7985",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c91e4ba1-4376-b7bf-9da0-31de8d5e7927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedContribution_eq_finiteWeight (A : ℝ) (f : ArithmeticFunction ℝ)
    (hf : f 1 = 0) : weightedContribution A f =
      ∑ n ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, f n * sourceFiniteWeight A n := by
  have hsub : Cutoff.primeIndices A ⊆ Icc 1 ⌊Real.exp (2 * A)⌋₊ := by
    intro n hn
    have hn' := (mem_Icc.mp (mem_filter.mp hn).1)
    exact mem_Icc.mpr ⟨by omega, hn'.2⟩
  calc
    _ = ∑ n ∈ Cutoff.primeIndices A, f n * sourceFiniteWeight A n := by
      apply sum_congr rfl
      intro n hn
      rw [sourceFiniteWeight, if_pos ((Cutoff.mem_primeIndices_iff A n).mp hn).2]
      ring
    _ = _ := sum_subset hsub (fun n hn hnot ↦ by
      by_cases hn1 : n = 1
      · simp [hn1, hf]
      · have hn2 : 2 ≤ n := by have := (mem_Icc.mp hn).1; omega
        have hcut : ¬(n : ℝ) < Real.exp (2 * A) := by
          intro h
          exact hnot ((Cutoff.mem_primeIndices_iff A n).mpr ⟨hn2, h⟩)
        simp [sourceFiniteWeight, hcut])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff7a54ab935c2fec7644c039196d0bca32c91eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
