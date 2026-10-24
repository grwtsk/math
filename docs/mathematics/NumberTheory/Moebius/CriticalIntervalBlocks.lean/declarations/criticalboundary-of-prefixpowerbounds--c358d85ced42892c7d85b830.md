# criticalBoundary_of_prefixPowerBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ceb8a7-710e-b542-1fc3-70464143da13",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_prefixPowerBounds",
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
  "slug": "criticalboundary-of-prefixpowerbounds--c358d85ced42892c7d85b830",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 689,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c358d85ced42892c7d85b83061d700d6a9dab5d2396624319cbf55dba8e0fdc9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ceb8a7-710e-b542-1fc3-70464143da13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_prefixPowerBounds {CA CM α β : ℝ}
    (hα : α < 1 / 2)
    (hβ : β < 1)
    (hA : ∀ n : ℕ, 1 ≤ n →
      |pickupWeightedPrefix n| ≤ CA * (n : ℝ) ^ α)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ CM * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform := by
  have hA0 : pickupWeightedPrefix 0 = 0 := by simp [pickupWeightedPrefix]
  have hM0 : pickupMertensPrefix 0 = 0 := by simp [pickupMertensPrefix]
  have hAs : CriticalWeightedPrefixSquareSummable := by
    unfold CriticalWeightedPrefixSquareSummable
    apply summable_sq_mul_rpow_of_abs_le_rpow pickupWeightedPrefix hA0 hA
    linarith
  have hMs : CriticalMertensPrefixSquareSummable := by
    unfold CriticalMertensPrefixSquareSummable
    apply summable_sq_mul_rpow_of_abs_le_rpow pickupMertensPrefix hM0 hM
    linarith
  exact criticalBoundary_of_prefixSquareComponents hAs hMs

/-- A single genuine Mertens power saving, at any exponent strictly between
the square-root scale and `1`, pays both prefix-energy obligations and hence
the completed critical vertical line.  This theorem is conditional: it does
not assert the Mertens power bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
