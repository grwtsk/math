# coreGrowingShiftPrefix_sq_le_shiftEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c0ef0e9-e6f4-d399-c1f6-b5fa7e91bfac",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftPrefix_sq_le_shiftEnvelope",
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
  "slug": "coregrowingshiftprefix-sq-le-shiftenvelope--1f27005a08f908a48ce17fdc",
  "source": {
    "blob": "46930434177d17555a32065d0e7b15762b019a90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 23,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f27005a08f908a48ce17fdc92f9e143110a37c42e0b7a3b9abbac0d3f0324d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c0ef0e9-e6f4-d399-c1f6-b5fa7e91bfac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftPrefix_sq_le_shiftEnvelope
    {j t k : ℕ} (U : ℕ → ℝ)
    (hk : k < harmonicShiftCount j t)
    (hshift :
      ∀ h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
        MertensTwoPointShiftEnvelope j h (U h)) :
    mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1) ^ 2 ≤
      U (harmonicShiftLower j t + k) ^ 2 := by
  have hkUpper :
      harmonicShiftLower j t + k < harmonicShiftUpper j t := by
    unfold harmonicShiftCount at hk
    omega
  have hshiftPos :
      1 ≤ harmonicShiftLower j t + k := by
    have hL : 1 ≤ harmonicShiftLower j t := by
      unfold harmonicShiftLower
      exact le_max_left _ _
    omega
  have hshiftY :
      harmonicShiftLower j t + k < 2 ^ (j + 1) := by
    unfold harmonicShiftUpper at hkUpper
    omega
  have hlength :
      t + 1 ≤
        2 ^ (j + 1) - (harmonicShiftLower j t + k) - 1 := by
    unfold harmonicShiftUpper at hkUpper
    omega
  let henv :=
    hshift (harmonicShiftLower j t + k) hshiftPos hshiftY
  have habs :
      |mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1)| ≤
        U (harmonicShiftLower j t + k) :=
    henv.2 (t + 1) hlength
  have hU : 0 ≤ U (harmonicShiftLower j t + k) := henv.1
  rcases (abs_le.mp habs) with ⟨hneg, hpos⟩
  nlinarith

/-- At one depth, the active shifts are a subset of the complete dyadic shift
range, so one quadratic shift envelope controls the complete active prefix
square energy at that depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46930434177d17555a32065d0e7b15762b019a90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
