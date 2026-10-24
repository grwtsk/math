# prime_free_card_mul_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c6849eb-1110-1cbf-c39a-6215ab0c26f6",
  "kind": "theorem",
  "lexical_name": "prime_free_card_mul_sq_le",
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
  "slug": "prime-free-card-mul-sq-le--bdaf5572b95252c37d1601f1",
  "source": {
    "blob": "86278ca72089e9548adc0c70ad99f03a0146e742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdaf5572b95252c37d1601f14c592f8d4573f5a054a32351554d2a253b4d78a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c6849eb-1110-1cbf-c39a-6215ab0c26f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_free_card_mul_sq_le (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n)
    (A : ℕ → ℝ) (margin : ℝ) (hm : 0 ≤ margin)
    (hmargin : ∀ n ∈ S, margin ≤ A n - squareCorrectionBudget n) :
    (((S.filter (fun n => squareCount n = 0)).card : ℕ) : ℝ) * margin ^ 2 ≤
      ∑ n ∈ S, (squareIncrement n - A n) ^ 2 := by
  apply GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget.card_mul_sq_le
    S (S.filter (fun n => squareCount n = 0))
    (fun n => squareIncrement n - A n) margin (Finset.filter_subset _ _) hm
  intro n hn
  have hmem := Finset.mem_filter.mp hn
  exact (hmargin n hmem.1).trans
    (prime_free_forces_error n (hS n hmem.1) (A n) hmem.2)

/-- A strict total square budget below one failure cost rules out every exception in this finite set.
Neither a density-one estimate nor equality at the threshold satisfies this premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86278ca72089e9548adc0c70ad99f03a0146e742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
