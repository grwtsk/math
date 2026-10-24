# reciprocal_second_difference_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d68a74b-c3a9-0303-30a8-9fc74d70c771",
  "kind": "theorem",
  "lexical_name": "reciprocal_second_difference_nonneg",
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
  "slug": "reciprocal-second-difference-nonneg--177a540f11e718bcde3f760b",
  "source": {
    "blob": "f84648a1454f439850ac0ba78e3f5320a39a87f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:177a540f11e718bcde3f760b074598c04685cc0355ee6983be3b5a7cca3d0325",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d68a74b-c3a9-0303-30a8-9fc74d70c771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_second_difference_nonneg
    {b : ℕ} (hb : 1 ≤ b) :
    0 ≤
      (((b : ℝ))⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) -
        ((((b + 1 : ℕ) : ℝ))⁻¹ -
          (((b + 2 : ℕ) : ℝ))⁻¹) := by
  have hbR : (0 : ℝ) < b := by exact_mod_cast hb
  have hb1R : (0 : ℝ) < b + 1 := by positivity
  have hb2R : (0 : ℝ) < b + 2 := by positivity
  push_cast
  field_simp [ne_of_gt hbR, ne_of_gt hb1R, ne_of_gt hb2R]
  nlinarith

/-- The exact harmonic weighted Chowla average can be written on the contiguous
active shift range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f84648a1454f439850ac0ba78e3f5320a39a87f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
