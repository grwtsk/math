# thetaRemainder_half_cutoff_tail_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6baa7d12be4d633dc99db316470f2cf2a9796d80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2127948-ce5b-2c6d-2af2-c245821571dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79c02235-86f5-33dc-423a-cd9fe5c76b26",
  "kind": "theorem",
  "lexical_name": "thetaRemainder_half_cutoff_tail_abs_le",
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
  "slug": "thetaremainder-half-cutoff-tail-abs-le--eb98e20d21093095ae616ead",
  "source": {
    "blob": "6baa7d12be4d633dc99db316470f2cf2a9796d80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTail/Variante2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb98e20d21093095ae616ead2436f6f2e1d99259ff602eb57d2034e1b5715dd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTail/Variante2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c02235-86f5-33dc-423a-cd9fe5c76b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRemainder_half_cutoff_tail_abs_le (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h*g^2)| ≤
      ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  calc
    _ ≤ ∑ g ∈ Ioc Y G, |ThetaRemainder.thetaRemainder A (h*g^2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Ioc Y G, (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      have hg1 : 1 ≤ g := by have h := (mem_Ioc.mp hg).1; omega
      have hq : 1 ≤ h*g^2 := Nat.mul_pos hh (Nat.pow_pos hg1)
      have he := ThetaKernelEstimate.thetaRemainder_abs_le_kernelBound A (h*g^2) hA hq
      rw [sqrt_square_scale] at he
      simpa only [div_eq_mul_inv, mul_inv_rev, one_mul, mul_assoc, mul_comm, mul_left_comm] using he
    _ = (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Ioc Y G, 1 / (g : ℝ) := by rw [mul_sum]
    _ ≤ _ := by
      have hk : 0 ≤ ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) :=
        div_nonneg (ThetaKernelEstimate.kernelBound_nonneg A hA) (Real.sqrt_nonneg _)
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (reciprocal_half_cutoff_tail_le Y G hYG hhalf) hk

end
end HalfCutoffTailScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTail/Variante2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTail/Variante2068c3c8b14be96a825d1cb8e014a0cd54b6021f23f789c8f039c9e8294879d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baa7d12be4d633dc99db316470f2cf2a9796d80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
