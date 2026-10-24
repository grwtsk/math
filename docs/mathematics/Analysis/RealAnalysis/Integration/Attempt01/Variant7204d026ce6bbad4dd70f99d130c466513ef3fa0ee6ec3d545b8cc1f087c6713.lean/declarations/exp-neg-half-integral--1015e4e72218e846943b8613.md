# exp_neg_half_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b203d940-044f-dca9-371d-b527df88cd50",
  "kind": "theorem",
  "lexical_name": "exp_neg_half_integral",
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
  "slug": "exp-neg-half-integral--1015e4e72218e846943b8613",
  "source": {
    "blob": "9113b84ece3f248ddcb8c498edcc2424882023ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant7204d026ce6bbad4dd70f99d130c466513ef3fa0ee6ec3d545b8cc1f087c6713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1015e4e72218e846943b86132176773362a40fd14feb211cda84c7da0cdadd14",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variant7204d026ce6bbad4dd70f99d130c466513ef3fa0ee6ec3d545b8cc1f087c6713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b203d940-044f-dca9-371d-b527df88cd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_neg_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ s in l..b, Real.exp (-s / 2)) =
      2 * (Real.exp (-l / 2) - Real.exp (-b / 2)) := by
  have hd (s : ℝ) : HasDerivAt (fun s : ℝ => -2 * Real.exp (-s / 2))
      (Real.exp (-s / 2)) s := by
    convert (((hasDerivAt_id s).neg.div_const 2).exp).const_mul (-2) using 1 <;> try rfl
    simp only [Pi.neg_apply, id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun s : ℝ => -2 * Real.exp (-s / 2))).continuousOn
    (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable _ _)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variant7204d026ce6bbad4dd70f99d130c466513ef3fa0ee6ec3d545b8cc1f087c6713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant7204d026ce6bbad4dd70f99d130c466513ef3fa0ee6ec3d545b8cc1f087c6713.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9113b84ece3f248ddcb8c498edcc2424882023ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
