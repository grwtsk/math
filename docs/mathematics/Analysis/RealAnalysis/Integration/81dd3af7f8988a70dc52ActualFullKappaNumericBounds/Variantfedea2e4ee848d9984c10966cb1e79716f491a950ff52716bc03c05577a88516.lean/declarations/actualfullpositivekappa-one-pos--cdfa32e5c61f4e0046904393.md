# actualFullPositiveKappa_one_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3627fabf-150e-66b2-1778-853104edb356",
  "kind": "theorem",
  "lexical_name": "actualFullPositiveKappa_one_pos",
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
  "slug": "actualfullpositivekappa-one-pos--cdfa32e5c61f4e0046904393",
  "source": {
    "blob": "98fa5b5fc58e3a4c1ae1863f42fbe24561282ee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdfa32e5c61f4e00469043930d93b5316971503b02ebb5e8a00f41f9fbf142a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3627fabf-150e-66b2-1778-853104edb356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullPositiveKappa_one_pos : 0 < fullPositiveKappa 1 := by
  exact lt_of_lt_of_le (by norm_num : (0 : ℝ) < 2) actualFullPositiveKappa_one_bounds.1

/-- All four literal full-positive coefficients have explicit numerical absolute budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98fa5b5fc58e3a4c1ae1863f42fbe24561282ee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
