# integral_zpow_neg_two_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:111b03ee-0ba5-2d82-9ded-b43aeca55a17",
  "kind": "theorem",
  "lexical_name": "integral_zpow_neg_two_unit",
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
  "slug": "integral-zpow-neg-two-unit--b164c866f6f782b7893e077a",
  "source": {
    "blob": "588588a31a7264d3b24944f33c82c035414ca8f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b164c866f6f782b7893e077a26e1177a5b992d845923f5b616a8378f52a2a54c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111b03ee-0ba5-2d82-9ded-b43aeca55a17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_zpow_neg_two_unit
    {N : ℕ}
    (hN : 1 ≤ N) :
    (∫ x : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ),
      x ^ (-2 : ℤ)) =
      ((N : ℝ))⁻¹ - (((N + 1 : ℕ) : ℝ))⁻¹ := by
  rw [intervalIntegral.integral_zpow]
  · norm_num [zpow_neg]
    field_simp
    ring
  · right
    constructor
    · norm_num
    · simp only [Set.mem_uIcc]
      intro hzero
      rcases hzero with hzero | hzero <;> nlinarith

/-- For every positive integer interval, the algebraic unit kernel is exactly
the classical inverse-square integral contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `588588a31a7264d3b24944f33c82c035414ca8f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
