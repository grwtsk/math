# original_source_eventually_polynomial_from_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:885b85e0-f6f0-069f-775e-c0efd772f018",
  "kind": "theorem",
  "lexical_name": "original_source_eventually_polynomial_from_second",
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
  "slug": "original-source-eventually-polynomial-from-second--7dab5e480616f9d1f9260a58",
  "source": {
    "blob": "ce6f383d1e2429b10d9b048e343499c30ddcfdc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 247,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dab5e480616f9d1f9260a58820d6247fa0743bf945457a731412f47c0baa0b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:885b85e0-f6f0-069f-775e-c0efd772f018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_source_eventually_polynomial_from_second {m : ℕ} {D R : ℝ}
    (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hQ : ∀ A : ℝ, R ≤ A → ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |nativeSecondPrimitive A t| ≤ D * A ^ m) : EventuallyPolynomialUpper closedPrimeMoment := by
  refine ⟨max (m - 1) 1, 9336 * D + 84, R, by positivity, hR, ?_⟩
  intro A hRA
  exact (le_abs_self _).trans
    (original_source_abs_polynomial_from_second (hR.trans hRA) hD (hQ A hRA))

end FormalResearch.RiemannHypothesis.BranchSecondPrimitiveCertificate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce6f383d1e2429b10d9b048e343499c30ddcfdc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
