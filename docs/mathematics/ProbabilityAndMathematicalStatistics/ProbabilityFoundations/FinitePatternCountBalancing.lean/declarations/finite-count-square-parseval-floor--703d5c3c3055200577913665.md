# finite_count_square_parseval_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89daf593-e209-1978-3a39-16eb11997dfd",
  "kind": "theorem",
  "lexical_name": "finite_count_square_parseval_floor",
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
  "slug": "finite-count-square-parseval-floor--703d5c3c3055200577913665",
  "source": {
    "blob": "a304d369abbf8930526cc25633965886fadc9b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 120,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:703d5c3c30552005779136651ca9e30e467c8fc1cf93989273f0147b916d6bab",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89daf593-e209-1978-3a39-16eb11997dfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_count_square_parseval_floor
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (N : ℕ)
    (hq : 0 < s.card)
    (htotal : (∑ i ∈ s, counts i) = N) :
    ((N % s.card : ℕ) : ℤ) *
      ((s.card - N % s.card : ℕ) : ℤ) ≤
      (s.card : ℤ) * (∑ i ∈ s, ((counts i : ℤ) ^ 2)) -
        (N : ℤ) ^ 2 := by
  have hfloor := finite_count_square_div_mod_floor s counts N hq htotal
  have hdiv : N % s.card + s.card * (N / s.card) = N := by
    simpa [Nat.mul_comm] using Nat.mod_add_div N s.card
  have hrem : N % s.card ≤ s.card := Nat.le_of_lt (Nat.mod_lt N hq)
  have hdivZ :
      (N % s.card : ℤ) +
        (s.card : ℤ) * (N / s.card : ℤ) = (N : ℤ) := by
    exact_mod_cast hdiv
  have hsubZ :
      ((s.card - N % s.card : ℕ) : ℤ) =
        (s.card : ℤ) - (N % s.card : ℤ) := by
    exact_mod_cast (Nat.cast_sub hrem : ((s.card - N % s.card : ℕ) : ℤ) =
      (s.card : ℤ) - (N % s.card : ℤ))
  have hqZ : (0 : ℤ) ≤ (s.card : ℤ) := by positivity
  rw [← Int.natCast_div] at hfloor hdivZ
  have hmul := mul_le_mul_of_nonneg_left hfloor hqZ
  rw [hsubZ] at hmul ⊢
  have hsquare := congrArg (fun z : ℤ => z ^ 2) hdivZ
  simp only [Int.natCast_mod]
  nlinarith only [hmul, hsquare]



/-- The Parseval-ready integer discrepancy floor, transported to
rational numbers. This isolates the ring cast from empirical
pattern counting and the analytic-free Walsh energy identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a304d369abbf8930526cc25633965886fadc9b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
