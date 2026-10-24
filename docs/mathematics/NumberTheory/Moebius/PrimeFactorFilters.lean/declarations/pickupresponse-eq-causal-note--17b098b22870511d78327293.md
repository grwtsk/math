# pickupResponse_eq_causal_note

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcbe010a-6419-38b5-754e-90f811ceb0dd",
  "kind": "theorem",
  "lexical_name": "pickupResponse_eq_causal_note",
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
  "slug": "pickupresponse-eq-causal-note--17b098b22870511d78327293",
  "source": {
    "blob": "93f40c8579ed255545301f8961f6e29a2d12cb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 34,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17b098b22870511d78327293b63ad24bab0170c26be44dfebc9079028ea65776",
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

Occurrence: `result:fcbe010a-6419-38b5-754e-90f811ceb0dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupResponse_eq_causal_note {n : ℕ} (hn : 1 ≤ n) :
    pickupResponse n = fun u ↦ (Real.sqrt n)⁻¹ * causalShift (Real.log n) baseNote u := by
  funext u
  by_cases h : Real.log n ≤ u
  · have he : Real.exp (-(u - Real.log n) / 2) =
        Real.exp (-u / 2) * Real.sqrt n := by
      rw [show -(u - Real.log (n : ℝ)) / 2 = -u / 2 + Real.log n / 2 by ring,
        Real.exp_add]
      congr 1
      have hi := congrArg (fun x : ℝ ↦ x⁻¹) (pickup_exp_negative_log_half hn)
      simpa only [show -Real.log (n : ℝ) / 2 = -(Real.log n / 2) by ring,
        Real.exp_neg, inv_inv] using hi
    have hs : Real.sqrt n ≠ 0 := (Real.sqrt_pos.mpr (by exact_mod_cast hn)).ne'
    simp only [causalShift, if_pos h, baseNote]
    simp only [pickupResponse, Nat.cast_one, Real.log_one, Real.sqrt_one, inv_one,
      if_pos h, if_pos (show (0 : ℝ) ≤ u - Real.log n by linarith), he]
    field_simp
  · simp [pickupResponse, causalShift, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f40c8579ed255545301f8961f6e29a2d12cb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
