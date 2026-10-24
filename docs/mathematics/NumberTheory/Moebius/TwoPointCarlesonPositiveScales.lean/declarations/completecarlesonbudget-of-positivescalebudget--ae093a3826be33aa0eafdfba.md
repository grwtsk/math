# completeCarlesonBudget_of_positiveScaleBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:243cfa8b-07d4-5cf4-6df8-c7b642da08cf",
  "kind": "theorem",
  "lexical_name": "completeCarlesonBudget_of_positiveScaleBudget",
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
  "slug": "completecarlesonbudget-of-positivescalebudget--ae093a3826be33aa0eafdfba",
  "source": {
    "blob": "1ccd823f1fa1ffc66fbea6a07bc1910a966963e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 191,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae093a3826be33aa0eafdfba801ef1578ff2fa0bbde88ee1d171495f36f5731f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:243cfa8b-07d4-5cf4-6df8-c7b642da08cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeCarlesonBudget_of_positiveScaleBudget
    {j : ℕ} {B : ℝ}
    (hpos : DyadicMertensPositiveScaleCarlesonBudget j B) :
    0 ≤ B ∧
      ((j : ℝ) + 2) *
          twoPointCarlesonEnergySum moebiusReal moebiusReal j ≤
        B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ) := by
  refine ⟨hpos.1, ?_⟩
  have hdepth : 0 ≤ (j : ℝ) + 2 := by positivity
  exact
    (mul_le_mul_of_nonneg_left
      (mertensTwoPointCarlesonEnergySum_le_endpoint_add_positive j)
      hdepth).trans hpos.2

/-- The paid positive-scale supplier discharges the full max-per-scale
Carleson premise with unchanged subpolynomial constants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ccd823f1fa1ffc66fbea6a07bc1910a966963e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
