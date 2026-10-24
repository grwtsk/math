# rpow_add_le_mul_rpow_add_rpow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0241919-4920-4a69-399a-26add38de090",
  "kind": "theorem",
  "lexical_name": "rpow_add_le_mul_rpow_add_rpow'",
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
  "slug": "rpow-add-le-mul-rpow-add-rpow--62c2a33f6a58b1505536275a",
  "source": {
    "blob": "294c1d799ca703d41365f8e9ec8e80f149f64adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 359,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62c2a33f6a58b1505536275a588ec657d41757765b0dd8d66432d029eb12ceaa",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0241919-4920-4a69-399a-26add38de090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_add_le_mul_rpow_add_rpow' (z₁ z₂ : ℝ≥0∞) {p : ℝ} (hp : 0 ≤ p) :
    (z₁ + z₂) ^ p ≤ LpAddConst (ENNReal.ofReal p)⁻¹ * (z₁ ^ p + z₂ ^ p) := by
  by_cases h : 1 < p
  · have hmem : (ENNReal.ofReal p)⁻¹ ∈ Set.Ioo (0 : ℝ≥0∞) 1 := by
      constructor
      · simp
      · rwa [ENNReal.inv_lt_one, one_lt_ofReal]
    rw [show LpAddConst (ENNReal.ofReal p)⁻¹ =
        (2 : ℝ≥0∞) ^ (1 / ((ENNReal.ofReal p)⁻¹).toReal - 1) by
      rw [LpAddConst, ite_eq_left hmem]]
    simp only [ENNReal.toReal_inv, div_inv_eq_mul, one_mul]
    rw [ENNReal.toReal_ofReal hp]
    exact rpow_add_le_mul_rpow_add_rpow _ _ h.le
  · have hp1 : p ≤ 1 := not_lt.mp h
    rw [LpAddConst_of_one_le (ENNReal.one_le_inv.mpr (ENNReal.ofReal_le_one.mpr hp1)), one_mul]
    exact rpow_add_le_add_rpow _ _ hp hp1

/-- Variant of `ENNReal.rpow_add_le_mul_rpow_add_rpow'` with `p : ℝ≥0∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `294c1d799ca703d41365f8e9ec8e80f149f64adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
