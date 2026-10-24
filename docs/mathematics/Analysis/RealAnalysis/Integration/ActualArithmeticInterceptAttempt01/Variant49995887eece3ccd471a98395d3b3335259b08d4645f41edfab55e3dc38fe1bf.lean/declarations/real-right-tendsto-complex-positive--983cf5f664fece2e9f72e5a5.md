# real_right_tendsto_complex_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:356706b3-8d40-56d1-b1c0-d9d5add9c08b",
  "kind": "theorem",
  "lexical_name": "real_right_tendsto_complex_positive",
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
  "slug": "real-right-tendsto-complex-positive--983cf5f664fece2e9f72e5a5",
  "source": {
    "blob": "ff9cd9ab04dd740fab8f1b3a6e7a9f7e8fc6684d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:983cf5f664fece2e9f72e5a5ef2c339e8b0b72abe4db5d00339c1a4452f9ac4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:356706b3-8d40-56d1-b1c0-d9d5add9c08b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_right_tendsto_complex_positive :
    Tendsto (fun s : ℝ => (s:ℂ)) (𝓝[>] (0:ℝ)) (𝓝[{u:ℂ|0<u.re}] (0:ℂ)) := by
  refine tendsto_nhdsWithin_iff.mpr ⟨?_,?_⟩
  · simpa only [Complex.ofReal_zero] using
      (Complex.continuous_ofReal.continuousAt (x:=(0:ℝ))).tendsto.mono_left
        nhdsWithin_le_nhds
  · filter_upwards [self_mem_nhdsWithin] with s hs
    simpa only [mem_setOf_eq,Complex.ofReal_re] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9cd9ab04dd740fab8f1b3a6e7a9f7e8fc6684d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
