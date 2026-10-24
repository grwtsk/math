# coefficient_logConcave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68f6cbd7-5ad5-3470-3438-058cc55c859b",
  "kind": "theorem",
  "lexical_name": "coefficient_logConcave",
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
  "slug": "coefficient-logconcave--cd886b5d2fdd367b792a3fc1",
  "source": {
    "blob": "68343cc85c34d1b1bfb03ba1377f8ba4ea913198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd886b5d2fdd367b792a3fc121d56aa7d64e812d6fbc6e7061ccfc6bef7964d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68f6cbd7-5ad5-3470-3438-058cc55c859b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_logConcave (n : ℕ) :
    coefficient n * coefficient (n + 2) ≤ coefficient (n + 1) ^ 2 := by
  have h := thetaTail_even_index_logConcave (2 * n + 1) (t := 0) le_rfl
  rw [coefficient_eq_thetaTail n, coefficient_eq_thetaTail (n + 1),
    coefficient_eq_thetaTail (n + 2)]
  have hn1 : 2 * (n + 1) + 1 = (2 * n + 1) + 2 := by omega
  have hn2 : 2 * (n + 2) + 1 = (2 * n + 1) + 4 := by omega
  rw [hn1, hn2, pow_add, pow_add]
  norm_num
  have hmul := mul_le_mul_of_nonneg_left h (show 0 ≤ 1024 * ((4 : ℝ) ^ n) ^ 2 by positivity)
  nlinarith only [hmul]
end
end FormalResearch.RiemannHypothesis.XiJensenTrace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68343cc85c34d1b1bfb03ba1377f8ba4ea913198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
