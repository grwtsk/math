# pickupWeightedPrefix_eq_reciprocalPartialSummation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3efaaa86-abaf-683f-4dc2-c8b968b27613",
  "kind": "theorem",
  "lexical_name": "pickupWeightedPrefix_eq_reciprocalPartialSummation",
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
  "slug": "pickupweightedprefix-eq-reciprocalpartialsummation--0473bd907eef39714f7a5cec",
  "source": {
    "blob": "b1bb05abf62c335ef2cd4aa7b091133ab0d83abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 34,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0473bd907eef39714f7a5cecf52927cc9cbb1a439ae2f295cfb1ca2fbe0ef488",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3efaaa86-abaf-683f-4dc2-c8b968b27613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupWeightedPrefix_eq_reciprocalPartialSummation (n : ℕ) :
    pickupWeightedPrefix n =
      Real.sqrt n * pickupReciprocalPrefix n -
        ∑ k ∈ Finset.range n,
          (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) *
            pickupReciprocalPrefix k := by
  induction n with
  | zero => simp [pickupWeightedPrefix, pickupReciprocalPrefix]
  | succ n ih =>
      have hx : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
      have hs : 0 < Real.sqrt ((n + 1 : ℕ) : ℝ) := Real.sqrt_pos.mpr hx
      have hsq : Real.sqrt ((n + 1 : ℕ) : ℝ) ^ 2 = ((n + 1 : ℕ) : ℝ) :=
        Real.sq_sqrt hx.le
      have hinv :
          Real.sqrt ((n + 1 : ℕ) : ℝ) / ((n + 1 : ℕ) : ℝ) =
            (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ := by
        rw [div_eq_iff hx.ne']
        calc
          Real.sqrt ((n + 1 : ℕ) : ℝ) =
              (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ *
                Real.sqrt ((n + 1 : ℕ) : ℝ) ^ 2 := by
            field_simp [hs.ne']
          _ = (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ * ((n + 1 : ℕ) : ℝ) := by
            rw [hsq]
      have hterm :
          Real.sqrt ((n + 1 : ℕ) : ℝ) *
              (moebiusReal (n + 1) / ((n + 1 : ℕ) : ℝ)) =
            moebiusReal (n + 1) * (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ := by
        calc
          _ = moebiusReal (n + 1) *
              (Real.sqrt ((n + 1 : ℕ) : ℝ) / ((n + 1 : ℕ) : ℝ)) := by ring
          _ = _ := by rw [hinv]
      rw [pickupWeightedPrefix, Finset.sum_Icc_succ_top (by omega : 1 ≤ n + 1)]
      change pickupWeightedPrefix n +
          moebiusReal (n + 1) * (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ = _
      rw [ih, pickupReciprocalPrefix_succ, Finset.sum_range_succ, ← hterm]
      ring

/-- Consecutive square-root increments telescope exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixKernel.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bb05abf62c335ef2cd4aa7b091133ab0d83abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
