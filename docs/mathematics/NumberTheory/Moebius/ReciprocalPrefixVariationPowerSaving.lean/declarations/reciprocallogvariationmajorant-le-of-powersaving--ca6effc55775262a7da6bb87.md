# reciprocalLogVariationMajorant_le_of_powerSaving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1e316bf-4c1f-fa99-4208-b62b7dfc5f70",
  "kind": "theorem",
  "lexical_name": "reciprocalLogVariationMajorant_le_of_powerSaving",
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
  "slug": "reciprocallogvariationmajorant-le-of-powersaving--ca6effc55775262a7da6bb87",
  "source": {
    "blob": "a33c8dc857f4ab2859f3830f9313611613d83604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca6effc55775262a7da6bb873eb5174f9ac05ce897dd79c97823f97c1495dbfc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e316bf-4c1f-fa99-4208-b62b7dfc5f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalLogVariationMajorant_le_of_powerSaving
    {C δ : ℝ} (hC : 0 ≤ C) (hδ : 0 < δ)
    (hV : ∀ n : ℕ, 1 ≤ n →
      reciprocalPrefixVariationSquare n ≤ C * (n : ℝ) ^ (1 - δ))
    (n : ℕ) :
    reciprocalLogVariationMajorant n ≤
      (4 * C * (4 + 4 / δ)) * (n : ℝ) ^ (-1 - δ / 2) := by
  rcases n with _ | n
  · simp [reciprocalLogVariationMajorant, reciprocalPrefixVariationSquare]
    positivity
  · have hn : 1 ≤ n + 1 := by omega
    have hx : (0 : ℝ) < (n + 1 : ℕ) := by positivity
    have hx1 : (1 : ℝ) ≤ (n + 1 : ℕ) := by exact_mod_cast hn
    have hδ2 : 0 < δ / 2 := by positivity
    have hp : 1 ≤ ((n + 1 : ℕ) : ℝ) ^ (δ / 2) :=
      Real.one_le_rpow hx1 hδ2.le
    have hlog := Real.log_natCast_le_rpow_div (n + 1) hδ2
    have hkernel :
        4 + 2 * Real.log ((n + 1 : ℕ) : ℝ) ≤
          (4 + 4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by
      calc
        4 + 2 * Real.log ((n + 1 : ℕ) : ℝ) ≤
            4 + 2 * (((n + 1 : ℕ) : ℝ) ^ (δ / 2) / (δ / 2)) := by
              gcongr
        _ = 4 + (4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by
              field_simp
              ring
        _ ≤ 4 * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) +
            (4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by
              gcongr
              nlinarith
        _ = (4 + 4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by ring
    have hpow :
        ((n + 1 : ℕ) : ℝ) ^ (δ / 2) *
            ((n + 1 : ℕ) : ℝ) ^ (1 - δ) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) =
          ((n + 1 : ℕ) : ℝ) ^ (-1 - δ / 2) := by
      rw [← Real.rpow_add hx, ← Real.rpow_add hx]
      congr 1
      ring
    have hV0 : 0 ≤ reciprocalPrefixVariationSquare (n + 1) := by
      unfold reciprocalPrefixVariationSquare
      positivity
    have hVbound := hV (n + 1) hn
    unfold reciprocalLogVariationMajorant
    calc
      4 * (4 + 2 * Real.log ((n + 1 : ℕ) : ℝ)) *
            reciprocalPrefixVariationSquare (n + 1) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) ≤
          4 * ((4 + 4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2)) *
            (C * ((n + 1 : ℕ) : ℝ) ^ (1 - δ)) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) := by
              gcongr
      _ = (4 * C * (4 + 4 / δ)) *
          ((n + 1 : ℕ) : ℝ) ^ (-1 - δ / 2) := by
            rw [← hpow]
            ring

/-- A power saving in endpoint-centered square variation pays the explicit
logarithmically weighted summability debt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33c8dc857f4ab2859f3830f9313611613d83604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
