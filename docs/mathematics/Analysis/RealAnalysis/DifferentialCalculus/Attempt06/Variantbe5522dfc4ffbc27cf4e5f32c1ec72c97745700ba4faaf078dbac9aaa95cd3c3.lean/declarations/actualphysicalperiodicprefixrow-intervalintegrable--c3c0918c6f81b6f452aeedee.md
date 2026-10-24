# actualPhysicalPeriodicPrefixRow_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d87d8f7f-bb8f-2f0f-3ddb-9a85850f0e11",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicPrefixRow_intervalIntegrable",
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
  "slug": "actualphysicalperiodicprefixrow-intervalintegrable--c3c0918c6f81b6f452aeedee",
  "source": {
    "blob": "c1aaae606503f84f5c9583f0aff91e8b95366d89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c0918c6f81b6f452aeedeed80b76f8148a5c8c2acebd3e9b3eb668a0e873dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d87d8f7f-bb8f-2f0f-3ddb-9a85850f0e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicPrefixRow_intervalIntegrable {A t l b : ℝ}
    (hA : 1 ≤ A) (hl : (vaughanCutoff A : ℝ) ≤ l) (hlb : l ≤ b) :
    IntervalIntegrable (fun x =>
      ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
        centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
          actualPeriodicPhysicalCellProfile A t x) volume l b := by
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA
  have hl0 : 0 < l := by
    have hu : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by exact_mod_cast hU
    linarith
  have hF : ContinuousOn (actualPeriodicPhysicalCellProfile A t) (uIcc l b) := by
    rw [uIcc_of_le hlb]
    exact (actualPeriodicPhysicalCellProfile_contDiffOn (by linarith : 0 < A) hl0 b t).
      continuousOn
  apply ((actualPhysicalPeriodicDensity_intervalIntegrable (vaughanCutoff A) l b).
    mul_continuousOn hF).congr_uIoo
  intro x hx
  dsimp only
  rw [uIoo_of_le hlb] at hx
  rw [actualPhysicalPeriodicDensity_eq_original_prefix (vaughanCutoff A) x hU
    (hl.trans hx.1.le)]

/-- Monotone logarithmic substitution retains the literal floors and every fractional endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1aaae606503f84f5c9583f0aff91e8b95366d89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
