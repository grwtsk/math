# actualPsiFloorDensity_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5bff9dd-ce6f-4551-b430-226d752c3dad",
  "kind": "theorem",
  "lexical_name": "actualPsiFloorDensity_integrable",
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
  "slug": "actualpsifloordensity-integrable--4bfe79fcb63269c348d700aa",
  "source": {
    "blob": "6ba5bf6ebaeb3c7ff9b7c9f5f914a8ad5d9ac32e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bfe79fcb63269c348d700aa1b8403fe500ee3d943a12a8341e28bb41a65a407",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5bff9dd-ce6f-4551-b430-226d752c3dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiFloorDensity_integrable (A : ℝ) (hA : 91 ≤ A) :
    IntegrableOn (actualPsiFloorDensity A) (Ioi (0 : ℝ)) := by
  apply (((actualPsiContinuousDensity_integrable A hA).add
    ((actual_mellin_pole_derivative_integrable A (by linarith)).const_mul
      (shortReciprocalMoebius (vaughanCutoff A)))).sub
        ((actual_plain_pole_derivative_integrable A (by linarith)).const_mul
          (shortLogReciprocalMoebius (vaughanCutoff A)))).congr
  filter_upwards with x
  simp only [Pi.sub_apply, Pi.add_apply]
  unfold actualPsiContinuousDensity actualPsiFloorDensity
  ring

/-- Both actual signed pole coefficients disappear after their L1 and moments are proved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ba5bf6ebaeb3c7ff9b7c9f5f914a8ad5d9ac32e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
