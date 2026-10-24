# sum_log_prime_div_eq_log'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4480b1-41f9-468a-e506-4b032d347934",
  "kind": "theorem",
  "lexical_name": "sum_log_prime_div_eq_log'",
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
  "slug": "sum-log-prime-div-eq-log--1e4c11e4046c975387b41b16",
  "source": {
    "blob": "54ba4bc8c79067a36f0e8e981b9aaa0dc8cdda6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 586,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e4c11e4046c975387b41b1623cb0cccea8a1b2221d77d06b7f4300c7a1ec006",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4480b1-41f9-468a-e506-4b032d347934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_log_prime_div_eq_log' : E₁p =O[atTop] (fun _ ↦ (1:ℝ)) := by
    simp only [isBigO_iff, norm_eq_abs, one_mem, CStarRing.norm_of_mem_unitary, mul_one,
      eventually_atTop, ge_iff_le, E₁p]
    exact ⟨ log 4 + 4, 1, fun _ ↦ sum_log_prime_div_eq_log ⟩

@[blueprint
  "Mertens-first-theorem-prime-bounded"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ba4bc8c79067a36f0e8e981b9aaa0dc8cdda6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
