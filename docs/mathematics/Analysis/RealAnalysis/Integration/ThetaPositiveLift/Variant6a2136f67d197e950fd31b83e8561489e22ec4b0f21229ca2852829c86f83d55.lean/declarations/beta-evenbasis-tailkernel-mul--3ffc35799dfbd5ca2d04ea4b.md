# beta_evenBasis_tailKernel_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1b013a2-cb88-6723-5f8f-355674cba51b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40407b29-f379-1514-9ef3-89680e6544af",
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
  "slug": "beta-evenbasis-tailkernel-mul--3ffc35799dfbd5ca2d04ea4b",
  "source": {
    "blob": "3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ffc35799dfbd5ca2d04ea4b74dcd8b7787c4eb4020190d952a291ab0e3c1a00",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40407b29-f379-1514-9ef3-89680e6544af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–93.

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

/-- The successor-indexed literal tail kernel paired with the unchanged even basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
