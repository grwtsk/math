# Pi_part_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d6b1cef-17d2-9fd9-129a-c54d7a7424f7",
  "kind": "lemma",
  "lexical_name": "Pi_part_bound",
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
  "slug": "pi-part-bound--491e698c6f5cdacc45728781",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1233,
    "line": 1211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:491e698c6f5cdacc457287813be6628d376931dd963860d8ff3990b7a73f73d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d6b1cef-17d2-9fd9-129a-c54d7a7424f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1211–1233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pi_part_bound (hF : LocalHypsCore cϱ p F) {t : ℝ} (ht : 2 ≤ t) :
    |∫ r, F.phiHat r ^ 2 * Zeta23.PiX p.X (t + r)|
      ≤ (6 * Real.sqrt p.X / t) * (2 * π * F.a * p.L)
        + (12 * Real.sqrt p.X / t ^ 2) * ∫ r, F.phiHat r ^ 2 * r ^ 2 := by
  have hgi : Integrable (fun r => (6 * Real.sqrt p.X / t) * F.phiHat r ^ 2
      + (12 * Real.sqrt p.X / t ^ 2) * (F.phiHat r ^ 2 * r ^ 2)) :=
    (hF.phiHat_sq_integrable.const_mul _).add (hF.phiHat_sq_mul_sq_integrable.const_mul _)
  rw [← Real.norm_eq_abs]
  calc ‖∫ r, F.phiHat r ^ 2 * Zeta23.PiX p.X (t + r)‖
      ≤ ∫ r, (6 * Real.sqrt p.X / t) * F.phiHat r ^ 2
          + (12 * Real.sqrt p.X / t ^ 2) * (F.phiHat r ^ 2 * r ^ 2) := by
        refine norm_integral_le_of_norm_le hgi (Filter.Eventually.of_forall fun r => ?_)
        rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (sq_nonneg _)]
        calc F.phiHat r ^ 2 * |Zeta23.PiX p.X (t + r)|
            ≤ F.phiHat r ^ 2 * (6 * Real.sqrt p.X / t + 12 * Real.sqrt p.X * r ^ 2 / t ^ 2) := by
              gcongr; exact PiX_shift_bound hF ht r
          _ = _ := by ring
    _ = _ := by
        rw [integral_add (hF.phiHat_sq_integrable.const_mul _)
          (hF.phiHat_sq_mul_sq_integrable.const_mul _), integral_const_mul, integral_const_mul,
          hF.phiHat_sq_integral]

/-- Integrability of `φ̂(r)² Π_X(t+r)` (bounded × integrable). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L1211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
