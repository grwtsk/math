# sharpBalancedHeadCost_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8227601a-49a5-9008-982d-490d7d523ea6",
  "kind": "theorem",
  "lexical_name": "sharpBalancedHeadCost_antitoneOn",
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
  "slug": "sharpbalancedheadcost-antitoneon--9d333063756945bcc1da1d47",
  "source": {
    "blob": "7e6630fd484169724077b440ca70cc34f0f0fece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 180,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant0f04f5f81923eacbab182cd30a449b4b6875d6b3f1346a25e4c1ea500e9014a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d333063756945bcc1da1d4775fb1982a8cb51a4a766dbcaeed6862c7939a4aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant0f04f5f81923eacbab182cd30a449b4b6875d6b3f1346a25e4c1ea500e9014a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8227601a-49a5-9008-982d-490d7d523ea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpBalancedHeadCost_antitoneOn : AntitoneOn sharpBalancedHeadCost (Ici 91) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 91)
  · intro A hA
    have hp : 91 ≤ A := hA
    exact (sharpBalancedHeadCost_hasDerivAt (by linarith : 0 < A)).continuousAt.continuousWithinAt
  · intro A hA
    have hp : 91 ≤ A := interior_subset hA
    have hd := sharpBalancedHeadCost_hasDerivAt (by linarith : 0 < A)
    exact hd.differentiableAt.differentiableWithinAt
  · intro A hA
    have hp : 91 ≤ A := interior_subset hA
    rw [(sharpBalancedHeadCost_hasDerivAt (by linarith : 0 < A)).deriv]
    exact sharpBalancedHeadCost_derivative_nonpositive hp

/-- Every real source scale uses the sharper head cost at the SAME supplied radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant0f04f5f81923eacbab182cd30a449b4b6875d6b3f1346a25e4c1ea500e9014a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant0f04f5f81923eacbab182cd30a449b4b6875d6b3f1346a25e4c1ea500e9014a1.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6630fd484169724077b440ca70cc34f0f0fece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
