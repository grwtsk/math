# lintegral_sum_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbe639f8-91d8-3fee-9e8c-d86bfb524535",
  "kind": "theorem",
  "lexical_name": "lintegral_sum_measure",
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
  "slug": "lintegral-sum-measure--73c400edca50fd710f29b6bc",
  "source": {
    "blob": "1ef957f14cd9e7a26cce43a9b409c62fe1dd40f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 451,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73c400edca50fd710f29b6bce9d9ee9d08419281c1352cef2cb96581b69377c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbe639f8-91d8-3fee-9e8c-d86bfb524535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_sum_measure {m : MeasurableSpace α} {ι} (f : α → ℝ≥0∞) (μ : ι → Measure α) :
    ∫⁻ a, f a ∂Measure.sum μ = ∑' i, ∫⁻ a, f a ∂μ i := by
  simp_rw [ENNReal.tsum_eq_iSup_sum, ← lintegral_finsetSum_measure,
    lintegral, SimpleFunc.lintegral_sum, ENNReal.tsum_eq_iSup_sum,
    SimpleFunc.lintegral_finsetSum, iSup_comm (ι := Finset ι)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef957f14cd9e7a26cce43a9b409c62fe1dd40f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
