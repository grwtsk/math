# finite_count_square_div_mod_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77403523-e77c-07a6-8be8-154259cb4267",
  "kind": "theorem",
  "lexical_name": "finite_count_square_div_mod_floor",
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
  "slug": "finite-count-square-div-mod-floor--9522002df5a9b9fdfb799e15",
  "source": {
    "blob": "a304d369abbf8930526cc25633965886fadc9b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 79,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9522002df5a9b9fdfb799e156e883129a799e735eebba0c84b32d1f5bc2d7329",
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

Occurrence: `result:77403523-e77c-07a6-8be8-154259cb4267`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_count_square_div_mod_floor
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (N : ℕ)
    (hq : 0 < s.card)
    (htotal : (∑ i ∈ s, counts i) = N) :
    ((s.card - N % s.card : ℕ) : ℤ) *
        ((N / s.card : ℤ) ^ 2) +
      (N % s.card : ℤ) *
        (((N / s.card : ℕ) : ℤ) + 1) ^ 2 ≤
      ∑ i ∈ s, ((counts i : ℤ) ^ 2) := by
  have hbase := finite_count_square_balancing s counts (N / s.card)
  have hdiv : N % s.card + s.card * (N / s.card) = N := by
    simpa [Nat.mul_comm] using Nat.mod_add_div N s.card
  have hrem : N % s.card ≤ s.card := Nat.le_of_lt (Nat.mod_lt N hq)
  have htotalZ :
      (∑ i ∈ s, (counts i : ℤ)) = (N : ℤ) := by
    exact_mod_cast htotal
  rw [htotalZ] at hbase
  have hdivZ :
      ((N % s.card : ℕ) : ℤ) +
        (s.card : ℤ) * ((N / s.card : ℕ) : ℤ) = (N : ℤ) := by
    exact_mod_cast hdiv
  have hsubZ :
      (((s.card - N % s.card : ℕ) : ℤ)) =
        (s.card : ℤ) - (N % s.card : ℤ) := by
    exact_mod_cast (Nat.cast_sub hrem : ((s.card - N % s.card : ℕ) : ℤ) =
      (s.card : ℤ) - (N % s.card : ℤ))
  rw [← Int.natCast_div]
  simp only [Int.natCast_mod] at hdivZ
  calc
    _ = (2 * ((N / s.card : ℕ) : ℤ) + 1) * (N : ℤ) -
        (s.card : ℤ) * (((N / s.card : ℕ) : ℤ) * (((N / s.card : ℕ) : ℤ) + 1)) := by
      rw [hsubZ]
      linear_combination (2 * ((N / s.card : ℕ) : ℤ) + 1) * hdivZ
    _ ≤ _ := hbase



/-- The sharp quadratic integer-count discrepancy bound in its
Parseval-ready form, without any probabilistic or arithmetic premise.
The positive number q is the cardinality of the finite index set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a304d369abbf8930526cc25633965886fadc9b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
