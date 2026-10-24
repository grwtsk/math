# zero_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f634d1cd-10e7-4e8d-8785-24e9ef225b32",
  "kind": "theorem",
  "lexical_name": "zero_derivative",
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
  "slug": "zero-derivative--e5371b3f7bbecaeedf53af28",
  "source": {
    "blob": "58099b02e32c681c2e66dc92effec36e5227baed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAudit/Variantc56d71b84e296c96fca7be5f472ed152fabaefb0aa8248a4741acd233b9278ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5371b3f7bbecaeedf53af288efe4dbe479281b6ecefff93b1c7e1b4183f063f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAudit/Variantc56d71b84e296c96fca7be5f472ed152fabaefb0aa8248a4741acd233b9278ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f634d1cd-10e7-4e8d-8785-24e9ef225b32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem zero_derivative {A : ℝ} (hA : 0 < A) :
    deriv (primitiveCorrelationZero A) 0 = 0 := by
  have heven : Function.Even (primitiveCorrelationZero A) := by
    intro t
    unfold primitiveCorrelationZero
    have h := integral_sub_right_eq_self (μ := volume)
      (fun x => normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x - -t)) t
    simpa only [sub_neg_eq_add, sub_add_cancel, mul_comm] using h.symm
  have hc := ((primitiveCorrelationZero_contDiff_two hA).differentiable (by norm_num) 0).hasDerivAt
  have hcn : HasDerivAt (primitiveCorrelationZero A) (deriv (primitiveCorrelationZero A) 0) (-(0:ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt (fun t => primitiveCorrelationZero A (-t))
      (-deriv (primitiveCorrelationZero A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun t => primitiveCorrelationZero A (-t)) = primitiveCorrelationZero A :=
    funext heven
  rw [he] at hn
  have hu := hc.unique hn
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAudit/Variantc56d71b84e296c96fca7be5f472ed152fabaefb0aa8248a4741acd233b9278ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CanonicalAudit/Variantc56d71b84e296c96fca7be5f472ed152fabaefb0aa8248a4741acd233b9278ee.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58099b02e32c681c2e66dc92effec36e5227baed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
