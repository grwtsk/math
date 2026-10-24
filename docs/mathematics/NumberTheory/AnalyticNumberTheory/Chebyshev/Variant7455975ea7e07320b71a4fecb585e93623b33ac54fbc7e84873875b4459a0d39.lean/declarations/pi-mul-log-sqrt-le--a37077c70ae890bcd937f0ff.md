# pi_mul_log_sqrt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb63a0a1-0bf3-5a75-a65e-1f4053029d9f",
  "kind": "theorem",
  "lexical_name": "pi_mul_log_sqrt_le",
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
  "slug": "pi-mul-log-sqrt-le--a37077c70ae890bcd937f0ff",
  "source": {
    "blob": "6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 856,
    "line": 834,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a37077c70ae890bcd937f0ffe73c34ec617f7dc760191f23bbb8f538ea2d0b92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb63a0a1-0bf3-5a75-a65e-1f4053029d9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 834–856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pi_mul_log_sqrt_le {x : ℝ} (hx : 1 ≤ x) :
    (π ⌊x⌋₊) * log √x ≤ log 4 * x + √x * log √x := calc
  _ = ∑ p ∈ primesLE ⌊x⌋₊, log √x := by simp
  _ ≤ ∑ p ∈ primesLE ⌊x⌋₊, (log p + (if p ≤ √x then log √x else 0)) := by
    refine sum_le_sum fun p _ ↦ ?_
    split_ifs with h
    · simp [log_natCast_nonneg]
    have : log √x < log p := log_lt_log (by positivity) (not_le.mp h)
    grind
  _ ≤ _ := by
    grw [← theta_le_log4_mul_x (by positivity)]
    rw [sum_add_distrib, theta_eq_theta_coe_floor, theta_eq_sum_primesLE_log, ← sum_filter]
    simp only [sum_const, nsmul_eq_mul]
    gcongr
    · exact log_nonneg (one_le_sqrt.mpr hx)
    refine le_trans ?_ <| floor_le (sqrt_nonneg x)
    norm_cast
    rw [show ⌊√x⌋₊ = #(Icc 1 ⌊√x⌋₊) by simp]
    refine card_le_card fun p hp ↦ ?_
    simp only [mem_filter, mem_Icc, mem_primesLE] at hp ⊢
    exact ⟨hp.1.2.one_le, le_floor hp.2⟩

/-- A weak but completely explicit upper bound on $\pi(x)$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean#L834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
