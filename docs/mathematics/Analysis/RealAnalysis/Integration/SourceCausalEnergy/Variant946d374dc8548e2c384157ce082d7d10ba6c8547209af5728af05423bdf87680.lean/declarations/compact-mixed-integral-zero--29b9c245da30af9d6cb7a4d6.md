# compact_mixed_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b81d2fcf7c822ff81e1c6f43577dbe170a10bf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3bc2afe-58eb-ef34-1187-2e4b4e69474e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d0b7a81-5481-2575-16b0-29bbd21d9928",
  "kind": "theorem",
  "lexical_name": "compact_mixed_integral_zero",
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
  "slug": "compact-mixed-integral-zero--29b9c245da30af9d6cb7a4d6",
  "source": {
    "blob": "2b81d2fcf7c822ff81e1c6f43577dbe170a10bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 328,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b9c245da30af9d6cb7a4d6f0b3f7e2cd3561294e6dec1c341b9db7a6f260a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d0b7a81-5481-2575-16b0-29bbd21d9928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem compact_mixed_integral_zero {f : ℝ → ℝ} (hc : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) : (∫ x : ℝ, deriv f x * f x) = 0 := by
  have hm : Integrable (fun x ↦ deriv f x * f x) :=
    (hc.continuous_deriv_one.mul hc.continuous).integrable_of_hasCompactSupport
      hs.deriv.mul_right
  have hm' : Integrable (fun x ↦ f x * deriv f x) := by
    simpa only [mul_comm] using hm
  have hsq : Integrable (fun x ↦ f x * f x) :=
    (hc.continuous.mul hc.continuous).integrable_of_hasCompactSupport hs.mul_right
  have hi := integral_mul_deriv_eq_deriv_mul_of_integrable
    (fun x _ ↦ (hc.differentiable one_ne_zero x).hasDerivAt)
    (fun x _ ↦ (hc.differentiable one_ne_zero x).hasDerivAt) hm' hm hsq
  have heq : (∫ x : ℝ, f x * deriv f x) = ∫ x : ℝ, deriv f x * f x := by
    apply integral_congr_ae
    filter_upwards [] with x
    ring
  rw [heq] at hi
  linarith

/-- The actual bump/derivative mixed energy vanishes by compact integration by parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b81d2fcf7c822ff81e1c6f43577dbe170a10bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
