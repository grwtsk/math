# complete_overlap_eq_actual_residual_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e51dc8e-70eb-addb-12e8-956a359bdc3e",
  "kind": "theorem",
  "lexical_name": "complete_overlap_eq_actual_residual_row",
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
  "slug": "complete-overlap-eq-actual-residual-row--6780537de6e6660c0e517c9a",
  "source": {
    "blob": "a1c8b0d1fa2bd6fd06f2eaf8a0065edb2e5f0cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant138f339f615ad878e6b5f67a16b479119c909070f57e133a330093875f9e58aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6780537de6e6660c0e517c9abb0a4e771423772c5ad8358e738e17b97c2a889e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant138f339f615ad878e6b5f67a16b479119c909070f57e133a330093875f9e58aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e51dc8e-70eb-addb-12e8-956a359bdc3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_overlap_eq_actual_residual_row (A : ℝ) (hA : 1 ≤ A) :
    remainingOverlapBalance A =
      mertensResidual A - finiteLedgerCorrection A + retainedSpatialStrip A := by
  have hs := actual_surplus_eq_remainingOverlap_sub_strip hA
  have hr := actual_residual_decomposition A hA
  unfold finiteLedgerCorrection retainedSpatialStrip
  linarith only [hs, hr]

/-- All closed prime powers survive the complete joint reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant138f339f615ad878e6b5f67a16b479119c909070f57e133a330093875f9e58aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant138f339f615ad878e6b5f67a16b479119c909070f57e133a330093875f9e58aa.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c8b0d1fa2bd6fd06f2eaf8a0065edb2e5f0cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
