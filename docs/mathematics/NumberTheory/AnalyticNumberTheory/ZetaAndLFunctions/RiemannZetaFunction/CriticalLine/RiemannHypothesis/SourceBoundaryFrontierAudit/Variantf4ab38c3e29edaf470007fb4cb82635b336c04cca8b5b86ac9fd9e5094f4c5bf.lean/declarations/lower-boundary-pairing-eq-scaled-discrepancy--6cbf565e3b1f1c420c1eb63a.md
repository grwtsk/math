# lower_boundary_pairing_eq_scaled_discrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ae9388f-5890-93db-816a-283e39636e90",
  "kind": "theorem",
  "lexical_name": "lower_boundary_pairing_eq_scaled_discrepancy",
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
  "slug": "lower-boundary-pairing-eq-scaled-discrepancy--6cbf565e3b1f1c420c1eb63a",
  "source": {
    "blob": "ecbc8f11b18c8d6923f327135fba18e9c44a9b86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cbf565e3b1f1c420c1eb63a9d4a2632183b1c691a8b5a5d92e38a70a2dd84f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ae9388f-5890-93db-816a-283e39636e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_boundary_pairing_eq_scaled_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    lowerBoundaryPairing A = boundaryScale A * sourceDiscrepancyValue A := by
  have h := congrArg (fun x : ℝ ↦ boundaryScale A * x)
    (discrepancy_boundary_coordinate_exact A hA)
  have hs : boundaryScale A * (Real.exp A / A ^ 9) = 1 := by
    rw [mul_comm]
    exact boundary_prefactor_mul_scale A (by linarith)
  simpa only [← mul_assoc, hs, one_mul] using h.symm

/-- OPEN: the required one-sided normalized error retains its vanishing square-root scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecbc8f11b18c8d6923f327135fba18e9c44a9b86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
