# sharpDiagonalCost_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceefe088-a58b-0552-ee85-c14350e41868",
  "kind": "theorem",
  "lexical_name": "sharpDiagonalCost_antitone",
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
  "slug": "sharpdiagonalcost-antitone--0d900936b4e09e766336029e",
  "source": {
    "blob": "a4bf05ef346bd8cec9d353998adb85ad0e83b728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d900936b4e09e766336029e25fdef7c9587c7f1c49c34b429b96e3c5394f10b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceefe088-a58b-0552-ee85-c14350e41868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpDiagonalCost_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    sharpDiagonalCost A ≤ sharpDiagonalCost Q := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  have hA1 := hQ1.trans hQA
  have hlogA : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hd := tailEnergyCoefficient_antitone (by linarith : 0 < Q) hQA
  have hs := Real.sqrt_le_sqrt hd
  have hproper : powerTailBudget (⌊A ^ 2⌋₊ : ℝ) ≤
      powerTailBudget (⌊Q ^ 2⌋₊ : ℝ) := by
    have hQU : 1 ≤ ⌊Q ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
    have hAU : 1 ≤ ⌊A ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
    apply powerTailBudget_antitone
      (by change (1 : ℝ) ≤ ⌊Q ^ 2⌋₊; exact_mod_cast hQU)
      (by change (1 : ℝ) ≤ ⌊A ^ 2⌋₊; exact_mod_cast hAU)
    exact_mod_cast (Nat.floor_mono (by nlinarith : Q ^ 2 ≤ A ^ 2))
  have hprime : (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient A)) ≤
      (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) := by
    gcongr
  have hratio := log_cube_div_square_le hQ hQA
  have hprod := mul_le_mul hd hratio
    (by positivity : 0 ≤ Real.log A ^ 3 / A ^ 2) (tailEnergyCoefficient_pos Q).le
  have hshort : 16 * tailEnergyCoefficient A * Real.log A ^ 3 / (3 * A ^ 2) ≤
      16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
    calc
      _ = (16 / 3) * (tailEnergyCoefficient A * (Real.log A ^ 3 / A ^ 2)) := by ring
      _ ≤ (16 / 3) * (tailEnergyCoefficient Q * (Real.log Q ^ 3 / Q ^ 2)) :=
        mul_le_mul_of_nonneg_left hprod (by norm_num)
      _ = _ := by ring
  unfold sharpDiagonalCost
  linarith

/-- This is a regional maximum, rather than a sum of alternative radius costs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4bf05ef346bd8cec9d353998adb85ad0e83b728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
