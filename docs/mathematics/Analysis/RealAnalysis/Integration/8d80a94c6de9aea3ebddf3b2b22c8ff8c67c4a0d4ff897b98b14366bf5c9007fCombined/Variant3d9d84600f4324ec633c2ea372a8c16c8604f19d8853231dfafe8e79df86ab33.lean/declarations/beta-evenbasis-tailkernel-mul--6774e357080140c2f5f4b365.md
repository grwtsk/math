# beta_evenBasis_tailKernel_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea89a7d9-2b21-9610-46f8-7b4f024cb6ac",
  "kind": "theorem",
  "lexical_name": "beta_evenBasis_tailKernel_mul",
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
  "slug": "beta-evenbasis-tailkernel-mul--6774e357080140c2f5f4b365",
  "source": {
    "blob": "e79ec9ca9a9e2442eef9e7dacdc6be558cbbf190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6774e357080140c2f5f4b365ec96379eebd53776cb36dd38a52b2e777873a954",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea89a7d9-2b21-9610-46f8-7b4f024cb6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beta_evenBasis_tailKernel_mul (m q : ℕ) (u : ℝ) (hu : 0 ≤ u) :
    (4 : ℝ) ^ (q + 1) *
      (∫ t in Icc (0 : ℝ) u,
        ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) * evenBasis m t) =
      evenBasis (m + q + 1) u := by
  rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hu]
  have hfun : (fun t : ℝ =>
      ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) * evenBasis m t) =
        fun t : ℝ => ((2 : ℝ) ^ (2 * m) /
          (((2 * q + 1).factorial : ℝ) * ((2 * m).factorial : ℝ))) *
            (t ^ (2 * m) * (u - t) ^ (2 * q + 1)) := by
    funext t
    unfold evenBasis
    rw [mul_pow]
    ring
  rw [hfun, intervalIntegral.integral_const_mul,
    integral_pow_mul_sub_pow_nat (2 * m) (2 * q + 1) u hu]
  have hn : 2 * m + (2 * q + 1) + 1 = 2 * (m + q + 1) := by omega
  rw [hn]
  have hpow : (4 : ℝ) ^ (q + 1) * (2 : ℝ) ^ (2 * m) =
      (2 : ℝ) ^ (2 * (m + q + 1)) := by
    rw [show (4 : ℝ) = 2 ^ 2 by norm_num, ← pow_mul, ← pow_add]
    congr 1
    omega
  unfold evenBasis
  rw [mul_pow]
  field_simp
  rw [← hpow]
  ring



```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e79ec9ca9a9e2442eef9e7dacdc6be558cbbf190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
