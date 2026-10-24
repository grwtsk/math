# no_finite_order_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f68d4d0a-8531-8011-4792-320a5c844988",
  "kind": "theorem",
  "lexical_name": "no_finite_order_zero",
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
  "slug": "no-finite-order-zero--c05947d4dc205e2006ac8390",
  "source": {
    "blob": "06289e6f69e4a1ef6fffe91a6b89121008ea7013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 24,
    "path": "GRWTSK/Analysis/Complex/AnalyticLinearODE.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05947d4dc205e2006ac8390a50184663dc3249fe32190dad0e55c5b219deb04",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f68d4d0a-8531-8011-4792-320a5c844988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_finite_order_zero {f h : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z) (hh : AnalyticAt ℂ h z)
    (hfinite : analyticOrderAt f z ≠ ⊤)
    (hode : deriv f =ᶠ[𝓝 z] fun w => h w * f w) : f z ≠ 0 := by
  intro hz
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.mp hfinite
  have hn' : analyticOrderAt f z = (n : ℕ∞) := hn.symm
  have hn0 : n ≠ 0 := by
    intro hn0
    have ho : analyticOrderAt f z = 0 := by simpa [hn0] using hn'
    exact ((hf.analyticOrderAt_eq_zero).mp ho) hz
  obtain ⟨k, hk⟩ := Nat.exists_add_one_eq.mpr (Nat.pos_of_ne_zero hn0)
  have ho : analyticOrderAt f z = (k : ℕ∞) + 1 := by
    rw [hn', ← hk]
    simp only [Nat.cast_add, Nat.cast_one]
  have hd : analyticOrderAt (deriv f) z = (k : ℕ∞) :=
    analyticOrderAt_deriv_of_pos hf ho
  have he := analyticOrderAt_congr hode
  have hm : analyticOrderAt (fun w => h w * f w) z =
      analyticOrderAt h z + analyticOrderAt f z := by
    simpa only [Pi.mul_def] using analyticOrderAt_mul hh hf
  have hbad : (k : ℕ∞) = analyticOrderAt h z + ((k : ℕ∞) + 1) := by
    simpa only [hd, hm, ho] using he
  have hle : (k : ℕ∞) + 1 ≤ (k : ℕ∞) := by
    calc
      (k : ℕ∞) + 1 = 0 + ((k : ℕ∞) + 1) := (zero_add _).symm
      _ ≤ analyticOrderAt h z + ((k : ℕ∞) + 1) :=
        add_le_add zero_le le_rfl
      _ = (k : ℕ∞) := hbad.symm
  have : k + 1 ≤ k := by exact_mod_cast hle
  omega

/-- A nonzero value prevents infinite vanishing order throughout the domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/AnalyticLinearODE.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06289e6f69e4a1ef6fffe91a6b89121008ea7013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
