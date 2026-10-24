# column_at_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84092d1b-2815-6c10-3ca6-ca5cf40643c1",
  "kind": "theorem",
  "lexical_name": "column_at_quotient",
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
  "slug": "column-at-quotient--0738c6b0c142cc2274da2fd3",
  "source": {
    "blob": "8388203f3f03490221038eb6214cb8630cd378cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0738c6b0c142cc2274da2fd37fc3fca353eecfc8e29d452c8f8d78452b762635",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84092d1b-2815-6c10-3ca6-ca5cf40643c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem column_at_quotient (A : ℝ) (hA : 1 ≤ A) :
    let a := vaughanCutoff A + 1
    let K := sourceKernelCutoff A / a
    column A K = vonMangoldt a * sourcePlainWeight A ((a * K : ℕ) : ℝ) := by
  classical
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  rcases quotient_geometry A hA with ⟨ha, hK, hq, _⟩
  change 2 ≤ a at ha
  change a ≤ K at hK
  change N / K = a at hq
  have hk0 : 0 < K := by omega
  have hs : a * a ≤ N := square_adjacent_le_upper A hA
  have haN : a ≤ N := by nlinarith
  have hain : a ∈ longInventory A := Finset.mem_Ioc.mpr ⟨by omega, haN⟩
  change (∑ m ∈ longInventory A,
    vonMangoldt m * sourcePlainWeight A ((m * K : ℕ) : ℝ)) =
      vonMangoldt a * sourcePlainWeight A ((a * K : ℕ) : ℝ)
  apply Finset.sum_eq_single a
  · intro m hm hma
    have hma' : a < m := by have := (Finset.mem_Ioc.mp hm).1; omega
    have hdiv : N / K < m := by rw [hq]; exact hma'
    have hcut : N < m * K := (Nat.div_lt_iff_lt_mul hk0).1 hdiv
    rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * K) hcut, mul_zero]
  · intro hnot
    exact False.elim (hnot hain)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecoveredSourceEndpointThree/Variantc83800699d126133d50fd9210ca39ced92e9c8ad72337c638b4741c3a8ebda6e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8388203f3f03490221038eb6214cb8630cd378cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
