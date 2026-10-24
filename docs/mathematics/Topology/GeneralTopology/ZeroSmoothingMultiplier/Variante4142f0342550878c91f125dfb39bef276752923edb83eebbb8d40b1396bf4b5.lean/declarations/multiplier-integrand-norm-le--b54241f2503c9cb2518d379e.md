# multiplier_integrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f28c51c-79b5-1413-8064-d44d61362394",
  "kind": "theorem",
  "lexical_name": "multiplier_integrand_norm_le",
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
  "slug": "multiplier-integrand-norm-le--b54241f2503c9cb2518d379e",
  "source": {
    "blob": "a9dfd4959ada89b12192707a30b87392b2920203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b54241f2503c9cb2518d379ebce899e2c5781a06e83176da207e9b228e0aacee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f28c51c-79b5-1413-8064-d44d61362394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplier_integrand_norm_le (ε : ℝ) (hε : 0 < ε) (z : ℂ) (y : ℝ) :
    ‖(mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))‖ ≤
      mollifier ε hε y * Real.exp (ε * |z.re|) := by
  simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (mollifier_nonneg ε hε y), Complex.norm_exp,
    Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  by_cases hy : y ∈ Function.support (mollifier ε hε)
  · rw [mollifier_support ε hε] at hy
    have habs : |y| ≤ ε := abs_le.mpr ⟨hy.1.le, hy.2.le⟩
    have he : z.re * y ≤ ε * |z.re| := by
      calc
        z.re * y ≤ |z.re * y| := le_abs_self _
        _ = |z.re| * |y| := abs_mul _ _
        _ ≤ |z.re| * ε := mul_le_mul_of_nonneg_left habs (abs_nonneg _)
        _ = ε * |z.re| := mul_comm _ _
    exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr he) (mollifier_nonneg ε hε y)
  · have hk : mollifier ε hε y = 0 := Function.notMem_support.mp hy
    simp only [hk, zero_mul, le_refl]

/-- Unit mass converts the pointwise exponent envelope into the exact integral bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9dfd4959ada89b12192707a30b87392b2920203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
