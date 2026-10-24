# abs_centeredGreenBaselinePrefixResidual_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8003b1fe-c2d4-5331-ee19-28bfd4dc4c60",
  "kind": "theorem",
  "lexical_name": "abs_centeredGreenBaselinePrefixResidual_le",
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
  "slug": "abs-centeredgreenbaselineprefixresidual-le--d589ada17ca75dee015ad481",
  "source": {
    "blob": "02e6ad1166fdc6ea8444fbd988b240f171d3ea87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d589ada17ca75dee015ad481014cc62d11abeb3db50253fad967b4ea35ff4262",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8003b1fe-c2d4-5331-ee19-28bfd4dc4c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_centeredGreenBaselinePrefixResidual_le
    {X : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    |centeredGreenBaselinePrefixResidual X t| ≤ 2 / (X : ℝ) := by
  unfold centeredGreenBaselinePrefixResidual
  let m := centeredGreenCutoff X t
  have hm := centeredGreenCutoff_bounds hX ht0 ht1
  have hfloor_lo :
      (m : ℝ) ≤ (X : ℝ) * (1 + t) := Nat.floor_le (by positivity)
  have hfloor_hi :
      (X : ℝ) * (1 + t) < m + 1 := Nat.lt_floor_add_one _
  have hharm :
      |centeredGreenBaselineWeightedPrefix X m -
        Real.log ((m : ℝ) / X)| ≤ 1 / (X : ℝ) := by
    unfold centeredGreenBaselineWeightedPrefix
    -- decreasing-function right-sum estimate on [X,m]
    have hXp : (0 : ℝ) < X := by exact_mod_cast hX
    have hmp : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le (by omega : 0 < X) hm.1)
    exact harmonic_Ioc_sub_log_ratio_abs_le_local hX hm.1
  have hloggap :
      |Real.log ((m : ℝ) / X) - Real.log (1 + t)| ≤ 1 / (X : ℝ) := by
    have hXp : (0 : ℝ) < X := by exact_mod_cast hX
    have hmpos : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le (by omega : 0 < X) hm.1)
    have hratio :
        0 ≤ (1 + t) - (m : ℝ) / X ∧
        (1 + t) - (m : ℝ) / X < 1 / X := by
      constructor <;> field_simp <;> nlinarith
    exact abs_log_floor_ratio_sub_log_le_local hX hm.1 ht0 hfloor_lo hfloor_hi
  exact (abs_sub_le _ _ _).trans (by linarith)

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e6ad1166fdc6ea8444fbd988b240f171d3ea87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
