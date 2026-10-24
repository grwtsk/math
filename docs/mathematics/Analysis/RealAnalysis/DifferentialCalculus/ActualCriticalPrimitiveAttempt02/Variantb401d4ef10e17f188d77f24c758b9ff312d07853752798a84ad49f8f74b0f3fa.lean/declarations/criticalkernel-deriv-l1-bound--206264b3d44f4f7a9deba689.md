# criticalKernel_deriv_L1_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e740fc774ea2ff6601e712e9eb12c04a6bb1b99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b401d4ef10e17f188d77f24c758b9ff312d07853752798a84ad49f8f74b0f3fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06a7940e-cd3d-e230-3d20-4dda94542be1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:641396d8-8b9e-e21e-1592-09a025c339ec",
  "kind": "theorem",
  "lexical_name": "criticalKernel_deriv_L1_bound",
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
  "slug": "criticalkernel-deriv-l1-bound--206264b3d44f4f7a9deba689",
  "source": {
    "blob": "4e740fc774ea2ff6601e712e9eb12c04a6bb1b99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variantb401d4ef10e17f188d77f24c758b9ff312d07853752798a84ad49f8f74b0f3fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:206264b3d44f4f7a9deba68994e82f1418ccf40812516974d9bc03af1ddd7a49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variantb401d4ef10e17f188d77f24c758b9ff312d07853752798a84ad49f8f74b0f3fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641396d8-8b9e-e21e-1592-09a025c339ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalKernel_deriv_L1_bound (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, |deriv (criticalKernel A) t|) ≤
      130 / (3 * A) + Real.sqrt (65 / 3 : ℝ) := by
  have hp : 0 < A := by linarith
  have hi : IntervalIntegrable (fun t => |deriv (criticalKernel A) t|) volume 0 (2 * A) :=
    ((criticalKernel_contDiff A hp).continuous_deriv_one.abs).intervalIntegrable _ _
  have hbound := intervalIntegral.integral_mono_on (by linarith : (0 : ℝ) ≤ 2 * A) hi
    (intervalIntegrable_const (μ := volume))
    (fun t _ => criticalKernel_deriv_abs_le A t hA)
  rw [intervalIntegral.integral_const] at hbound
  simp only [sub_zero, smul_eq_mul] at hbound
  convert hbound using 1
  field_simp
  ring

/-- Existence of the signed primitive work is established independently of M. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variantb401d4ef10e17f188d77f24c758b9ff312d07853752798a84ad49f8f74b0f3fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variantb401d4ef10e17f188d77f24c758b9ff312d07853752798a84ad49f8f74b0f3fa.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e740fc774ea2ff6601e712e9eb12c04a6bb1b99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
