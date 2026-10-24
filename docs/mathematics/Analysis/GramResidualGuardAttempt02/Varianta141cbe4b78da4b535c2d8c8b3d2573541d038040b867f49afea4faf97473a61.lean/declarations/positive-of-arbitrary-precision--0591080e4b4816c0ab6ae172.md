# positive_of_arbitrary_precision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10b754b5-5e93-cb84-381e-4dac4f22abec",
  "kind": "theorem",
  "lexical_name": "positive_of_arbitrary_precision",
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
  "slug": "positive-of-arbitrary-precision--0591080e4b4816c0ab6ae172",
  "source": {
    "blob": "459ffcc01c55134447a189e118bf2e977b39099c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 55,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0591080e4b4816c0ab6ae17202b78502aec3de0fda7dbab59a4d0f50b7a8db84",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10b754b5-5e93-cb84-381e-4dac4f22abec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_of_arbitrary_precision (H : E →L[𝕜] E) (hH : H.IsSymmetric)
    (happrox : ∀ ε : ℝ, 0 < ε → ∃ P : E →L[𝕜] E, P.IsPositive ∧ ‖H-P‖ ≤ ε) :
    H.IsPositive := by
  refine ⟨hH,fun u => ?_⟩
  by_cases hu : u=0
  · simp [hu,ContinuousLinearMap.reApplyInnerSelf]
  have hn : 0 < ‖u‖^2 := sq_pos_of_pos (norm_pos_iff.mpr hu)
  apply le_of_forall_pos_le_add
  intro ε hε
  obtain ⟨P,hP,hHP⟩ := happrox (ε/‖u‖^2) (div_pos hε hn)
  have hl := positive_approximation_lower H P hP u
  have hb : ‖H-P‖*‖u‖^2 ≤ ε := by
    calc
      _ ≤ (ε/‖u‖^2)*‖u‖^2 := mul_le_mul_of_nonneg_right hHP hn.le
      _ = ε := div_mul_cancel₀ _ hn.ne'
  linarith

section Gram
variable {F : Type*} [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
variable [CompleteSpace E] [CompleteSpace F]

/-- Exact rectangular Gram factorization retains its residual's norm and the actual state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459ffcc01c55134447a189e118bf2e977b39099c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
