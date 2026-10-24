# actual_bounded_horizon_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bf1fcf7-2ddb-f1a4-bccc-b58c0f59d050",
  "kind": "theorem",
  "lexical_name": "actual_bounded_horizon_spec",
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
  "slug": "actual-bounded-horizon-spec--5ddd9af6b3c8498b94e6842c",
  "source": {
    "blob": "bba7bf2eb5fe505d3b082c961115e06667ec9342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteNativeMaximum/Variant64e6c4bf648acbbe011be4564cd4138fd7335cb14706d4fac59256df4a63ac10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ddd9af6b3c8498b94e6842ce258184e569b006359872c6e8aa1f2f5bcbc0146",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteNativeMaximum/Variant64e6c4bf648acbbe011be4564cd4138fd7335cb14706d4fac59256df4a63ac10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bf1fcf7-2ddb-f1a4-bccc-b58c0f59d050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bounded_horizon_spec {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    (∀ j ≤ K, ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤
      primeRecordLevel N K) ∧
    ∃ j ≤ K, ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N =
      primeRecordLevel N K := by
  have h := maximum_prefix_spec (actualPrimeWork N) K
  rw [← actual_prime_record_eq_maximum hN] at h
  simp_rw [actual_prime_work_prefix hN] at h
  exact h.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteNativeMaximum/Variant64e6c4bf648acbbe011be4564cd4138fd7335cb14706d4fac59256df4a63ac10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteNativeMaximum/Variant64e6c4bf648acbbe011be4564cd4138fd7335cb14706d4fac59256df4a63ac10.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bba7bf2eb5fe505d3b082c961115e06667ec9342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
