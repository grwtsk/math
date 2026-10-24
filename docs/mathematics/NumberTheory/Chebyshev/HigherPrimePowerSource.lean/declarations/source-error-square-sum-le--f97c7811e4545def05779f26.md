# source_error_square_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0bd4625-84e9-9436-10de-973aed273a9c",
  "kind": "theorem",
  "lexical_name": "source_error_square_sum_le",
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
  "slug": "source-error-square-sum-le--f97c7811e4545def05779f26",
  "source": {
    "blob": "648ba8cc9873e647af70dd079847d85f7eea27f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 202,
    "path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f97c7811e4545def05779f262798ee8d312c578d5f1bf0e0f7a5899dd77c6a55",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0bd4625-84e9-9436-10de-973aed273a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_error_square_sum_le (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n) :
    (∑ n ∈ S, (squareIncrement n - (2 * (n : ℝ) + 1)) ^ 2) ≤
      2 * (∑ n ∈ S, (squarePrimeIncrement n - (2 * (n : ℝ) + 1)) ^ 2) +
        2 * (∑ n ∈ S, higherPrimePowerMass n ^ 2) := by
  have hsum :
      (∑ n ∈ S, ((squareIncrement n - (2 * (n : ℝ) + 1)) - higherPrimePowerMass n) ^ 2) =
        ∑ n ∈ S, (squarePrimeIncrement n - (2 * (n : ℝ) + 1)) ^ 2 := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [prime_error_eq n (hS n hn)]
  have h := sum_sq_le_twice_sub_sq S
    (fun n ↦ squareIncrement n - (2 * (n : ℝ) + 1)) higherPrimePowerMass
  rw [hsum] at h
  exact h

/-- The actual correction-square budget is bounded by explicit logarithmic quantities.
This finite inequality does not assert a little-o estimate for either arithmetic error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ba8cc9873e647af70dd079847d85f7eea27f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
