# fullLengthCoefficientMass_at_leftScale_le_three_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c060191-fc1e-37b6-baf0-ee55eceb3172",
  "kind": "theorem",
  "lexical_name": "fullLengthCoefficientMass_at_leftScale_le_three_inv",
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
  "slug": "fulllengthcoefficientmass-at-leftscale-le-three-inv--554cd5e16f042992ca4e7b16",
  "source": {
    "blob": "7ec304e3791139f6bdfc9fe385ab886e5502f90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554cd5e16f042992ca4e7b16ab2a9f9ec3bf7f87fa38c3539162b5c0817be9cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c060191-fc1e-37b6-baf0-ee55eceb3172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullLengthCoefficientMass_at_leftScale_le_three_inv
    (j : ℕ) :
    fullLengthCoefficientMass j (2 ^ j) ≤
      3 * (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  rw [fullLengthCoefficientMass_at_leftScale]
  calc
    leftLengthCoefficientMass j (2 ^ j) ≤
        (((2 ^ j : ℕ) : ℝ))⁻¹ :=
      leftLengthCoefficientMass_at_leftScale_le_inv j
    _ ≤ 3 * (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      have hnonneg : 0 ≤ (((2 ^ j : ℕ) : ℝ))⁻¹ := by positivity
      nlinarith

/-- The corrected piecewise coefficient-mass target is now inhabited with
universal constant three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ec304e3791139f6bdfc9fe385ab886e5502f90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
