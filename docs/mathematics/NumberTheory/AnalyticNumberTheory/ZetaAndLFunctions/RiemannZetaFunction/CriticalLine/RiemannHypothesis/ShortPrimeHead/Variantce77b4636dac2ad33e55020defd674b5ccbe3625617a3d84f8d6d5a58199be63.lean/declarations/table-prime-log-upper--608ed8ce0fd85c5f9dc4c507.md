# table_prime_log_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47bb6622-71dc-33cd-b247-2637904cfbce",
  "kind": "theorem",
  "lexical_name": "table_prime_log_upper",
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
  "slug": "table-prime-log-upper--608ed8ce0fd85c5f9dc4c507",
  "source": {
    "blob": "68fd74c924e3b115a9dac87627908634bd8913d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:608ed8ce0fd85c5f9dc4c5078c5b506c034fd24d1230285821cfecbf8c442781",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47bb6622-71dc-33cd-b247-2637904cfbce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_prime_log_upper {n : ℕ} (hn : n ∈ Finset.Icc 2 54) (hp : n.Prime) :
    Real.log n ≤ logUpper n := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  interval_cases n <;> norm_num at hp
  all_goals apply log_upper_of_taylor (by norm_num) (by norm_num [logUpper])
  all_goals norm_num [logUpper, Finset.sum_range_succ, Nat.factorial]

set_option maxHeartbeats 3000000 in
-- Keep the original finite-table and exponential-series normalization allowance.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68fd74c924e3b115a9dac87627908634bd8913d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
