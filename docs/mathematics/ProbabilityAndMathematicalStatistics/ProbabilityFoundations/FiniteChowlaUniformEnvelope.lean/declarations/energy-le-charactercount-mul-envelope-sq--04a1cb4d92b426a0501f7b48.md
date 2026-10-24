# energy_le_characterCount_mul_envelope_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7f2891e-150e-2b5c-c0fc-ddee4f7b0c32",
  "kind": "theorem",
  "lexical_name": "energy_le_characterCount_mul_envelope_sq",
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
  "slug": "energy-le-charactercount-mul-envelope-sq--04a1cb4d92b426a0501f7b48",
  "source": {
    "blob": "7d22eb97829eb8257c70e21a0ff9c08843ced733",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 72,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04a1cb4d92b426a0501f7b48d60cdc067095ff142f316a8ec01210e9b1632d0c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f2891e-150e-2b5c-c0fc-ddee4f7b0c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_le_characterCount_mul_envelope_sq
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (epsilon : ℚ) (henvelope : AllOrderCorrelationEnvelope roots x epsilon) :
    nonemptyCorrelationEnergy roots x ≤
      (((Finset.univ : Finset (Finset ι)).erase ∅).card : ℚ) *
        epsilon ^ 2 := by
  classical
  let K : Finset (Finset ι) :=
    (Finset.univ : Finset (Finset ι)).erase ∅
  have hterm (S : Finset ι) (hS : S ∈ K) :
      (sourceCorrelation roots S x) ^ 2 ≤ epsilon ^ 2 := by
    have hnonempty : S ≠ ∅ := by
      exact (Finset.mem_erase.mp hS).1
    have hpoint : |sourceCorrelation roots S x| ≤ epsilon :=
      henvelope.2 S hnonempty
    have hsq :
        |sourceCorrelation roots S x| ^ 2 ≤ epsilon ^ 2 :=
      (sq_le_sq₀ (abs_nonneg _) henvelope.1).2 hpoint
    simpa only [sq_abs] using hsq
  calc
    nonemptyCorrelationEnergy roots x =
        ∑ S ∈ K, (sourceCorrelation roots S x) ^ 2 := rfl
    _ ≤ ∑ S ∈ K, epsilon ^ 2 := by
      apply Finset.sum_le_sum
      intro S hS
      exact hterm S hS
    _ = (K.card : ℚ) * epsilon ^ 2 := by simp

/-- Exactly 2^k-1, not k, signed product correlations are required
when the full Boolean window has k distinct coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d22eb97829eb8257c70e21a0ff9c08843ced733` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
