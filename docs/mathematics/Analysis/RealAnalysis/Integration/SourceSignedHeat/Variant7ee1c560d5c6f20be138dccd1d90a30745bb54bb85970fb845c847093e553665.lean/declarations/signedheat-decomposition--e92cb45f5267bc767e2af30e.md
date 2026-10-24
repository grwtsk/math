# signedHeat_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10d9311a-a88a-8eaf-a839-007616ae1912",
  "kind": "theorem",
  "lexical_name": "signedHeat_decomposition",
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
  "slug": "signedheat-decomposition--e92cb45f5267bc767e2af30e",
  "source": {
    "blob": "bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92cb45f5267bc767e2af30e28532fb37c30d83611a29acbb827f7fff8a4f6d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10d9311a-a88a-8eaf-a839-007616ae1912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedHeat_decomposition (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (hτ : 0 ≤ τ) :
    (∫ x, k x ∂μ) = signedHeat μ k τ + signedHeatRemainder μ k τ := by
  have hcont : ContinuousOn (cubicHeat μ k) (uIcc 0 τ) := by
    rw [uIcc_of_le hτ]
    exact cubicHeat_continuousOn hk hM hb hτ
  have hint : IntervalIntegrable (cubicHeat μ k) volume 0 τ := hcont.intervalIntegrable
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => signedHeat_hasDerivAt hk hM hb t) hint.neg
  simp only [intervalIntegral.integral_neg, signedHeat] at he
  simp only [neg_zero, zero_mul, Real.exp_zero, mul_one] at he
  unfold signedHeatRemainder signedHeat
  linarith

/-- Exact universal terminal constant, independent of the size of the source inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
