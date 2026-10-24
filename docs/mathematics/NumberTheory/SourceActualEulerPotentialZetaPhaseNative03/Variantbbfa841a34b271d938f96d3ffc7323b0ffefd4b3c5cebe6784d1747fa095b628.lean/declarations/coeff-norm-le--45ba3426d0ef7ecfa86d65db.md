# coeff_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:043ce701-5281-36b4-14fd-b659d6f9873d",
  "kind": "theorem",
  "lexical_name": "coeff_norm_le",
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
  "slug": "coeff-norm-le--45ba3426d0ef7ecfa86d65db",
  "source": {
    "blob": "f97c0db67477206f236b65fec11bbf63761e31b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45ba3426d0ef7ecfa86d65db1d10d71014c4aa78765367f81bd5c7fc86f9e72f",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:043ce701-5281-36b4-14fd-b659d6f9873d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coeff_norm_le (n : ℕ) : ‖coeff n‖ ≤ 1 := by
  rcases eq_or_ne n 0 with rfl | hn0
  · simp [coeff]
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [coeff]
  have hn2 : 2 ≤ n := by omega
  have hl : 0 < Real.log (n:ℝ) := Real.log_pos (by exact_mod_cast hn2)
  rw [coeff, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (div_nonneg ArithmeticFunction.vonMangoldt_nonneg hl.le)]
  exact (div_le_one hl).mpr ArithmeticFunction.vonMangoldt_le_log

/-- Literal full actual logarithmic coefficient L-series, not a transform defined by a target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f97c0db67477206f236b65fec11bbf63761e31b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
