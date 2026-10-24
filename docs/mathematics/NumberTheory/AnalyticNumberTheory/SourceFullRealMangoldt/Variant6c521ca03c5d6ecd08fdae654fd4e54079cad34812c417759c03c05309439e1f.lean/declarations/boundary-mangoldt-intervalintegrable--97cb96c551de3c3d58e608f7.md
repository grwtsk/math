# boundary_mangoldt_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bb89e73-9b4f-2e3a-7c34-62c3090cb0de",
  "kind": "theorem",
  "lexical_name": "boundary_mangoldt_intervalIntegrable",
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
  "slug": "boundary-mangoldt-intervalintegrable--97cb96c551de3c3d58e608f7",
  "source": {
    "blob": "a7605dc64f622bb6bd84ee202e95cdf22484981a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 156,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97cb96c551de3c3d58e608f7b5a993f2f629fd7a49007c15085fbabce3990f41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bb89e73-9b4f-2e3a-7c34-62c3090cb0de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_mangoldt_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun y => boundaryWorkKernel A y * mangoldtLogError (2*A-y))
      volume 0 (4*A) := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (-(2*A)) (2*A)
    (by linarith) (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  have hs := (hi.comp_sub_left (2*A)).symm
  have hc : IntervalIntegrable
      (fun y => mangoldtLogError (2*A-y) * deriv (criticalPrimeTest A) (2*A-y))
      volume 0 (4*A) := by
    simpa only [sub_self, show 2*A-(-(2*A))=4*A by ring] using hs
  have he (y : ℝ) : boundaryWorkKernel A y * mangoldtLogError (2*A-y) =
      (A^9*Real.exp (-A)) *
        (mangoldtLogError (2*A-y) * deriv (criticalPrimeTest A) (2*A-y)) := by
    unfold boundaryWorkKernel
    ring
  simpa only [he] using hc.const_mul (A^9*Real.exp (-A))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7605dc64f622bb6bd84ee202e95cdf22484981a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
