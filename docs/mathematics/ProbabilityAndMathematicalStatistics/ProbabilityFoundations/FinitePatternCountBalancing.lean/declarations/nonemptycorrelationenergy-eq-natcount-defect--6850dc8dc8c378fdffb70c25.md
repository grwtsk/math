# nonemptyCorrelationEnergy_eq_natCount_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afd59274-1d25-18d3-6772-6a2303ad8b23",
  "kind": "theorem",
  "lexical_name": "nonemptyCorrelationEnergy_eq_natCount_defect",
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
  "slug": "nonemptycorrelationenergy-eq-natcount-defect--6850dc8dc8c378fdffb70c25",
  "source": {
    "blob": "a304d369abbf8930526cc25633965886fadc9b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 245,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6850dc8dc8c378fdffb70c25b054f17c4db16a3ed82c6dd84fe5932f44757b8a",
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

Occurrence: `result:afd59274-1d25-18d3-6772-6a2303ad8b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonemptyCorrelationEnergy_eq_natCount_defect
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (hroots : 0 < roots.card) :
    nonemptyCorrelationEnergy roots x =
      ((Fintype.card (ι → Bool) : ℚ) *
          (∑ a : ι → Bool,
            (fullPatternNatCount roots x a : ℚ) ^ 2) -
        (roots.card : ℚ) ^ 2) / (roots.card : ℚ) ^ 2 := by
  classical
  have hq : (Fintype.card (ι → Bool) : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt (Fintype.card_pos (α := ι → Bool)))
  have hN : (roots.card : ℚ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt hroots
  have htotal : (∑ a : ι → Bool,
      (fullPatternNatCount roots x a : ℚ)) = (roots.card : ℚ) := by
    exact_mod_cast fullPatternNatCount_total roots x
  have hchi := chiSquareAgainstUniform_eq_energy roots x hroots
  rw [← hchi]
  unfold chiSquareAgainstUniform scaledPatternDeviation
  simp_rw [empiricalPattern_eq_natCount_div]
  have hexpand (a : ι → Bool) :
      ((Fintype.card (ι → Bool) : ℚ) *
          ((fullPatternNatCount roots x a : ℚ) / (roots.card : ℚ)) - 1) ^ 2 =
      ((Fintype.card (ι → Bool) : ℚ) ^ 2 / (roots.card : ℚ) ^ 2) *
          (fullPatternNatCount roots x a : ℚ) ^ 2 -
        (2 * (Fintype.card (ι → Bool) : ℚ) / (roots.card : ℚ)) *
          (fullPatternNatCount roots x a : ℚ) + 1 := by ring
  simp_rw [hexpand]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  rw [← Finset.mul_sum, ← Finset.mul_sum, htotal]
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  field_simp [hN, hq]
  ring


/-- The SHARP finite-sample energy floor. The remainder r is the
exact Euclidean remainder of the number of sampled roots modulo
the complete Boolean cube cardinality q=2^|ι|. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a304d369abbf8930526cc25633965886fadc9b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
