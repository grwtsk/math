# goldbachCount_pos_of_frequency_prefix_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:404ad3d7-2515-955d-e8fe-6859bc765311",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_frequency_prefix_bounds",
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
  "slug": "goldbachcount-pos-of-frequency-prefix-bounds--fd39b824d16accecdff16fdf",
  "source": {
    "blob": "c3a58baf8a462dd2c4a6fd6be73a4868cb569788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd39b824d16accecdff16fdfc89bb277886522d9375b80a3b526741dd212d848",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:404ad3d7-2515-955d-e8fe-6859bc765311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_frequency_prefix_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin : goldbachFrequencyMajorErrorBudget Q N B + minorError < modelLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_arc_model_bounds hscale (goldbachProgressionArcModel N)
    (goldbachFrequencyArcErrorBudget Q N B) modelLower minorError
  · exact hmodel
  · intro aq haq
    exact norm_goldbachProgressionArcResidual_le_frequency_budget B hp haq
  · exact hminor
  · exact hmargin

/-- Universal tail consumer. It does not supply finite coverage below `N0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a58baf8a462dd2c4a6fd6be73a4868cb569788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
