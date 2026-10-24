# explicit_psi_theta_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:131b9319-d439-9e6a-a539-069f52fe8dcc",
  "kind": "theorem",
  "lexical_name": "explicit_psi_theta_bound",
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
  "slug": "explicit-psi-theta-bound--c5ac2a2c3bfaff97ebd45d10",
  "source": {
    "blob": "80a1fd27beab72170d85383e794ee2e2ec55d9f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variant567375d08e52a826f0e6a55398acc98664a15dc09fb3797e19c2c7a0d7b13f36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ac2a2c3bfaff97ebd45d10ba97a91243d99032c7a3915f0ff2f08c4cf1aad5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variant567375d08e52a826f0e6a55398acc98664a15dc09fb3797e19c2c7a0d7b13f36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:131b9319-d439-9e6a-a539-069f52fe8dcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_psi_theta_bound (x : ℝ) :
    Chebyshev.psi x - Chebyshev.theta x ≤ (Real.log 4 + 4) * 3 * Real.sqrt x := by
  rcases le_total x 1 with h | h
  · rw [Chebyshev.theta_eq_zero_of_le_one h, Chebyshev.psi_eq_zero_of_le_one h, sub_self]
    positivity
  have hb (n : ℕ) (hn : 2 ≤ n) :
      Chebyshev.psi (x ^ (1 / (n : ℝ))) ≤ (Real.log 4 + 4) * Real.sqrt x := by
    grw [Chebyshev.psi_le_const_mul_self (by positivity), Real.sqrt_eq_rpow x]
    gcongr
    norm_cast
  linarith [Chebyshev.psi_sub_theta_le_psi_add_psi_add_psi x,
    hb 2 (le_refl _), hb 3 (by norm_num), hb 5 (by norm_num)]

/-- The inherited global proper-power estimate, with its chosen constant exposed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variant567375d08e52a826f0e6a55398acc98664a15dc09fb3797e19c2c7a0d7b13f36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variant567375d08e52a826f0e6a55398acc98664a15dc09fb3797e19c2c7a0d7b13f36.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80a1fd27beab72170d85383e794ee2e2ec55d9f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
