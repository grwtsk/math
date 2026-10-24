# criticalEndpointGap_sq_le_inv_mul_succ_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66a8ef34-e821-b1b4-bd44-3c4876a1fbb2",
  "kind": "theorem",
  "lexical_name": "criticalEndpointGap_sq_le_inv_mul_succ_sq",
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
  "slug": "criticalendpointgap-sq-le-inv-mul-succ-sq--1a4b3ff6210b9ea871292643",
  "source": {
    "blob": "ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4b3ff6210b9ea871292643371a3766d69f0108b0bef0188fbf723de82158ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66a8ef34-e821-b1b4-bd44-3c4876a1fbb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalEndpointGap_sq_le_inv_mul_succ_sq {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n ^ 2 ≤
      1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hsqrt : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hnpos
  have h := (sq_le_sq₀ (criticalEndpointGap_nonneg hn)
    (by positivity : 0 ≤ 1 / (Real.sqrt n * ((n + 1 : ℕ) : ℝ)))).2
      (criticalEndpointGap_le_inv_sqrt_mul_succ hn)
  calc
    criticalEndpointGap n ^ 2 ≤
        (1 / (Real.sqrt n * ((n + 1 : ℕ) : ℝ))) ^ 2 := h
    _ = 1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2) := by
      rw [div_pow]
      field_simp [hsqrt.ne', hspos.ne', Real.sq_sqrt hnpos.le]
      exact (Real.sq_sqrt hnpos.le).symm

/-- Explicit `M(n)^2 / n^(2+ε)`-scale summability premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
