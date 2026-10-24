# upperChannel_eq_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bbb8b4406c8675e93758062ef025d02c0c47bc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89a6982b-7b94-0c8e-ddab-13e8c0980344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:939e599f-79fe-b7ee-18a8-684fd002e428",
  "kind": "theorem",
  "lexical_name": "upperChannel_eq_reflection",
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
  "slug": "upperchannel-eq-reflection--decf8af4997a6627cd41ae59",
  "source": {
    "blob": "4bbb8b4406c8675e93758062ef025d02c0c47bc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:decf8af4997a6627cd41ae5940a9037b1cbf4f395653952a164024b7e2ad4d9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939e599f-79fe-b7ee-18a8-684fd002e428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperChannel_eq_reflection (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 1 ≤ k) :
    UpperBoundaryChannels.upperChannel A k = Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ, finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x *
        finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (Real.log k - x) := by
  rw [finiteObservation_reflection_eq A (Real.log k) _ _ hA]
  simp only [UpperBoundaryChannels.upperChannel, JointBoundaryTransport.rectangle, mul_sum]
  apply sum_congr rfl
  intro i hi
  apply sum_congr rfl
  intro j hj
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hj1 : 1 ≤ j := by have := (mem_Ioc.mp hj).1; omega
  have hk0 : (k : ℝ) ≠ 0 := by exact_mod_cast (show k ≠ 0 by omega)
  have hi0 : (i : ℝ) ≠ 0 := by exact_mod_cast (show i ≠ 0 by omega)
  have hj0 : (j : ℝ) ≠ 0 := by exact_mod_cast (show j ≠ 0 by omega)
  rw [UpperBoundaryChannels.channelKernel_eq_correlation_weight A k (i * j) hA hk
    (Nat.mul_pos hi1 hj1)]
  simp only [Nat.cast_mul, Real.log_mul hk0 (mul_ne_zero hi0 hj0), Real.log_mul hi0 hj0,
    Real.sqrt_mul (Nat.cast_nonneg k), Real.sqrt_mul (Nat.cast_nonneg i),
    div_eq_mul_inv, mul_inv_rev]
  rw [show Real.log (k : ℝ) + (Real.log (i : ℝ) + Real.log (j : ℝ)) =
    Real.log (k : ℝ) + Real.log (i : ℝ) + Real.log (j : ℝ) by ring]
  ring

/-- This upper comparison controls the original channel by a genuine local norm of the same test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bbb8b4406c8675e93758062ef025d02c0c47bc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
