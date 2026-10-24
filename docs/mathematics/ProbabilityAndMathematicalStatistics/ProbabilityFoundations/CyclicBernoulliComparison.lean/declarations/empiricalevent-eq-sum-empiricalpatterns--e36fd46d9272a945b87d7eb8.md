# empiricalEvent_eq_sum_empiricalPatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a53aba4e-79d4-b53f-cb83-9cbd06e66d68",
  "kind": "theorem",
  "lexical_name": "empiricalEvent_eq_sum_empiricalPatterns",
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
  "slug": "empiricalevent-eq-sum-empiricalpatterns--e36fd46d9272a945b87d7eb8",
  "source": {
    "blob": "4a4be79226cbaf3133038e1c2564a076e1be8bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 110,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e36fd46d9272a945b87d7eb84de045630fddd22eecc30c4b5dd830e909f6fbea",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a53aba4e-79d4-b53f-cb83-9cbd06e66d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empiricalEvent_eq_sum_empiricalPatterns
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (event : (ι → Bool) → Bool) :
    empiricalEvent roots x event =
      ∑ a : ι → Bool,
        if event a then
          (((empiricalPattern roots (Finset.univ : Finset ι) x a : ℚ) : ℝ))
        else 0 := by
  classical
  have hq :
      (∑ a : ι → Bool,
        if event a then
          empiricalPattern roots (Finset.univ : Finset ι) x a
        else (0 : ℚ)) =
      (∑ n ∈ roots, if event (x n) then (1 : ℚ) else 0) /
        (roots.card : ℚ) := by
    unfold empiricalPattern
    calc
      (∑ a : ι → Bool,
        if event a then
          patternCountOn roots (Finset.univ : Finset ι) x a /
            (roots.card : ℚ)
        else 0) =
        (∑ a : ι → Bool,
          if event a then
            patternCountOn roots (Finset.univ : Finset ι) x a
          else 0) / (roots.card : ℚ) := by
          rw [Finset.sum_div]
          apply Finset.sum_congr rfl
          intro a ha
          by_cases he : event a <;> simp [he]
      _ = _ := by
          rw [sum_patternCountOn_event_eq_rootCount]
  unfold empiricalEvent eventCount
  exact_mod_cast hq.symm

/-- Fair Bernoulli event mass on the complete Boolean pattern alphabet.
This probability is specified by the uniform law, not by fictitious roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4be79226cbaf3133038e1c2564a076e1be8bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
