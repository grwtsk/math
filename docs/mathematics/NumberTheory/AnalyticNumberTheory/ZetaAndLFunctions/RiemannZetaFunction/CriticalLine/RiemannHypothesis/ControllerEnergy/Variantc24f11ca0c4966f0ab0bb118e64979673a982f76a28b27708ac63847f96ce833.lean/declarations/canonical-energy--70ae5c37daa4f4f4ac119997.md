# canonical_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1023ce245e52e526af924165438761fb960a1bd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c24f11ca0c4966f0ab0bb118e64979673a982f76a28b27708ac63847f96ce833.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82cc220f-88e9-f707-be0e-ad298c1da00c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c96c80d8-5ef9-c5ab-627b-eadeb82a6ddb",
  "kind": "theorem",
  "lexical_name": "canonical_energy",
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
  "slug": "canonical-energy--70ae5c37daa4f4f4ac119997",
  "source": {
    "blob": "1023ce245e52e526af924165438761fb960a1bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variantc24f11ca0c4966f0ab0bb118e64979673a982f76a28b27708ac63847f96ce833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ae5c37daa4f4f4ac119997c28bcd82349a6caea3938a0c825decaa300744c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variantc24f11ca0c4966f0ab0bb118e64979673a982f76a28b27708ac63847f96ce833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c96c80d8-5ef9-c5ab-627b-eadeb82a6ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_energy (T : H →L[ℂ] H) (α : ℝ) (hα : 0 < α) (r : H) :
    trackingEnergy T α r (canonicalController T α r) =
      regularizedMass (T.comp T.adjoint) α r := by
  let u := positiveResolvent (T.comp T.adjoint) α r
  have h := positiveShift_resolvent_apply (T.comp T.adjoint)
    (ContinuousLinearMap.isPositive_self_comp_adjoint T) α hα r
  change T (T.adjoint u) + (α : ℂ) • u = r at h
  have hi : (inner ℂ r u).re = ‖T.adjoint u‖ ^ 2 + α * ‖u‖ ^ 2 := by
    rw [← h, inner_add_left, ← ContinuousLinearMap.adjoint_inner_right,
      inner_smul_left, Complex.add_re]
    simp only [Complex.conj_ofReal, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    simp only [← RCLike.re_to_complex, inner_self_eq_norm_sq]
  rw [trackingEnergy, canonical_residual T α hα r]
  change ‖(α : ℂ) • u‖ ^ 2 + α * ‖T.adjoint u‖ ^ 2 = α * (inner ℂ r u).re
  rw [norm_smul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hα, hi]
  ring

/-- The cross term is transported through the true Hilbert adjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variantc24f11ca0c4966f0ab0bb118e64979673a982f76a28b27708ac63847f96ce833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variantc24f11ca0c4966f0ab0bb118e64979673a982f76a28b27708ac63847f96ce833.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1023ce245e52e526af924165438761fb960a1bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
