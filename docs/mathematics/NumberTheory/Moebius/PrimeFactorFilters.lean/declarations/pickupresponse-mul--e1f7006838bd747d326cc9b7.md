# pickupResponse_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:429b9a79-7360-033c-80fb-e0a7597cbcd7",
  "kind": "theorem",
  "lexical_name": "pickupResponse_mul",
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
  "slug": "pickupresponse-mul--e1f7006838bd747d326cc9b7",
  "source": {
    "blob": "93f40c8579ed255545301f8961f6e29a2d12cb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1f7006838bd747d326cc9b7a4623267fcc2f4a6f3f0e183113d9d845e5d53ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:429b9a79-7360-033c-80fb-e0a7597cbcd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupResponse_mul {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) :
    pickupResponse (m * n) = fun u ↦
      (Real.sqrt m)⁻¹ * causalShift (Real.log m) (pickupResponse n) u := by
  have hm0 : (m : ℝ) ≠ 0 := by exact_mod_cast (by omega : m ≠ 0)
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (by omega : n ≠ 0)
  rw [pickupResponse_eq_causal_note (by nlinarith : 1 ≤ m * n)]
  funext u
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg m), mul_inv_rev,
    Real.log_mul hm0 hn0, ← causalShift_add (Real.log_nonneg (by exact_mod_cast hm))
      (Real.log_nonneg (by exact_mod_cast hn))]
  rw [pickupResponse_eq_causal_note hn]
  by_cases h : Real.log (m : ℝ) ≤ u
  · simp only [causalShift, if_pos h]
    ring
  · simp [causalShift, h]

/-- Finite set expansion; each subset creates exactly one squarefree note. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f40c8579ed255545301f8961f6e29a2d12cb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
