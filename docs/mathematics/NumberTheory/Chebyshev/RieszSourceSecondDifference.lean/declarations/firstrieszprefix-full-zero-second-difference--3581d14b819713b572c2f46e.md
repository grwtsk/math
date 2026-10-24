# firstRieszPrefix_full_zero_second_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cda04fe-54ee-3edd-ca19-c71e26bfb6fe",
  "kind": "theorem",
  "lexical_name": "firstRieszPrefix_full_zero_second_difference",
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
  "slug": "firstrieszprefix-full-zero-second-difference--3581d14b819713b572c2f46e",
  "source": {
    "blob": "43128d83d22f0fe4d49bf12917ac56024bbcb307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3581d14b819713b572c2f46e8a38f10fd5e17b45576830b5a0383248b197b354",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cda04fe-54ee-3edd-ca19-c71e26bfb6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstRieszPrefix_full_zero_second_difference (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hN : x + h ≤ N) :
    ((firstRieszPrefix N (x + h) - 2 * firstRieszPrefix N x +
      firstRieszPrefix N (x - h) : ℝ) : ℂ) =
      (h : ℂ) ^ 2 +
        (fullRieszZeroValue (x + h) - 2 * fullRieszZeroValue x +
          fullRieszZeroValue (x - h)) +
        (h : ℂ) * (rationalTentCorrection x h : ℂ) := by
  have hs := firstRieszPrefix_second_difference N x h hh
  have hz := fullRieszZeroValue_second_difference x h hh ha
  have ht := general_tent_source_eq_tsum x h hh ha
  rw [tentMangoldt_eq_prefix N x h hh hN] at ht
  have hhc : (h : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hh
  have hz' := (div_eq_iff hhc).mp hz
  rw [hs]
  push_cast
  push_cast at ht
  rw [ht]
  linear_combination -hz'

/-- The remaining source defect after the explicit quadratic pole and the
actual first-Riesz zero series. Its affine normalization is not set to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43128d83d22f0fe4d49bf12917ac56024bbcb307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
