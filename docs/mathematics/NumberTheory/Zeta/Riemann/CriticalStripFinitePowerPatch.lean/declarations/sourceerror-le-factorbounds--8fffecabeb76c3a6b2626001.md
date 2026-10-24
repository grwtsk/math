# sourceError_le_factorBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a216f33f-554b-0da2-39aa-a07f56750cb9",
  "kind": "theorem",
  "lexical_name": "sourceError_le_factorBounds",
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
  "slug": "sourceerror-le-factorbounds--8fffecabeb76c3a6b2626001",
  "source": {
    "blob": "d6fa16ca87f7c433a0cb410b2fc81bcda20cd858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fffecabeb76c3a6b262600142be5bfd97d558d7792980a317b12cfeb82a7633",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a216f33f-554b-0da2-39aa-a07f56750cb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceError_le_factorBounds (e : FinitePowerEnclosure N s)
    {σ R₀ R₁ : ℝ} (hσ : 0 < σ) (h₀ : ‖s‖ ≤ R₀) (h₁ : ‖s - 1‖ ≤ R₁) :
    e.sourceError σ ≤ R₀ * R₁ * ((N : ℝ) ^ (-σ) / σ) +
      R₁ * (∑ k ∈ Finset.Icc 1 N, e.error k) + e.endpoint_error := by
  have h₀pos : 0 ≤ R₀ := (norm_nonneg s).trans h₀
  have ht : 0 ≤ (N : ℝ) ^ (-σ) / σ :=
    div_nonneg (Real.rpow_nonneg (Nat.cast_nonneg N) _) hσ.le
  have htail := mul_le_mul_of_nonneg_right
    (mul_le_mul h₀ h₁ (norm_nonneg _) h₀pos) ht
  have hterms := mul_le_mul_of_nonneg_right h₁ (Finset.sum_nonneg e.error_nonneg)
  unfold sourceError finiteError
  linarith

/-- This coarser expression is useful when complex norms are supplied by rational
upper bounds. It must be proved, not substituted for the exact error by a label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6fa16ca87f7c433a0cb410b2fc81bcda20cd858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
