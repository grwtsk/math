# literal_period_residual_abs_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3e9ada5-d682-b425-7afb-6a2aafdaf1f9",
  "kind": "theorem",
  "lexical_name": "literal_period_residual_abs_le_pi",
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
  "slug": "literal-period-residual-abs-le-pi--9a4d38343ada06111e67d06e",
  "source": {
    "blob": "e87a93636cdf6a3cf4bfbae020aedd5c7167c9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a4d38343ada06111e67d06eedd0b58f46cf9037507db303a94ff104148f2d76",
  "verification": {
    "reference": "docs/verification/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3e9ada5-d682-b425-7afb-6a2aafdaf1f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_period_residual_abs_le_pi (t : ℝ) : |periodResidual t| ≤ Real.pi := by
  have h := abs_sub_round (t / (2 * Real.pi))
  have he : periodResidual t =
      (t / (2 * Real.pi) - (nearestPeriod t : ℝ)) * (2 * Real.pi) := by
    unfold periodResidual
    field_simp [Real.pi_ne_zero]
  rw [he, abs_mul, abs_of_pos (by positivity : (0 : ℝ) < 2 * Real.pi)]
  have h' := mul_le_mul_of_nonneg_right h (by positivity : (0 : ℝ) ≤ 2 * Real.pi)
  calc
    _ ≤ (1 / 2) * (2 * Real.pi) := h'
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e87a93636cdf6a3cf4bfbae020aedd5c7167c9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
