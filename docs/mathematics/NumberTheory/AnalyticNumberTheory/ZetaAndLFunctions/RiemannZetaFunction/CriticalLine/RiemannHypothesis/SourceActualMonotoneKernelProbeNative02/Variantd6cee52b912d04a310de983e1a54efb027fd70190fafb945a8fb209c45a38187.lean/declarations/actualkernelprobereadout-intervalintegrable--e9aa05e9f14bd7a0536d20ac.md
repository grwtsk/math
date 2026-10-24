# actualKernelProbeReadout_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d96d8ba8-ee63-e56e-d7f1-bedf5ce36043",
  "kind": "theorem",
  "lexical_name": "actualKernelProbeReadout_intervalIntegrable",
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
  "slug": "actualkernelprobereadout-intervalintegrable--e9aa05e9f14bd7a0536d20ac",
  "source": {
    "blob": "98d57aaf01b66f21a1fa9f53987b5c4678c4a8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative02/Variantd6cee52b912d04a310de983e1a54efb027fd70190fafb945a8fb209c45a38187.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9aa05e9f14bd7a0536d20ac81251330194443d2ce142bb94c0956fd55964f1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative02/Variantd6cee52b912d04a310de983e1a54efb027fd70190fafb945a8fb209c45a38187.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d96d8ba8-ee63-e56e-d7f1-bedf5ce36043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualKernelProbeReadout_intervalIntegrable {A : ℝ} (hA : 1 ≤ A)
    (epsilon : ℝ) :
    IntervalIntegrable (fun t => Real.exp (t / 2) * syntheticRelativeProbe epsilon t *
      criticalWeight A t) volume 0 (2 * A) := by
  have hp : Continuous (syntheticRelativeProbe epsilon) := by
    unfold syntheticRelativeProbe
    fun_prop
  exact (((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul hp).mul
    (criticalWeight_continuous hA)).intervalIntegrable _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative02/Variantd6cee52b912d04a310de983e1a54efb027fd70190fafb945a8fb209c45a38187.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative02/Variantd6cee52b912d04a310de983e1a54efb027fd70190fafb945a8fb209c45a38187.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98d57aaf01b66f21a1fa9f53987b5c4678c4a8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
