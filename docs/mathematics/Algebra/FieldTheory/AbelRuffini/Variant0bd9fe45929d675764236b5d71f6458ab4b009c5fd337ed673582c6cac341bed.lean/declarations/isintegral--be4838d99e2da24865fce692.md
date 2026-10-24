# isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1beac92b-35ed-1006-6181-a37b5e4495df",
  "kind": "theorem",
  "lexical_name": "isIntegral",
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
  "slug": "isintegral--be4838d99e2da24865fce692",
  "source": {
    "blob": "75eafad64b1f5ea8a7ec279c95e2d0dd1aa2b179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 295,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be4838d99e2da24865fce6928e6306483083009e8042884a330278fc8ad6c608",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1beac92b-35ed-1006-6181-a37b5e4495df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral (α : solvableByRad F E) : IsIntegral F α := by
  revert α
  apply solvableByRad.induction
  · exact fun _ => isIntegral_algebraMap
  · exact fun _ _ => isIntegral_add
  · exact fun _ => isIntegral_neg
  · exact fun _ _ => isIntegral_mul
  · intro α hα
    exact Subalgebra.inv_mem_of_algebraic (integralClosure F (solvableByRad F E))
      (show IsAlgebraic F ↑(⟨α, hα⟩ : integralClosure F (solvableByRad F E)) from
        isAlgebraic_iff_isIntegral.mpr hα)
  · intro α n hn hα
    obtain ⟨p, h1, h2⟩ := isAlgebraic_iff_isIntegral.mpr hα
    refine' isAlgebraic_iff_isIntegral.mp ⟨p.comp (X ^ n),
      ⟨fun h => h1 (leadingCoeff_eq_zero.mp _), by rw [aeval_comp, aeval_X_pow, h2]⟩⟩
    rwa [← leadingCoeff_eq_zero, leadingCoeff_comp, leadingCoeff_X_pow, one_pow, mul_one] at h
    rwa [natDegree_X_pow]
#align solvable_by_rad.is_integral solvableByRad.isIntegral

/-- The statement to be proved inductively -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75eafad64b1f5ea8a7ec279c95e2d0dd1aa2b179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
