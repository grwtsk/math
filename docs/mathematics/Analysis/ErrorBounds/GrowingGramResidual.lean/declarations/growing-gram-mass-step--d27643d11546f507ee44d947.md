# growing_gram_mass_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0b07997-5ca2-541e-0f73-12e38953382b",
  "kind": "theorem",
  "lexical_name": "growing_gram_mass_step",
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
  "slug": "growing-gram-mass-step--d27643d11546f507ee44d947",
  "source": {
    "blob": "affebe081e0ae6b3697a7a38ff4a97babb758edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 246,
    "path": "GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d27643d11546f507ee44d9471532da19349119e90d5f6bff2586061bdf05f9ee",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b07997-5ca2-541e-0f73-12e38953382b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem growing_gram_mass_step (weight : ∀ n, I n → ℝ)
    (source : ∀ n, I n × I n → ℝ) (feature : ∀ n, K n → I n → ℝ)
    (gain : ∀ n, I (n + 1) → I n → ℝ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * |gain n i j|) ≤ r * weight n j)
    (modelUpdate : ∀ n p, gram (feature (n + 1)) p =
      transportMatrix (gain n) (gram (feature n)) p + injection n p) (n : ℕ) :
    gramResidualMass weight source feature (n + 1) ≤
      (r * r) * gramResidualMass weight source feature n +
        channelMass (pairWeight (weight (n + 1))) (gramMismatch gain source injection n) := by
  exact rectangular_mass_step (pairWeight (weight n)) (pairWeight (weight (n + 1)))
    (fun p => source n p - gram (feature n) p)
    (fun p => source (n + 1) p - gram (feature (n + 1)) p)
    (gramMismatch gain source injection n) (rectangularLift (gain n)) (r * r)
    (fun p => mul_nonneg (weightsNonnegative (n + 1) p.1) (weightsNonnegative (n + 1) p.2))
    (rectangular_residual_evolution (gain n) (source n) (gram (feature n))
      (source (n + 1)) (gram (feature (n + 1))) (injection n) (modelUpdate n))
    (rectangular_column_bound (weight n) (weight (n + 1)) (gain n) r
      (weightsNonnegative n) (weightsNonnegative (n + 1)) rateNonnegative (columnBound n))

/-- Changing both finite types does not change the fixed-witness logic.
The readout tail, full next-stage mismatch and same-stage consumer bounds are mandatory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `affebe081e0ae6b3697a7a38ff4a97babb758edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
