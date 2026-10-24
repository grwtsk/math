# secondWeight_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe2ecc93-c550-02a5-6083-992b7d0dcd1a",
  "kind": "theorem",
  "lexical_name": "secondWeight_eq_integral",
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
  "slug": "secondweight-eq-integral--394c259e506892fafffbe5f4",
  "source": {
    "blob": "fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 204,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394c259e506892fafffbe5f4aa1bef41fa4315ed12edbd53b9fd718e1c534ec7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe2ecc93-c550-02a5-6083-992b7d0dcd1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondWeight_eq_integral {v X : ℝ} (hv : 0 < v) (hvX : v ≤ X) :
    secondWeight v X = ∫ x in v..X, Real.log (X / x) / (x * Real.sqrt x) := by
  have hX := hv.trans_le hvX
  have hc : ContinuousOn (fun x ↦ -Real.log (X / x) / (x * Real.sqrt x)) (Icc v X) := by
    intro x hx
    have hx0 := hv.trans_le hx.1
    apply ContinuousAt.continuousWithinAt
    fun_prop (disch := first | exact hx0.ne' | exact (Real.sqrt_pos.2 hx0).ne' |
      exact ne_of_gt (div_pos hX hx0) | exact mul_ne_zero hx0.ne' (Real.sqrt_pos.2 hx0).ne')
  have hi : IntervalIntegrable (fun x ↦ -Real.log (X / x) / (x * Real.sqrt x)) volume v X :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hvX).2 hc.integrableOn_Icc
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx ↦ secondWeight_hasDerivAt
      (hv.trans_le (show x ∈ Icc v X by simpa only [uIcc_of_le hvX] using hx).1) hX) hi
  rw [secondWeight_upper hX] at h
  have hn : (fun x : ℝ ↦ -Real.log (X / x) / (x * Real.sqrt x)) =
      fun x ↦ -(Real.log (X / x) / (x * Real.sqrt x)) := by
    funext x
    ring
  rw [hn, intervalIntegral.integral_neg] at h
  linarith

/-- Each J weight is nonnegative; cancellation of the signed Möbius sum is still separate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
