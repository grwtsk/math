# reflectedSample_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd7b6127-2b5b-7d0d-c778-e8a7d2820854",
  "kind": "theorem",
  "lexical_name": "reflectedSample_hasDerivAt",
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
  "slug": "reflectedsample-hasderivat--bc497c9dadf71aa6f1c7dc64",
  "source": {
    "blob": "c1e6de0944c3a0cd834a7dba52347e2559e54acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc497c9dadf71aa6f1c7dc640e642ec796ffba9ff666ec9ed4a5921ddbaf897a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd7b6127-2b5b-7d0d-c778-e8a7d2820854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedSample_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) {u : ℝ} (hu : 0 < u) :
    HasDerivAt (reflectedSample A x)
      (Real.exp (-3 * Real.log u / 2) *
        (deriv (actualQ A) (x + Real.log u) - actualQ A (x + Real.log u) / 2)) u := by
  have hl := Real.hasDerivAt_log hu.ne'
  have hq := ((normalizedTest_contDiff A hA).differentiable one_ne_zero
    (x + Real.log u)).hasDerivAt.comp u (hl.const_add x)
  have hd := (((hl.neg.div_const 2).exp).mul hq)
  have hw : Real.exp (-Real.log u / 2) / u = Real.exp (-3 * Real.log u / 2) := by
    rw [div_eq_mul_inv, show u⁻¹ = Real.exp (-Real.log u) by
      rw [Real.exp_neg, Real.exp_log hu], ← Real.exp_add]
    congr 1
    ring
  have hraw : HasDerivAt
      (fun v : ℝ => Real.exp (-Real.log v / 2) * actualQ A (x + Real.log v))
      (Real.exp (-3 * Real.log u / 2) *
        (deriv (actualQ A) (x + Real.log u) - actualQ A (x + Real.log u) / 2)) u := by
    apply hd.congr_deriv
    change (-u⁻¹ / 2 * Real.exp (-Real.log u / 2)) * actualQ A (x + Real.log u) +
      Real.exp (-Real.log u / 2) * (deriv (actualQ A) (x + Real.log u) * u⁻¹) = _
    rw [← hw]
    ring
  apply hraw.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
  exact reflectedSample_eq_of_pos A x hv

/-- The positive-axis full integral cancels by the actual q pole moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e6de0944c3a0cd834a7dba52347e2559e54acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
