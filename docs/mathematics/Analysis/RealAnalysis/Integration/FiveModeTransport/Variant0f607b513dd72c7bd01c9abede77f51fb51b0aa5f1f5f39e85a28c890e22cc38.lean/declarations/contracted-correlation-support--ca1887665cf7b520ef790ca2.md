# contracted_correlation_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ab77289-1918-9cb9-0256-1383d06f5859",
  "kind": "theorem",
  "lexical_name": "contracted_correlation_support",
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
  "slug": "contracted-correlation-support--ca1887665cf7b520ef790ca2",
  "source": {
    "blob": "87234d30297b66591c4e1c959975e922024acc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca1887665cf7b520ef790ca219558215812c31ec2e25f8167d72d932b78fbd2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ab77289-1918-9cb9-0256-1383d06f5859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contracted_correlation_support (A t : ℝ) (hA : 1 ≤ A) (ht : 2*A ≤ |t|) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * modeCorrelation A i j t) = 0 := by
  rw [← actual_correlation_reconstruction A t hA]
  exact sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) ht

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87234d30297b66591c4e1c959975e922024acc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
