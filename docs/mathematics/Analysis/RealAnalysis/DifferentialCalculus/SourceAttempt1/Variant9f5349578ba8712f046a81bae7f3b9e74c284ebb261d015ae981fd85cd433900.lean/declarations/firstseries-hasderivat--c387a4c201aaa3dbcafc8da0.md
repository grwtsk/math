# firstSeries_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "398355f0d447fb854e2007c292367bc7ecef7da7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2910b5ad-8150-3ae9-5a85-b460544ad83a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20f909c2-1612-f5ca-7e0f-ea086a01d862",
  "kind": "theorem",
  "lexical_name": "firstSeries_hasDerivAt",
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
  "slug": "firstseries-hasderivat--c387a4c201aaa3dbcafc8da0",
  "source": {
    "blob": "398355f0d447fb854e2007c292367bc7ecef7da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c387a4c201aaa3dbcafc8da0b4a9831590acaa70c759e226883a6c9b90e6027f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f909c2-1612-f5ca-7e0f-ea086a01d862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstSeries_hasDerivAt {x : ℝ} (hx : -2 < x) :
    HasDerivAt firstSeries (secondSeries x) x := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  exact hasDerivAt_tsum_of_isPreconnected
    (weight_summable.mul_left (1 / (lowerCoefficient l) ^ 2)) isOpen_Ioo
    (convex_Ioo l u).isPreconnected
    (fun n y hy ↦ firstTerm_hasDerivAt (lt_trans hl hy.1) n)
    (fun n y hy ↦ secondTerm_bound hl hy.1 n) hmem (firstTerm_summable hx) hmem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398355f0d447fb854e2007c292367bc7ecef7da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
