# explicit_global_proper_power_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9e2297-d0c2-522c-1620-feba2fd3fbab",
  "kind": "theorem",
  "lexical_name": "explicit_global_proper_power_bound",
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
  "slug": "explicit-global-proper-power-bound--966798f57110ed38213d84e8",
  "source": {
    "blob": "391d76f7ad0cedb7d6f662b33958a62bbd163136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantcc042bb2851e2ec2b32aaba6d6ea503de8e9f3c189fe2924789b6eb6c290782b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:966798f57110ed38213d84e859ff8dd4b125697b95d0903929b0bbde898b1020",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantcc042bb2851e2ec2b32aaba6d6ea503de8e9f3c189fe2924789b6eb6c290782b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9e2297-d0c2-522c-1620-feba2fd3fbab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_global_proper_power_bound (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ weightedMangoldt N - weightedPrime N ∧
      weightedMangoldt N - weightedPrime N ≤ 9 * (Real.log 4 + 4) := by
  have hc : 0 ≤ (Real.log 4 + 4) * 3 := by positivity
  refine ⟨weighted_difference_nonneg N, ?_⟩
  have h := weighted_difference_bound_of_sqrt ((Real.log 4 + 4) * 3) hc
    explicit_psi_theta_bound N hN
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantcc042bb2851e2ec2b32aaba6d6ea503de8e9f3c189fe2924789b6eb6c290782b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExplicitPrimeLogError/Variantcc042bb2851e2ec2b32aaba6d6ea503de8e9f3c189fe2924789b6eb6c290782b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `391d76f7ad0cedb7d6f662b33958a62bbd163136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
