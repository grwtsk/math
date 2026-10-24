# higher_prime_weight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5910af69a72a3114d884d41b135dc1dd410b97a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7a8e86a-5e81-e8b1-e85f-db7557738b13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33357ae4-306c-7c60-4d27-f8856febe9cc",
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
  "slug": "higher-prime-weight-le--734bb44fdb00bb7f8c1b5bb8",
  "source": {
    "blob": "5910af69a72a3114d884d41b135dc1dd410b97a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 152,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:734bb44fdb00bb7f8c1b5bb87c8bc4e0d43c114afa2c54962ccefc0695b7baf9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33357ae4-306c-7c60-4d27-f8856febe9cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–170.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5910af69a72a3114d884d41b135dc1dd410b97a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
