# mainTermAt_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b238b81-8a7f-9ff4-ccf4-446d20896a75",
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
  "slug": "maintermat-hasderivat--32ad4c784d073f1f910ae21d",
  "source": {
    "blob": "144885a75cec00084ccaa289a7a254951990c0f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32ad4c784d073f1f910ae21dc7de6f0da30427173ed98950316d380bcb05a7c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b238b81-8a7f-9ff4-ccf4-446d20896a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mainTermAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    HasDerivAt (fun B ↦ mainTermAt B U N) (mainTermDerivativeAt A U N) A := by
  have hd : HasDerivAt (fun B ↦ mainTermAt B U N)
      (alpha U * plainOffDerivativeAt A U N + normalizationMainDerivative A - 0 -
        shortMangoldtDerivativeAt A U - shortLogDerivativeAt A U +
          shortPlainDerivativeAt A U) A :=
    ((((((plainOffAt_hasDerivAt hA U N).const_mul (alpha U)).add
      (normalizedMain_hasDerivAt hA)).sub (hasDerivAt_const A (Real.log (U : ℝ)))).sub
        (shortMangoldtAt_hasDerivAt hA U)).sub (shortLogSamplingAt_hasDerivAt hA U)).add
          (shortPlainSamplingAt_hasDerivAt hA U)
  simpa only [mainTermDerivativeAt, sub_zero] using hd

/-- The independently defined complete fixed-cutoff main formula is locally C¹. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `144885a75cec00084ccaa289a7a254951990c0f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
