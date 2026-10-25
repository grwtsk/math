# centeredTwistedPsiCriticalRate_le_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a18a6a6-b085-9cb8-19b1-d2f18515e319",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiCriticalRate_le_halfPlusEpsilon",
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
  "slug": "centeredtwistedpsicriticalrate-le-halfplusepsilon--d37b5516497a28bcf402ae06",
  "source": {
    "blob": "30e63f2dee5264818b4616193391a26b23d30c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d37b5516497a28bcf402ae06a08124786375379e220c32c81fd420f38eab024b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a18a6a6-b085-9cb8-19b1-d2f18515e319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiCriticalRate_le_halfPlusEpsilon
    (q : ℕ) [NeZero q] {ε : ℝ} (hε : 0 < ε)
    (x : ℕ) (hx : 2 ≤ x) :
    centeredTwistedPsiCriticalRate q x ≤
      ((4 / ε ^ 2) * (q : ℝ) ^ ε) *
        (x : ℝ) ^ (1 / 2 + ε) := by
  have hhalf : 0 < ε / 2 := by positivity
  have hq0 : 0 ≤ (q : ℝ) := Nat.cast_nonneg q
  have hx0 : 0 ≤ (x : ℝ) := Nat.cast_nonneg x
  have hqx0 : 0 ≤ ((q * x : ℕ) : ℝ) := Nat.cast_nonneg _
  have hqx1 : 1 ≤ ((q * x : ℕ) : ℝ) := by
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr
      (mul_ne_zero (NeZero.ne q) (by omega))
  have hlog0 : 0 ≤ Real.log ((q * x : ℕ) : ℝ) :=
    Real.log_nonneg hqx1
  have hlog := Real.log_le_rpow_div hqx0 hhalf
  have hpow0 : 0 ≤ ((q * x : ℕ) : ℝ) ^ (ε / 2) :=
    Real.rpow_nonneg hqx0 _
  have hdiv0 : 0 ≤ ((q * x : ℕ) : ℝ) ^ (ε / 2) / (ε / 2) :=
    div_nonneg hpow0 hhalf.le
  have hlog2 : Real.log ((q * x : ℕ) : ℝ) ^ 2 ≤
      (((q * x : ℕ) : ℝ) ^ (ε / 2) / (ε / 2)) ^ 2 :=
    (sq_le_sq₀ hlog0 hdiv0).2 hlog
  unfold centeredTwistedPsiCriticalRate
  rw [Real.sqrt_eq_rpow]
  calc
    (x : ℝ) ^ ((1 : ℝ) / 2) *
        Real.log ((q * x : ℕ) : ℝ) ^ 2 ≤
        (x : ℝ) ^ ((1 : ℝ) / 2) *
          (((q * x : ℕ) : ℝ) ^ (ε / 2) / (ε / 2)) ^ 2 := by
      exact mul_le_mul_of_nonneg_left hlog2 (Real.rpow_nonneg hx0 _)
    _ = ((4 / ε ^ 2) * (q : ℝ) ^ ε) *
        (x : ℝ) ^ (1 / 2 + ε) := by
      rw [div_pow, ← Real.rpow_natCast]
      rw [← Real.rpow_mul hqx0]
      norm_num only [Nat.cast_ofNat]
      have hexp : ε / 2 * (2 : ℝ) = ε := by ring
      rw [hexp, Nat.cast_mul, Real.mul_rpow hq0 hx0]
      have hden : ((ε / 2) ^ 2)⁻¹ = 4 / ε ^ 2 := by
        field_simp [ne_of_gt hε]
        norm_num
      rw [show ((q : ℝ) ^ ε * (x : ℝ) ^ ε) / (ε / 2) ^ 2 =
          ((q : ℝ) ^ ε * (x : ℝ) ^ ε) * ((ε / 2) ^ 2)⁻¹ by
        rw [div_eq_mul_inv]]
      rw [hden]
      have hxpos : 0 < (x : ℝ) := by exact_mod_cast (show 0 < x by omega)
      calc
        (x : ℝ) ^ ((1 : ℝ) / 2) *
            ((q : ℝ) ^ ε * (x : ℝ) ^ ε * (4 / ε ^ 2)) =
            (4 / ε ^ 2) * (q : ℝ) ^ ε *
              ((x : ℝ) ^ ((1 : ℝ) / 2) * (x : ℝ) ^ ε) := by ring
        _ = (4 / ε ^ 2) * (q : ℝ) ^ ε *
            (x : ℝ) ^ ((1 : ℝ) / 2 + ε) := by
          rw [← Real.rpow_add hxpos]

/-- The sharp logarithmic estimate implies every half-plus-epsilon bound. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30e63f2dee5264818b4616193391a26b23d30c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
