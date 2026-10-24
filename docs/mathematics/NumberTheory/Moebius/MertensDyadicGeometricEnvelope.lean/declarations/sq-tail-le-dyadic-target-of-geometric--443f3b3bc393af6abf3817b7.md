# sq_tail_le_dyadic_target_of_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f196e7ca-1801-2674-4967-3969e6ed97d3",
  "kind": "theorem",
  "lexical_name": "sq_tail_le_dyadic_target_of_geometric",
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
  "slug": "sq-tail-le-dyadic-target-of-geometric--443f3b3bc393af6abf3817b7",
  "source": {
    "blob": "74a87969887ecee95536db010bad2b0434389bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:443f3b3bc393af6abf3817b75a31ee3c9a693a20acb703ecd302ae3d48368081",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f196e7ca-1801-2674-4967-3969e6ed97d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_tail_le_dyadic_target_of_geometric
    {T C ρ : ℝ} (j : ℕ) {δ : ℝ}
    (hδ : 0 ≤ δ)
    (hT0 : 0 ≤ T) (hC : 0 ≤ C)
    (_hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1)
    (hT : T ≤
      C * dyadicMertensSquareRootEpsilonScale j δ * (1 - ρ)⁻¹) :
    T ^ 2 ≤
      (C * (1 - ρ)⁻¹) ^ 2 *
        (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  have hinv0 : 0 ≤ (1 - ρ)⁻¹ := by
    positivity
  have hright0 :
      0 ≤ C * dyadicMertensSquareRootEpsilonScale j δ *
        (1 - ρ)⁻¹ := by
    exact mul_nonneg
      (mul_nonneg hC
        (dyadicMertensSquareRootEpsilonScale_nonneg j δ))
      hinv0
  have hsquare :
      T ^ 2 ≤
        (C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹) ^ 2 :=
    (sq_le_sq₀ hT0 hright0).2 hT
  calc
    T ^ 2 ≤
        (C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹) ^ 2 := hsquare
    _ = (C * (1 - ρ)⁻¹) ^ 2 *
        dyadicMertensSquareRootEpsilonScale j δ ^ 2 := by
      ring
    _ ≤ (C * (1 - ρ)⁻¹) ^ 2 *
        ((((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      exact mul_le_mul_of_nonneg_left
        (dyadicMertensSquareRootEpsilonScale_sq_le_target j hδ)
        (sq_nonneg _)
    _ = (C * (1 - ρ)⁻¹) ^ 2 *
        (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      ring

/-- The geometric descendant envelope supplies the ordinary-Mertens dyadic-tail
square-root-energy premise from PR #614. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a87969887ecee95536db010bad2b0434389bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
