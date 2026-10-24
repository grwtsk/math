# canonical_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90c62981-fb02-c43a-dfb4-a8136d9e7c4c",
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
  "slug": "canonical-energy--b5c739fa523f8e7129bd85f9",
  "source": {
    "blob": "ba9975ee01634b243f1b07caf467ecb976f01632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5c739fa523f8e7129bd85f9c08eeed925377fc5390bbb28196e5a4f45d4e5f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90c62981-fb02-c43a-dfb4-a8136d9e7c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9975ee01634b243f1b07caf467ecb976f01632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
