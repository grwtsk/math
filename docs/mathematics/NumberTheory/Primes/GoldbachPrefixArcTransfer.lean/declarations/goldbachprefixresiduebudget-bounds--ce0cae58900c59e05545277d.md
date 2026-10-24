# goldbachPrefixResidueBudget_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:266bcbad-bd51-27d7-e8ef-c63b57a132ad",
  "kind": "theorem",
  "lexical_name": "goldbachPrefixResidueBudget_bounds",
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
  "slug": "goldbachprefixresiduebudget-bounds--ce0cae58900c59e05545277d",
  "source": {
    "blob": "9ba17d242bb49071bd71996f149ef7c9c4a74773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce0cae58900c59e05545277da68d592cbc0c68ff2739b72e3d063c8f71e9fccd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:266bcbad-bd51-27d7-e8ef-c63b57a132ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachPrefixResidueBudget_bounds
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    {aq : ℕ × ℕ} (haq : aq ∈ goldbachRationalArcIndices Q)
    {r : ℕ} (hr : r ∈ Finset.range aq.2) :
    0 ≤ goldbachPrefixResidueBudget Q N B aq r ∧
      ∀ x ∈ goldbachClippedRationalArc Q N aq,
        ‖goldbachResidueProgressionDiscrepancy N aq.2 r
          (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            goldbachPrefixResidueBudget Q N B aq r := by
  have hmem := mem_goldbachRationalArcIndices.mp haq
  by_cases hc : aq.2.Coprime r
  · obtain ⟨hB, hprefix⟩ := hp aq.2 hmem.2.2.1 hmem.2.1 r
      (Finset.mem_range.mp hr) hc
    simp only [goldbachPrefixResidueBudget, if_pos hc]
    refine ⟨mul_nonneg hB (goldbachPrefixArcLoss_nonneg Q N aq.2), ?_⟩
    intro x hx
    exact norm_goldbachResidueProgressionDiscrepancy_on_arc_of_prefix hB hprefix hx
  · simp only [goldbachPrefixResidueBudget, if_neg hc]
    refine ⟨goldbachResiduePrimeLogTotal_nonneg N aq.2 r, ?_⟩
    intro x hx
    exact norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime N aq.2 r hc _

/-- Integrated major-error budget in the unchanged PR #379 interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba17d242bb49071bd71996f149ef7c9c4a74773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
