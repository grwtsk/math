# actualUnitTilt_sq_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa504c7-b222-47b8-8e4c-c9e421c9dec4",
  "kind": "theorem",
  "lexical_name": "actualUnitTilt_sq_integrable",
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
  "slug": "actualunittilt-sq-integrable--433fd7c93ed7dada808e3562",
  "source": {
    "blob": "e4e42ccabbcb11c828d738a4bd60d89bfdca7cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433fd7c93ed7dada808e3562d8ef33db81f15d4c7aa945ad83fdf3f2a6f0524e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa504c7-b222-47b8-8e4c-c9e421c9dec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitTilt_sq_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun x => actualUnitTilt A x ^ 2) volume := by
  have hp : 0 < A := by linarith
  have hc : Continuous (actualUnitTilt A) :=
    (normalizedTest_contDiff A hp).continuous.mul Real.continuous_exp
  have hs : HasCompactSupport (actualUnitTilt A) :=
    (normalizedTest_hasCompactSupport A hp).mul_right
  have hs2 : HasCompactSupport (fun x => actualUnitTilt A x ^ 2) := by
    rw [hasCompactSupport_iff_eventuallyEq] at hs ⊢
    filter_upwards [hs] with x hx
    simpa only [Pi.zero_apply, hx, zero_pow (by norm_num : (2 : ℕ) ≠ 0)]
  have hc2 : Continuous (fun x => actualUnitTilt A x ^ 2) := hc.pow 2
  exact hc2.integrable_of_hasCompactSupport hs2

/-- No energy is lost outside the genuine source support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4e42ccabbcb11c828d738a4bd60d89bfdca7cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
