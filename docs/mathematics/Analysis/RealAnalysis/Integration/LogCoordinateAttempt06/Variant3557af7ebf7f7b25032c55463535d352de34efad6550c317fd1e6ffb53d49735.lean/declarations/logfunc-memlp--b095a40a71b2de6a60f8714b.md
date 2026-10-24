# logFunc_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e50181bd-a13d-3d24-d156-de80d2dd0b5a",
  "kind": "theorem",
  "lexical_name": "logFunc_memLp",
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
  "slug": "logfunc-memlp--b095a40a71b2de6a60f8714b",
  "source": {
    "blob": "95468cc9efe224c3a8f42d25f99b1fa4fb861009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b095a40a71b2de6a60f8714b143af564aaf6da9e29c6474107845237efc41123",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e50181bd-a13d-3d24-d156-de80d2dd0b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logFunc_memLp {f : ℝ → ℂ} (hf : MemLp f 2 positiveMeasure) :
    MemLp (logFunc f) 2 (volume : Measure ℝ) := by
  have hm : AEStronglyMeasurable (logFunc f) volume :=
    (Complex.measurable_ofReal.comp (Real.measurable_exp.comp (measurable_id.div_const 2))).aestronglyMeasurable.mul
      (hf.aestronglyMeasurable.comp_quasiMeasurePreserving exp_quasi)
  apply (memLp_two_iff_integrable_sq_norm hm).mpr
  simpa only [logFunc_norm_sq] using
    (integrable_exp_jacobian (fun x => ‖f x‖^2)).mp
      ((memLp_two_iff_integrable_sq_norm hf.aestronglyMeasurable).mp hf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant3557af7ebf7f7b25032c55463535d352de34efad6550c317fd1e6ffb53d49735.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95468cc9efe224c3a8f42d25f99b1fa4fb861009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
