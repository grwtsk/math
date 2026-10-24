# norm_inv_stdAddChar_sub_one_le_circularDistance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5635ddfb-abd3-aaaf-c6e4-7f60248db866",
  "kind": "theorem",
  "lexical_name": "norm_inv_stdAddChar_sub_one_le_circularDistance",
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
  "slug": "norm-inv-stdaddchar-sub-one-le-circulardistance--0c21a02c8c735061f492529b",
  "source": {
    "blob": "5d78497f8a1cdadee5da6a0b4a8083b3c97ab008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 169,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c21a02c8c735061f492529bf37b3fe90a4f3f5c71f504cd5c5bec57521266f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5635ddfb-abd3-aaaf-c6e4-7f60248db866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_inv_stdAddChar_sub_one_le_circularDistance
    {t : ZMod q} (ht : t ≠ 0) :
    ‖(ZMod.stdAddChar t - 1)⁻¹‖ ≤
      (q : ℝ) / (4 * (finiteCyclicCircularDistance t : ℝ)) := by
  let d := finiteCyclicCircularDistance t
  have hd0 : d ≠ 0 := by
    intro hd
    exact ht ((finiteCyclicCircularDistance_eq_zero_iff t).mp hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  have hqnat : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hq : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hqnat
  have hscale : 0 < 4 * (d : ℝ) / (q : ℝ) := by
    positivity
  have hlower :
      4 * (d : ℝ) / (q : ℝ) ≤ ‖ZMod.stdAddChar t - 1‖ := by
    simpa [finiteCyclicJordanLowerScale, d] using
      finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one t
  have hrecip := one_div_le_one_div_of_le hscale hlower
  rw [norm_inv]
  calc
    ‖ZMod.stdAddChar t - 1‖⁻¹ ≤
        (4 * (d : ℝ) / (q : ℝ))⁻¹ := by
      simpa [one_div] using hrecip
    _ = (q : ℝ) / (4 * (d : ℝ)) := by
      field_simp [ne_of_gt hq, ne_of_gt hd]

/-- Actual circular-distance estimate for the negative-phase interval sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d78497f8a1cdadee5da6a0b4a8083b3c97ab008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
