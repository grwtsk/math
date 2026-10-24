# criticalRemoved_tail_iff_residual_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c33c8af-b240-1415-ecdc-21a07a2bd2f5",
  "kind": "theorem",
  "lexical_name": "criticalRemoved_tail_iff_residual_tail",
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
  "slug": "criticalremoved-tail-iff-residual-tail--816819fa61e5eb950a9a7040",
  "source": {
    "blob": "1711a4ec951ea6611afb0f20d913ff5f754bffef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:816819fa61e5eb950a9a70403f398fc7332f88dd61f1f07295e0b9a1c082a044",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c33c8af-b240-1415-ecdc-21a07a2bd2f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalRemoved_tail_iff_residual_tail :
    CriticalRemovedPairedTailLowerBound ↔ MertensResidualTailUpperBound := by
  obtain ⟨C, hC0, hC⟩ := criticalRemovedRemainder_uniformly_bounded
  constructor
  · rintro ⟨D, hD0, R, hR, h⟩
    refine ⟨D+C, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    rw [mertensResidual_eq_criticalRemoved hA]
    have hF := (abs_le.mp (hC A hA)).2
    linarith [h A hRA]
  · rintro ⟨D, hD0, R, hR, h⟩
    refine ⟨D+C, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have hF := (abs_le.mp (hC A hA)).1
    have hr := h A hRA
    rw [mertensResidual_eq_criticalRemoved hA] at hr
    linarith

/-- The full time-mean minus continuous-half drift precedes all source correction terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1711a4ec951ea6611afb0f20d913ff5f754bffef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
