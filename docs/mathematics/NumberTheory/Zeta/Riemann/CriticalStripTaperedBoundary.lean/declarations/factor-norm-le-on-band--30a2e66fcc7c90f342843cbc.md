# factor_norm_le_on_band

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e86aa7b-d93a-d35b-0a31-f8a66d2d195e",
  "kind": "theorem",
  "lexical_name": "factor_norm_le_on_band",
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
  "slug": "factor-norm-le-on-band--30a2e66fcc7c90f342843cbc",
  "source": {
    "blob": "ca8be3674bb665ffd299f7323571742654b42fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30a2e66fcc7c90f342843cbcec966f4f623005f99edecc0e19f441abab24dd0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e86aa7b-d93a-d35b-0a31-f8a66d2d195e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factor_norm_le_on_band {a T r : ℝ} (ha1 : a ≤ 1) (hT : 0 ≤ T)
    (hr : 0 ≤ r) (hbudget : (1 - a) ^ 2 + T ^ 2 ≤ r ^ 2)
    {s : ℂ} (hs : s ∈ rightBand a T) : ‖s - 1‖ ≤ r := by
  have hre : |s.re - 1| ≤ 1 - a := by
    rw [abs_of_nonpos (sub_nonpos.mpr hs.2.1)]
    linarith [hs.1]
  have hrprod := mul_le_mul hre hre (abs_nonneg (s.re - 1))
    (sub_nonneg.mpr ha1)
  have hiprod := mul_le_mul hs.2.2 hs.2.2 (abs_nonneg s.im) hT
  have hre2 : (s.re - 1) ^ 2 ≤ (1 - a) ^ 2 := by
    nlinarith [sq_abs (s.re - 1)]
  have him2 : s.im ^ 2 ≤ T ^ 2 := by nlinarith [sq_abs s.im]
  apply (sq_le_sq₀ (norm_nonneg _) hr).mp
  rw [factor_norm_sq]
  exact (add_le_add hre2 him2).trans hbudget

/-- The analytic inequality is derived directly, without a sample array or grid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8be3674bb665ffd299f7323571742654b42fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
