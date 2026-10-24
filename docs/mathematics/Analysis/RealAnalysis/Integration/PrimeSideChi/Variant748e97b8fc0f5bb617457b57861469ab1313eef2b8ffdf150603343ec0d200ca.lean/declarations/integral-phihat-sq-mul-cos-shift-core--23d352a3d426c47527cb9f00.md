# integral_phiHat_sq_mul_cos_shift_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55d16705-29f6-c0c6-767f-8379e17126ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7451d765-081f-7793-9dd4-461852e0ea01",
  "kind": "lemma",
  "lexical_name": "integral_phiHat_sq_mul_cos_shift_core",
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
  "slug": "integral-phihat-sq-mul-cos-shift-core--23d352a3d426c47527cb9f00",
  "source": {
    "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23d352a3d426c47527cb9f00d5e7f56ce1926fd246f10458e03f13945384c7df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7451d765-081f-7793-9dd4-461852e0ea01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_phiHat_sq_mul_cos_shift_core (hF : LocalHypsCoreW cϱ p F) (t y : ℝ) :
    ∫ r, F.phiHat r ^ 2 * Real.cos ((t + r) * y) = 2 * π * F.Aphi y * Real.cos (t * y) := by
  have h1 : ∀ r, F.phiHat r ^ 2 * Real.cos ((t + r) * y)
      = Real.cos (t * y) * (F.phiHat r ^ 2 * Real.cos (r * y))
        - Real.sin (t * y) * (F.phiHat r ^ 2 * Real.sin (r * y)) := by
    intro r
    rw [add_mul, Real.cos_add]
    ring
  simp_rw [h1]
  rw [MeasureTheory.integral_sub, MeasureTheory.integral_const_mul,
    MeasureTheory.integral_const_mul, hF.phiHat_sq_fourier, integral_phiHat_sq_mul_sin_core hF]
  · ring
  · exact (hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop)
      (fun x => Real.abs_cos_le_one _)).const_mul _
  · exact (hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop)
      (fun x => Real.abs_sin_le_one _)).const_mul _

/-- `∫ φ̂(r)² Re(z·e^{−i(t+r)y}) dr = 2π A_φ(y)·Re(z e^{−ity})` — the phase-twisted Fourier identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdfbbe56c3098980c3d63ba72430b2e80671deeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
