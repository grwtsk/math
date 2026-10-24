# scaled_abs_factorial_density

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39a8bb38-3ed8-877f-1a40-af7e68eeb6ab",
  "kind": "theorem",
  "lexical_name": "scaled_abs_factorial_density",
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
  "slug": "scaled-abs-factorial-density--727253887cb90313df4c872e",
  "source": {
    "blob": "5151c0495da9d42f4f411316efe89fd103d5e5bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:727253887cb90313df4c872ef25ea8cd78dbc17595f9feee3da33a685baa5f22",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a8bb38-3ed8-877f-1a40-af7e68eeb6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scaled_abs_factorial_density {d x : ℝ} (hd : 0 < d) (hx : 0 < x) :
    |factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2)| =
      d ^ (-(3 : ℝ) / 2) * |factorialMellinWeight (x * d⁻¹)| := by
  have hxdiv := div_pos hx hd
  have hxde : x = d * (x / d) := by field_simp
  have hp : x ^ (-(3 : ℝ) / 2) =
      d ^ (-(3 : ℝ) / 2) * (x / d) ^ (-(3 : ℝ) / 2) := by
    conv_lhs => rw [hxde]
    exact Real.mul_rpow hd.le hxdiv.le
  unfold factorialMellinWeight
  rw [hp, ← div_eq_mul_inv]
  simp_rw [abs_mul]
  rw [abs_of_nonneg (Real.rpow_nonneg hd.le _)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5151c0495da9d42f4f411316efe89fd103d5e5bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
