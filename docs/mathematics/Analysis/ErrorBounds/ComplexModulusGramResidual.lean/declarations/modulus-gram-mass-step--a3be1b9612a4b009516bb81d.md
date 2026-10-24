# modulus_gram_mass_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4ef80e1-bfb0-1d12-8177-a679f306eb15",
  "kind": "theorem",
  "lexical_name": "modulus_gram_mass_step",
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
  "slug": "modulus-gram-mass-step--a3be1b9612a4b009516bb81d",
  "source": {
    "blob": "50f2ce40a11d73bb68f0793b49f2d3d470b63396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 209,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3be1b9612a4b009516bb81d1a334a1a64c9a10cecbf3875f9defc7e7a8490b0",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ef80e1-bfb0-1d12-8177-a679f306eb15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modulus_gram_mass_step (weight : ∀ n, I n → ℝ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (r : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * ‖gain n i j‖) ≤ r * weight n j)
    (modelUpdate : ∀ n p, complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p + injection n p) (n : ℕ) :
    modulusResidualMass weight source feature (n + 1) ≤
      (r * r) * modulusResidualMass weight source feature n +
        modulusMass (pairWeight (weight (n + 1))) (complexMismatch gain source injection n) := by
  have evolution := funext (complex_residual_evolution (gain n) (source n)
    (complexGram (feature n)) (source (n + 1)) (complexGram (feature (n + 1)))
    (injection n) (modelUpdate n))
  unfold modulusResidualMass
  rw [evolution]
  apply (modulusMass_add_le (pairWeight (weight (n + 1)))
    (complexTransport (gain n) (fun p => source n p - complexGram (feature n) p))
    (complexMismatch gain source injection n)
    (fun p => mul_nonneg (weightsNonnegative (n + 1) p.1)
      (weightsNonnegative (n + 1) p.2))).trans
  apply add_le_add_left
  rw [complexTransport_eq_lift]
  exact rectangular_modulus_bound (pairWeight (weight n)) (pairWeight (weight (n + 1)))
    (conjugateLift (gain n)) (fun p => source n p - complexGram (feature n) p) (r * r)
    (fun p => mul_nonneg (weightsNonnegative (n + 1) p.1) (weightsNonnegative (n + 1) p.2))
    (modulus_lift_column_bound (weight n) (weight (n + 1)) (gain n) r
      (weightsNonnegative n) (weightsNonnegative (n + 1)) rateNonnegative (columnBound n))

/-- The same fixed-witness exclusion with weaker, phase-insensitive modulus premises.
Arithmetic source identification, update, complete mismatch decay and tail decay remain inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f2ce40a11d73bb68f0793b49f2d3d470b63396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
