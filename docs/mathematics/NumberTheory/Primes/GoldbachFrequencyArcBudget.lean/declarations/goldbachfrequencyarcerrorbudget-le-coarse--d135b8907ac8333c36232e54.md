# goldbachFrequencyArcErrorBudget_le_coarse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2d734bd-3e17-ad22-44e0-79c71a593d68",
  "kind": "theorem",
  "lexical_name": "goldbachFrequencyArcErrorBudget_le_coarse",
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
  "slug": "goldbachfrequencyarcerrorbudget-le-coarse--d135b8907ac8333c36232e54",
  "source": {
    "blob": "c3a58baf8a462dd2c4a6fd6be73a4868cb569788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d135b8907ac8333c36232e54436fad5b5c3b7041a78d3fc65464fd8a12898cf7",
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

Occurrence: `result:c2d734bd-3e17-ad22-44e0-79c71a593d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachFrequencyArcErrorBudget_le_coarse
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    {aq : ℕ × ℕ}
    (hnonneg : ∀ r ∈ Finset.range aq.2,
      0 ≤ goldbachPrefixResidueBudget Q N B aq r) :
    goldbachFrequencyArcErrorBudget Q N B aq ≤
      goldbachProgressionArcErrorBudget Q N aq (goldbachPrefixResidueBudget Q N B) := by
  let C := goldbachProgressionPointwiseErrorBudget N aq (goldbachPrefixResidueBudget Q N B)
  have hC : 0 ≤ C := goldbachProgressionPointwiseErrorBudget_nonneg hnonneg
  have hmeasure : volume (goldbachClippedRationalArc Q N aq) < ∞ :=
    (measure_mono Set.inter_subset_left).trans_lt measure_Ioc_lt_top
  calc
    goldbachFrequencyArcErrorBudget Q N B aq ≤
        ∫ _x in goldbachClippedRationalArc Q N aq, C := by
      apply setIntegral_mono_on
        (integrableOn_goldbachClippedFrequencyEnvelope Q N B aq)
        (integrableOn_const (ne_of_lt hmeasure))
        (measurable_goldbachClippedRationalArc Q N aq)
      intro x hx
      exact min_le_left _ _
    _ = C * volume.real (goldbachClippedRationalArc Q N aq) := by
      rw [setIntegral_const]
      simp [smul_eq_mul, mul_comm]
    _ ≤ C * (6 * goldbachRationalArcRadius Q N aq.2) :=
      mul_le_mul_of_nonneg_left (measureReal_goldbachClippedRationalArc_le Q N aq) hC
    _ = goldbachProgressionArcErrorBudget Q N aq (goldbachPrefixResidueBudget Q N B) := rfl

/-- Domination holds after summing every arc, using the unchanged supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a58baf8a462dd2c4a6fd6be73a4868cb569788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
