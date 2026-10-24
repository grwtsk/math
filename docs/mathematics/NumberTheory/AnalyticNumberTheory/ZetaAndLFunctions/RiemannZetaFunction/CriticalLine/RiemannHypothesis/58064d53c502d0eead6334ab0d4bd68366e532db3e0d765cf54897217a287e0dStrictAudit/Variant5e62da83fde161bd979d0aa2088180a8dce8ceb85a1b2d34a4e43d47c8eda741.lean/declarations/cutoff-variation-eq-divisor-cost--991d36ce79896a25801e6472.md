# cutoff_variation_eq_divisor_cost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d2aa6f8-4506-32c7-0a0c-ac233eab763c",
  "kind": "theorem",
  "lexical_name": "cutoff_variation_eq_divisor_cost",
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
  "slug": "cutoff-variation-eq-divisor-cost--991d36ce79896a25801e6472",
  "source": {
    "blob": "9a3c931edfe1e242f16ba6958225d05f18c1c6ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variant5e62da83fde161bd979d0aa2088180a8dce8ceb85a1b2d34a4e43d47c8eda741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:991d36ce79896a25801e6472f8caff69b8cbdee3262457f4e8305a4adc53d37b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variant5e62da83fde161bd979d0aa2088180a8dce8ceb85a1b2d34a4e43d47c8eda741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d2aa6f8-4506-32c7-0a0c-ac233eab763c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoff_variation_eq_divisor_cost (a b n : ℕ) (hn : 0 < n) :
    cutoffVariation (fun U => longDivisorRow U n) a b =
      ∑ U ∈ Finset.Ico a b,
        if U + 1 ∣ n then |(moebius (U + 1) : ℝ)| else 0 := by
  apply Finset.sum_congr rfl
  intro U _
  rw [long_divisor_row_increment U n hn, abs_neg]
  split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variant5e62da83fde161bd979d0aa2088180a8dce8ceb85a1b2d34a4e43d47c8eda741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variant5e62da83fde161bd979d0aa2088180a8dce8ceb85a1b2d34a4e43d47c8eda741.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a3c931edfe1e242f16ba6958225d05f18c1c6ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
