# goldbachCount_pos_of_frequency_signed_minor_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ee7a2ab-c47f-069f-5332-39e8a1087639",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_frequency_signed_minor_lower",
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
  "slug": "goldbachcount-pos-of-frequency-signed-minor-lower--819e6c684fdf92c1477a9ba9",
  "source": {
    "blob": "090b9b5e9658c4b5042fd4c1cdfba17e967fc855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:819e6c684fdf92c1477a9ba9ff9fadac3148df2cbb80851d8455baf061276e4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ee7a2ab-c47f-069f-5332-39e8a1087639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_frequency_signed_minor_lower
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (L T : ℝ)
    (hmodel : L ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : -T ≤ (goldbachRationalMinorContribution Q N).re)
    (hmargin : goldbachFrequencyMajorErrorBudget Q N B + T < L) :
    0 < goldbachCount N := by
  apply (goldbachLogMass_pos_iff_count_pos N).mp
  have h := mass_lower_of_signed_minor_lower
    (goldbachProgressionModel_add_residual_add_minor hscale) hmodel
    (norm_goldbachProgressionResidualSum_le_frequency B hp) hminor
  linarith

/-- Every even target above one cutoff is retained. No finite coverage or
actual directional minor estimate is supplied by this wrapper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090b9b5e9658c4b5042fd4c1cdfba17e967fc855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
