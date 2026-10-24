# modulus_residual_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b51be60-1e94-b3b3-d551-72f2ae28506c",
  "kind": "theorem",
  "lexical_name": "modulus_residual_step",
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
  "slug": "modulus-residual-step--d96755f56c1cc9b1df7e8f93",
  "source": {
    "blob": "c109fc6c3687a5a15667fa0957e51f48d09239bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 118,
    "path": "GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d96755f56c1cc9b1df7e8f93618f07c3a712b3dffc57eada8683e5a465d6d528",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b51be60-1e94-b3b3-d551-72f2ae28506c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modulus_residual_step {ι τ : Type*} [Fintype ι] [Fintype τ]
    (weight : ι → ℝ) (nextWeight : τ → ℝ) (gain : τ → ι → ℂ)
    (source model : ι × ι → ℂ) (nextSource nextModel injection : τ × τ → ℂ) (r : ℝ)
    (weightsNonnegative : ∀ j, 0 ≤ weight j)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ j, (∑ i, nextWeight i * ‖gain i j‖) ≤ r * weight j)
    (modelUpdate : ∀ p, nextModel p = complexTransport gain model p + injection p) :
    modulusMass (pairWeight nextWeight) (fun p => nextSource p - nextModel p) ≤
      (r * r) * modulusMass (pairWeight weight) (fun p => source p - model p) +
        modulusMass (pairWeight nextWeight)
          (fun p => nextSource p - complexTransport gain source p - injection p) := by
  have evolution := funext
    (complex_residual_evolution gain source model nextSource nextModel injection modelUpdate)
  rw [evolution]
  apply (modulusMass_add_le (pairWeight nextWeight)
    (complexTransport gain (fun p => source p - model p))
    (fun p => nextSource p - complexTransport gain source p - injection p)
    (fun p => mul_nonneg (nextWeightsNonnegative p.1) (nextWeightsNonnegative p.2))).trans
  apply add_le_add_left
  rw [complexTransport_eq_lift]
  exact rectangular_modulus_bound (pairWeight weight) (pairWeight nextWeight)
    (conjugateLift gain) (fun p => source p - model p) (r * r)
    (fun p => mul_nonneg (nextWeightsNonnegative p.1) (nextWeightsNonnegative p.2))
    (modulus_lift_column_bound weight nextWeight gain r weightsNonnegative
      nextWeightsNonnegative rateNonnegative columnBound)

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Finite source-to-Gram comparison. Every hypothesis is local to N,...,N+k.
The test is the terminal representation of the same supplied source witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c109fc6c3687a5a15667fa0957e51f48d09239bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
