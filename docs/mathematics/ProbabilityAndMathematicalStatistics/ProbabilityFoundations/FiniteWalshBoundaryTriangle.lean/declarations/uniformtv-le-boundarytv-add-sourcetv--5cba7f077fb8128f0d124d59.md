# uniformTV_le_boundaryTV_add_sourceTV

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:086b24c9-65a2-0a71-8885-05c628d7981c",
  "kind": "theorem",
  "lexical_name": "uniformTV_le_boundaryTV_add_sourceTV",
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
  "slug": "uniformtv-le-boundarytv-add-sourcetv--5cba7f077fb8128f0d124d59",
  "source": {
    "blob": "3f464e53d39b346db2eb71ae54cf2c8f09bfc876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 43,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cba7f077fb8128f0d124d597b9671a6174e3feae6273112f53e0ae999c2e724",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:086b24c9-65a2-0a71-8885-05c628d7981c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformTV_le_boundaryTV_add_sourceTV
    (roots : Finset ℕ) (source model : ℕ → ι → Bool)
    (hroots : 0 < roots.card) :
    totalVariationFromUniform roots model ≤
      categoricalTotalVariation roots source model +
        totalVariationFromUniform roots source := by
  classical
  let q : ℚ := Fintype.card (ι → Bool)
  let n : ℚ := roots.card
  have hq : 0 < q := boolCube_card_pos (ι := ι)
  have hn : 0 < n := by
    dsimp [n]
    exact_mod_cast hroots
  have h2q : 0 < 2 * q := by positivity
  have hone (a : ι → Bool) :
      |scaledPatternDeviation roots model a| ≤
        q * (|categoricalPatternCount roots model a -
                categoricalPatternCount roots source a| / n) +
        |scaledPatternDeviation roots source a| := by
    calc
      |scaledPatternDeviation roots model a| =
        |q * ((categoricalPatternCount roots model a -
                categoricalPatternCount roots source a) / n) +
              scaledPatternDeviation roots source a| := by
          exact congrArg abs (scaledDeviation_change roots source model a)
      _ ≤ |q * ((categoricalPatternCount roots model a -
                  categoricalPatternCount roots source a) / n)| +
            |scaledPatternDeviation roots source a| := abs_add_le _ _
      _ = q * (|categoricalPatternCount roots model a -
                  categoricalPatternCount roots source a| / n) +
            |scaledPatternDeviation roots source a| := by
          rw [abs_mul, abs_div, abs_of_pos hq, abs_of_pos hn]
  have hsum :
      (∑ a : ι → Bool, |scaledPatternDeviation roots model a|) ≤
        q * ((∑ a : ι → Bool,
          |categoricalPatternCount roots model a -
            categoricalPatternCount roots source a|) / n) +
        (∑ a : ι → Bool, |scaledPatternDeviation roots source a|) := by
    calc
      _ ≤ ∑ a : ι → Bool,
          (q * (|categoricalPatternCount roots model a -
              categoricalPatternCount roots source a| / n) +
           |scaledPatternDeviation roots source a|) := by
        apply Finset.sum_le_sum
        intro a _
        exact hone a
      _ = _ := by
        rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.sum_div]
  have hflip :
      (∑ a : ι → Bool,
        |categoricalPatternCount roots model a -
          categoricalPatternCount roots source a|) =
      (∑ a : ι → Bool,
        |categoricalPatternCount roots source a -
          categoricalPatternCount roots model a|) := by
    apply Finset.sum_congr rfl
    intro a _
    exact abs_sub_comm _ _
  have hcat :
      q * ((∑ a : ι → Bool,
        |categoricalPatternCount roots model a -
          categoricalPatternCount roots source a|) / n) =
        (2 * q) * categoricalTotalVariation roots source model := by
    rw [hflip]
    change q * ((∑ a : ι → Bool,
        |categoricalPatternCount roots source a -
          categoricalPatternCount roots model a|) / n) =
      (2 * q) * ((∑ a : ι → Bool,
        |categoricalPatternCount roots source a -
          categoricalPatternCount roots model a|) / (2 * n))
    field_simp [ne_of_gt hn]
  have hnum :
      (∑ a : ι → Bool, |scaledPatternDeviation roots model a|) ≤
        (2 * q) * categoricalTotalVariation roots source model +
          (∑ a : ι → Bool, |scaledPatternDeviation roots source a|) := by
    calc
      _ ≤ q * ((∑ a : ι → Bool,
          |categoricalPatternCount roots model a -
            categoricalPatternCount roots source a|) / n) +
        (∑ a : ι → Bool, |scaledPatternDeviation roots source a|) := hsum
      _ = _ := by rw [hcat]
  calc
    totalVariationFromUniform roots model =
        (∑ a : ι → Bool, |scaledPatternDeviation roots model a|) /
          (2 * q) := rfl
    _ ≤ ((2 * q) * categoricalTotalVariation roots source model +
         (∑ a : ι → Bool, |scaledPatternDeviation roots source a|)) /
           (2 * q) :=
      div_le_div_of_nonneg_right hnum (le_of_lt h2q)
    _ = categoricalTotalVariation roots source model +
          totalVariationFromUniform roots source := by
      unfold totalVariationFromUniform
      field_simp [ne_of_gt h2q]
      ring

/-- Typed finite Walsh-to-boundary error return. All source labels
agree with the model away from the counted exceptional root set.
Only the source's nonempty Walsh energy enters the square-root term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f464e53d39b346db2eb71ae54cf2c8f09bfc876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
