# criticalRemoved_tail_iff_residual_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35343c89-7666-1539-70e8-87c7d9da074e",
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
  "slug": "criticalremoved-tail-iff-residual-tail--900d8a538e3a7d01e7445c29",
  "source": {
    "blob": "98b69911e589854f1b18639e61acef09707da01d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variantf9ec3b619db8259b3efc9dc2909e18e86fe5c766ef77b8031ebd1bbc4705d9a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:900d8a538e3a7d01e7445c298f627923a84da2f9477cd4ca4ad4b1bf037df992",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variantf9ec3b619db8259b3efc9dc2909e18e86fe5c766ef77b8031ebd1bbc4705d9a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35343c89-7666-1539-70e8-87c7d9da074e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–188.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variantf9ec3b619db8259b3efc9dc2909e18e86fe5c766ef77b8031ebd1bbc4705d9a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variantf9ec3b619db8259b3efc9dc2909e18e86fe5c766ef77b8031ebd1bbc4705d9a7.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98b69911e589854f1b18639e61acef09707da01d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
