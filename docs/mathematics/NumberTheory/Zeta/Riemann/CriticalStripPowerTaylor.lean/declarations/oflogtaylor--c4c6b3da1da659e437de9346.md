# ofLogTaylor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0738955e80bc96a2ff23927cb78999ffe407b3e643dc6db15b9cad810ee85f01",
  "kind": "def",
  "lexical_name": "ofLogTaylor",
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
  "slug": "oflogtaylor--c4c6b3da1da659e437de9346",
  "source": {
    "blob": "60f8a09a1e02a58652ffa4aecef27a59df933e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4c6b3da1da659e437de9346cce6fd0bf20de078d2fd018dc2313644d414f5fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0738955e80bc96a2ff23927cb78999ffe407b3e643dc6db15b9cad810ee85f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofLogTaylor {x : ℝ} (hx : 0 < x) (e : RealLogEnclosure x)
    (w : ℂ) (n : ℕ) (R C : ℝ)
    (hsmall : ‖w‖ * e.radius ≤ 1)
    (harg : ‖w * (e.center : ℂ)‖ ≤ R)
    (hguard : R / ((n : ℝ) + 1) ≤ 1 / 2)
    (hC : ‖(x : ℂ) ^ w‖ ≤ C) : ComplexPowerEnclosure x w where
  value := complexExpTaylor n (w * (e.center : ℂ))
  error := C * (2 * (‖w‖ * e.radius)) + complexExpTaylorRadius n R
  error_nonneg := by
    have hC0 : 0 ≤ C := (norm_nonneg _).trans hC
    have hR0 : 0 ≤ R := (norm_nonneg _).trans harg
    exact add_nonneg (mul_nonneg hC0
      (mul_nonneg (by norm_num) (mul_nonneg (norm_nonneg _) e.radius_nonneg)))
      (complexExpTaylorRadius_nonneg n hR0)
  encloses := realLog_powerTaylor_error hx e w n R C hsmall harg hguard hC

/-- Increasing an error radius consumes the exact order proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f8a09a1e02a58652ffa4aecef27a59df933e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
