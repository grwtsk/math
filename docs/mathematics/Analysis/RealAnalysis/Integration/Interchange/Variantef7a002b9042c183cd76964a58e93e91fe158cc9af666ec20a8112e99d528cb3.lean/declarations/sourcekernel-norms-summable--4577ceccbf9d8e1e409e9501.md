# sourceKernel_norms_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e32889f-e594-8c06-6419-1e3d4c274f79",
  "kind": "lemma",
  "lexical_name": "sourceKernel_norms_summable",
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
  "slug": "sourcekernel-norms-summable--4577ceccbf9d8e1e409e9501",
  "source": {
    "blob": "b9c7ca8005a13569810f8fc7ed1c9b3fe5372054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4577ceccbf9d8e1e409e9501782cfdcb34119379630d500d26aab949ccc142c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e32889f-e594-8c06-6419-1e3d4c274f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sourceKernel_norms_summable (s : ℂ) (hs : 1 < s.re) :
    Summable (fun o : ZeroOccurrence ↦ ‖sourceKernel (shiftedValue o) s‖) := by
  have h := (integral_norms_summable s hs).of_norm_bounded
    (fun o ↦ norm_integral_le_integral_norm (occurrenceIntegrand s o))
  simpa only [integral_occurrenceIntegrand s hs] using h.norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9c7ca8005a13569810f8fc7ed1c9b3fe5372054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
