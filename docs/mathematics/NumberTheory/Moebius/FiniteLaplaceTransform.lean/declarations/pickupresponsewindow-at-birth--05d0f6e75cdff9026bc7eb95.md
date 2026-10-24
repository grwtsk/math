# pickupResponseWindow_at_birth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1916abf-371a-c904-07e0-29cf47c4ebe7",
  "kind": "theorem",
  "lexical_name": "pickupResponseWindow_at_birth",
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
  "slug": "pickupresponsewindow-at-birth--05d0f6e75cdff9026bc7eb95",
  "source": {
    "blob": "99ec3cd35e67734ba05ca5b4a04a012e8950660f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05d0f6e75cdff9026bc7eb9503273afcec6a5e8fb567ae9b3fe4ea45b1c5bc4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1916abf-371a-c904-07e0-29cf47c4ebe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupResponseWindow_at_birth {n : ℕ} (hn : 1 ≤ n) (z : ℂ) :
    noteWindowLaplace (pickupResponse n) z (Real.log n) = 0 := by
  have ha : 0 ≤ Real.log (n:ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  unfold noteWindowLaplace
  rw [max_eq_right ha]
  calc
    _ = ∫ u in (0:ℝ)..Real.log n, (0:ℂ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le ha] at hu
      by_cases h : Real.log n ≤ u
      · have he : u = Real.log n := le_antisymm hu.2 h
        simp [he, pickupResponse_at_event hn]
      · simp [pickupResponse, h]
    _ = 0 := intervalIntegral.integral_zero

/-- The individual active response, with the endpoint born exactly at T included. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99ec3cd35e67734ba05ca5b4a04a012e8950660f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
