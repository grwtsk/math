# elementary_perron_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b22cfd77-1a48-9459-0de7-6459ea37ccb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28e9b4ea-c3e4-2e65-fcfa-542b4c688024",
  "kind": "theorem",
  "lexical_name": "elementary_perron_kernel",
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
  "slug": "elementary-perron-kernel--25816343263fbb7597b471b4",
  "source": {
    "blob": "c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25816343263fbb7597b471b4e7e55e7ab4d14ec0d0f112b997a13d84e24391c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28e9b4ea-c3e4-2e65-fcfa-542b4c688024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elementary_perron_kernel (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c x t) =
      ((max (Real.log x) 0 : ℝ) : ℂ) := by
  have hfun : perronIntegrand c x = fun t : ℝ =>
      Complex.exp ((c : ℂ) * (Real.log x : ℂ)) *
        (Complex.exp ((t : ℂ) * (Real.log x : ℂ) * Complex.I) /
          ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) := by
    funext t
    unfold perronIntegrand
    rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr hx.ne'),
      ← Complex.ofReal_log hx.le, ← mul_div_assoc, ← Complex.exp_add]
    congr 2
    ring
  rw [hfun, integral_const_mul, ← mul_smul_comm]
  change Complex.exp ((c : ℂ) * (Real.log x : ℂ)) *
    ((1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ,
      Complex.exp ((t : ℂ) * (Real.log x : ℂ) * Complex.I) /
        ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2)) = _
  rw [vertical_ramp_inversion c (Real.log x) hc, dampedRamp]
  rw [mul_comm ((max (Real.log x) 0 : ℝ) : ℂ), ← mul_assoc, ← Complex.exp_add]
  simp

/-- The n=x endpoint contributes exactly zero, without a half-weight convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
