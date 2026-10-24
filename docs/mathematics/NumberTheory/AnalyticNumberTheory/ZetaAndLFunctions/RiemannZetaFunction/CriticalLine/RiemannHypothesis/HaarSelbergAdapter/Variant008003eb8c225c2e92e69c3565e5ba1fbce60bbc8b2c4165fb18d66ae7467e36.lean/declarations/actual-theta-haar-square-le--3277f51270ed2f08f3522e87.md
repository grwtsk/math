# actual_theta_haar_square_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b61b461-a3c3-6aec-c10e-dee2342455c2",
  "kind": "theorem",
  "lexical_name": "actual_theta_haar_square_le",
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
  "slug": "actual-theta-haar-square-le--3277f51270ed2f08f3522e87",
  "source": {
    "blob": "053ab3db553d5b9fb5888ceed9d711d9364b3eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3277f51270ed2f08f3522e875e0b05ce34a964a7ab215c050b6d5086d0c39609",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b61b461-a3c3-6aec-c10e-dee2342455c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_theta_haar_square_le {a h : ℕ} (ha : 1 ≤ a) (hh : 0 < h) :
    (uniformHaar (cumulativeDiscrepancy ordinaryPrimeCoefficient) a h) ^ 2 ≤
      (1 / 2 : ℝ) * ∑ r ∈ Finset.range h,
        (Chebyshev.theta (a + r + h : ℕ) - Chebyshev.theta (a + r : ℕ) - h) ^ 2 := by
  have heq (r : ℕ) : blockError (cumulativeDiscrepancy ordinaryPrimeCoefficient) (a + r) h =
      Chebyshev.theta (a + r + h : ℕ) - Chebyshev.theta (a + r : ℕ) - h :=
    actual_storage_block_error (by omega) h
  simpa only [heq] using haar_square_le (cumulativeDiscrepancy ordinaryPrimeCoefficient) a h hh

end
end GRWTSK.RiemannHypothesis.Conversation.HaarSelbergAdapter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053ab3db553d5b9fb5888ceed9d711d9364b3eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
