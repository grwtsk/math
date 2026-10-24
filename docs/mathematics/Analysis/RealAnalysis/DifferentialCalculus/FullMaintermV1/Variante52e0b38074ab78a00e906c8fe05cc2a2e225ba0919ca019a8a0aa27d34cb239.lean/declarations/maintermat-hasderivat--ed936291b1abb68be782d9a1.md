# mainTermAt_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b554bd1f-e634-6144-6fa0-3df807f02765",
  "kind": "theorem",
  "lexical_name": "mainTermAt_hasDerivAt",
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
  "slug": "maintermat-hasderivat--ed936291b1abb68be782d9a1",
  "source": {
    "blob": "19da3b2abd6fda9f82f64041feb01d2d0ab82645",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 270,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variante52e0b38074ab78a00e906c8fe05cc2a2e225ba0919ca019a8a0aa27d34cb239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed936291b1abb68be782d9a143d2e21fd1ef4f6166be3c7ad7f9f4c1d0f9cccb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variante52e0b38074ab78a00e906c8fe05cc2a2e225ba0919ca019a8a0aa27d34cb239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b554bd1f-e634-6144-6fa0-3df807f02765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mainTermAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    HasDerivAt (fun B ↦ mainTermAt B U N) (mainTermDerivativeAt A U N) A := by
  have hd := (((((plainOffAt_hasDerivAt hA U N).const_mul (alpha U)).add
    (normalizedMain_hasDerivAt hA)).sub (hasDerivAt_const A (Real.log (U : ℝ)))).sub
      (shortMangoldtAt_hasDerivAt hA U)).sub (shortLogSamplingAt_hasDerivAt hA U)
  simpa only [sub_zero] using hd.add (shortPlainSamplingAt_hasDerivAt hA U)

/-- The independently defined complete fixed-cutoff main formula is locally C¹. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variante52e0b38074ab78a00e906c8fe05cc2a2e225ba0919ca019a8a0aa27d34cb239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variante52e0b38074ab78a00e906c8fe05cc2a2e225ba0919ca019a8a0aa27d34cb239.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19da3b2abd6fda9f82f64041feb01d2d0ab82645` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
