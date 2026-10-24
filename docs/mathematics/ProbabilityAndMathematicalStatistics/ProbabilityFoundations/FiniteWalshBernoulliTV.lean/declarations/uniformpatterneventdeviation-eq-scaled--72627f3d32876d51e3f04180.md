# uniformPatternEventDeviation_eq_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:effbd356-ebcf-84bc-a128-f54f4543a304",
  "kind": "theorem",
  "lexical_name": "uniformPatternEventDeviation_eq_scaled",
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
  "slug": "uniformpatterneventdeviation-eq-scaled--72627f3d32876d51e3f04180",
  "source": {
    "blob": "24be06dc955cfb5f510992f3ec6db28c44807c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 259,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72627f3d32876d51e3f04180cf1703fb110f452440a43f3fce9131bd5c5c9c0a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:effbd356-ebcf-84bc-a128-f54f4543a304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformPatternEventDeviation_eq_scaled
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (event : (ι → Bool) → Bool) :
    uniformPatternEventDeviation roots hroots x event =
      eventSignedSum (sourceScaledDefectReal roots hroots x) event /
        (2 : ℝ) ^ Fintype.card ι := by
  classical
  have hpos : 0 < (2 : ℝ) ^ Fintype.card ι := by positivity
  have hterm (a : ι → Bool) :
      ((empiricalPattern roots (Finset.univ : Finset ι) x a : ℚ) : ℝ) -
        1 / (2 : ℝ) ^ Fintype.card ι =
      sourceScaledDefectReal roots hroots x a /
        (2 : ℝ) ^ Fintype.card ι := by
    unfold sourceScaledDefectReal
    push_cast
    field_simp [ne_of_gt hpos]
    ring
  unfold uniformPatternEventDeviation eventSignedSum
  calc
    (∑ a : ι → Bool,
      if event a then
        ((empiricalPattern roots (Finset.univ : Finset ι) x a : ℚ) : ℝ) -
          1 / (2 : ℝ) ^ Fintype.card ι
      else 0) =
        ∑ a : ι → Bool,
          (if event a then sourceScaledDefectReal roots hroots x a else 0) /
            (2 : ℝ) ^ Fintype.card ι := by
      apply Finset.sum_congr rfl
      intro a ha
      cases he : event a <;> simp [he, hterm a]
    _ = (∑ a : ι → Bool,
          if event a then sourceScaledDefectReal roots hroots x a else 0) /
            (2 : ℝ) ^ Fintype.card ι := by
      rw [Finset.sum_div]

/-- Total variation to the fair Boolean product law: the maximum over
ALL Boolean events of the actual empirical-vs-uniform mass defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24be06dc955cfb5f510992f3ec6db28c44807c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
