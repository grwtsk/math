# order_comp_square_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85fdd0af-b3d5-993e-176d-aeefd74a6f91",
  "kind": "theorem",
  "lexical_name": "order_comp_square_neg",
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
  "slug": "order-comp-square-neg--6091ae9e6f2e7789fe649cca",
  "source": {
    "blob": "7b41e4d160b234acbc473a4191b97753739dbc68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6091ae9e6f2e7789fe649cca90ec52a8798b99fd53a3584b74b54908d725821f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85fdd0af-b3d5-993e-176d-aeefd74a6f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_comp_square_neg {f : ℂ → ℂ} {u : ℂ} (hu : u ≠ 0) :
    analyticOrderAt (fun z ↦ f (z ^ 2)) (-u) =
      analyticOrderAt (fun z ↦ f (z ^ 2)) u := by
  rw [order_comp_square (neg_ne_zero.mpr hu), order_comp_square hu, neg_sq]

/-- At the excluded coordinate `u = 0`, an analytic square substitution doubles
the complete order. The nonzero-coordinate premise above is essential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b41e4d160b234acbc473a4191b97753739dbc68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
