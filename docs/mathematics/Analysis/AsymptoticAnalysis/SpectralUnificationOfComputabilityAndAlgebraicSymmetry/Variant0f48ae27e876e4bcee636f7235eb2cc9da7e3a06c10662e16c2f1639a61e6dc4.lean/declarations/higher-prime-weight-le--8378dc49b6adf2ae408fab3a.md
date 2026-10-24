# higher_prime_weight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2954757-02e7-afbc-684d-fa4dc70ab39e",
  "kind": "theorem",
  "lexical_name": "higher_prime_weight_le",
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
  "slug": "higher-prime-weight-le--8378dc49b6adf2ae408fab3a",
  "source": {
    "blob": "a7939df0d8a09d8169209dce3167045ebe082a49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 160,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8378dc49b6adf2ae408fab3ae39c5a17e1368a24d9615daff999db8ebab2e86a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2954757-02e7-afbc-684d-fa4dc70ab39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem higher_prime_weight_le (p : Nat.Primes) (k : ℕ) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ (k + 3) ≤
      4 * (p : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ k := by
  have hp : (1 : ℝ) ≤ p := by exact_mod_cast p.prop.one_le
  have hs : 0 < Real.sqrt (p : ℝ) := by positivity
  calc
    _ = (Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3) *
        (Real.sqrt (p : ℝ))⁻¹ ^ k := by
      rw [pow_add, inv_pow]
      ring
    _ ≤ (4 * (p : ℝ) ^ (-5 / 4 : ℝ)) * (3 / 4 : ℝ) ^ k := by
      apply mul_le_mul
      · exact log_div_sqrt_cube_le p
      · exact pow_le_pow_left₀ (by positivity) (prime_inv_sqrt_le_three_quarters p) k
      · positivity
      · positivity

/-- A geometric majorant and the convergent `5/4` prime p-series bound all
exponents at least three, without any cancellation hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7939df0d8a09d8169209dce3167045ebe082a49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
