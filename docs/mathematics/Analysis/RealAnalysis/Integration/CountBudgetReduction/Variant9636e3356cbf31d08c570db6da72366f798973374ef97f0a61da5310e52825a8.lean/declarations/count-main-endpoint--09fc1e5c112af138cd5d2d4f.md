# count_main_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44f13d34-f612-ce9e-bcd0-2dce290f132f",
  "kind": "theorem",
  "lexical_name": "count_main_endpoint",
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
  "slug": "count-main-endpoint--09fc1e5c112af138cd5d2d4f",
  "source": {
    "blob": "a505f89b4a0dcecbc6cfc456120833b36b46af38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09fc1e5c112af138cd5d2d4f6072a0cab3edb7d9488a5ccc3c361cc81b602ab3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44f13d34-f612-ce9e-bcd0-2dce290f132f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_main_endpoint (T : ℝ) (hT : 0 < T) :
    zeroCountMain T = T/(2*Real.pi)*(Real.log (T/(2*Real.pi))-1) := by
  have he : T/(2*Real.pi*Real.exp 1) = (T/(2*Real.pi))/Real.exp 1 := by ring
  unfold zeroCountMain
  rw [he, Real.log_div (div_ne_zero hT.ne' (by positivity)) (Real.exp_ne_zero 1), Real.log_exp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant9636e3356cbf31d08c570db6da72366f798973374ef97f0a61da5310e52825a8.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a505f89b4a0dcecbc6cfc456120833b36b46af38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
