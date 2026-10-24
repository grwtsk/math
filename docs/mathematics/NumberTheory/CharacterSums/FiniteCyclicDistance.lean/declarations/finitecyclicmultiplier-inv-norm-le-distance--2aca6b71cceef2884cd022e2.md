# finiteCyclicMultiplier_inv_norm_le_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:328888e8-2a33-cd61-36ad-16975497b173",
  "kind": "theorem",
  "lexical_name": "finiteCyclicMultiplier_inv_norm_le_distance",
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
  "slug": "finitecyclicmultiplier-inv-norm-le-distance--2aca6b71cceef2884cd022e2",
  "source": {
    "blob": "e7afc88eac8ba7c8f23acee83df6811dc4d61659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 222,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aca6b71cceef2884cd022e28c59072adad9b95dc522aaa0b625b6b516f448ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328888e8-2a33-cd61-36ad-16975497b173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCyclicMultiplier_inv_norm_le_distance
    {q : ℕ} [NeZero q]
    {t : ZMod q}
    (hq : 0 < q)
    (ht : t ≠ 0) :
    ‖(finiteCyclicMultiplier t)⁻¹‖ ≤
      (q : ℝ) /
        (4 * (finiteCyclicCircularDistance t : ℝ)) := by
  let d := finiteCyclicCircularDistance t
  have hd0 : d ≠ 0 := by
    intro hd
    exact ht ((finiteCyclicCircularDistance_eq_zero_iff t).mp hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  have hqR : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hq
  have hscale : 0 < 4 * (d : ℝ) / (q : ℝ) := by
    positivity
  have hlower :
      4 * (d : ℝ) / (q : ℝ) ≤ ‖finiteCyclicMultiplier t‖ := by
    simpa [finiteCyclicJordanLowerScale, d] using
      finiteCyclicMultiplier_norm_lowerBound hq t
  have hrecip := one_div_le_one_div_of_le hscale hlower
  rw [norm_inv]
  calc
    ‖finiteCyclicMultiplier t‖⁻¹ ≤
        (4 * (d : ℝ) / (q : ℝ))⁻¹ := by
          simpa [one_div] using hrecip
    _ = (q : ℝ) / (4 * (d : ℝ)) := by
      field_simp [ne_of_gt hqR, ne_of_gt hd]
      ring

/-- Uniform inverse-multiplier bound beyond a circular-distance cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7afc88eac8ba7c8f23acee83df6811dc4d61659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
