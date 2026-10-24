# subpolynomialLongHarmonicRemainderPacket_of_deep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ede4076-d3a8-f2bf-e0d8-be28bfbf214c",
  "kind": "theorem",
  "lexical_name": "subpolynomialLongHarmonicRemainderPacket_of_deep",
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
  "slug": "subpolynomiallongharmonicremainderpacket-of-deep--49bca653288140a467f64405",
  "source": {
    "blob": "c82b477c854b63382c98e4d29ed588647fee6d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49bca653288140a467f64405d9dc85c3c4ce64200b95fa1e09b4ac3571bced4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ede4076-d3a8-f2bf-e0d8-be28bfbf214c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialLongHarmonicRemainderPacket_of_deep
    (hDeep : SubpolynomialDeepLongHarmonicRemainderPacket) :
    SubpolynomialLongHarmonicRemainderPacket := by
  intro δ hδ
  obtain ⟨Cshallow, hCshallow, hshallow⟩ :=
    subpolynomialLogarithmicShallowLongRemainderPacket δ hδ
  obtain ⟨Cdeep, hCdeep, hdeep⟩ :=
    hDeep δ hδ
  refine ⟨Cshallow + Cdeep, add_nonneg hCshallow hCdeep, ?_⟩
  intro j
  rw [logarithmicLongRemainder_eq_shallow_add_deep]
  calc
    logarithmicShallowLongRemainderPacket j +
        logarithmicDeepLongRemainderPacket j ≤
      |logarithmicShallowLongRemainderPacket j| +
        logarithmicDeepLongRemainderPacket j := by
      exact add_le_add (le_abs_self _) le_rfl
    _ ≤ Cshallow * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cdeep * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hshallow j) (hdeep j)
    _ = (Cshallow + Cdeep) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- The deep-long supplier is now the sole analytic premise on this branch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82b477c854b63382c98e4d29ed588647fee6d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
