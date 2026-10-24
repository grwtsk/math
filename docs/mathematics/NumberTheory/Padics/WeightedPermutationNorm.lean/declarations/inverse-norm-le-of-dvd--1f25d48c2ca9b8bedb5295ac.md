# inverse_norm_le_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c737e6d-9969-0b55-b620-22393c26d823",
  "kind": "theorem",
  "lexical_name": "inverse_norm_le_of_dvd",
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
  "slug": "inverse-norm-le-of-dvd--1f25d48c2ca9b8bedb5295ac",
  "source": {
    "blob": "aedebc589a6d82162354c8cee08b70f81e899c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f25d48c2ca9b8bedb5295ac5b029ace9cb35145cdfad292b130b053ab07b889",
  "verification": {
    "reference": "docs/verification/NumberTheory/Padics/WeightedPermutationNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c737e6d-9969-0b55-b620-22393c26d823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_norm_le_of_dvd (a b : ℤ) (hb : b ≠ 0) (hab : a ∣ b) :
    padicNorm p (1 / (a : ℚ)) ≤ padicNorm p (1 / (b : ℚ)) := by
  obtain ⟨t, rfl⟩ := hab
  have ha : a ≠ 0 := left_ne_zero_of_mul hb
  have ht : t ≠ 0 := right_ne_zero_of_mul hb
  have haq : (a : ℚ) ≠ 0 := Int.cast_ne_zero.mpr ha
  have htq : (t : ℚ) ≠ 0 := Int.cast_ne_zero.mpr ht
  have he : (1 / (a : ℚ)) = (t : ℚ) * (1 / ((a * t : ℤ) : ℚ)) := by
    simp only [Int.cast_mul]
    field_simp [haq, htq]
  rw [he, padicNorm.mul]
  simpa only [one_mul] using
    mul_le_mul_of_nonneg_right (padicNorm.of_int t)
      (padicNorm.nonneg (1 / ((a * t : ℤ) : ℚ)))

/-- Exact link to Mathlib factorization; not a supplied independent cost coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Padics/WeightedPermutationNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aedebc589a6d82162354c8cee08b70f81e899c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
